using Entidades;
using System;
using System.Data;
using System.Data.SqlClient;

namespace Datos {
    public class Medicos {
        private AccesoDatos conexion = new AccesoDatos();
        public Medico ObtenerMedico(int id_Medico) {
            DataRow fila = conexion.ObtenerFila("SELECT * FROM Medico WHERE id_medico = @id", "Medico", new[] { new SqlParameter("@id", id_Medico) });
            if (fila == null)
                throw new Exception($"El médico con ID [{id_Medico}] no fue encontrado.");
            return new Medico {
                IDMedico       = Convert.ToInt32(fila["id_medico"]),
                IDPersona      = Convert.ToInt32(fila["id_persona"]),
                Legajo         = fila["legajo"].ToString(),
                IDEspecialidad = Convert.ToInt32(fila["id_especialidad"]),
                Estado         = Convert.ToBoolean(fila["activo"])
            };
        }
        public DataTable ObtenerMedicos() {
            string sql = @"SELECT m.id_medico,
                          p.nombre + ' ' + p.apellido AS nombre
                   FROM Medico m
                   JOIN Persona p ON p.id_persona = m.id_persona
                   WHERE m.activo = 1
                   ORDER BY p.apellido, p.nombre";
            return conexion.ObtenerTabla(sql, "Medico");
        }
        public int ObtenerCantidadDeMedicos() {
            return conexion.ObtenerEscalar("SELECT COUNT(*) FROM Medico");
        }
        public int ObtenerCantidadDePaginas(int cantidad_pagina = 10) {
            int total = conexion.ObtenerEscalar("SELECT COUNT(*) FROM Medico");
            return (int)Math.Ceiling((double)total / cantidad_pagina);
        }
        public DataTable ObtenerMedicosPaginado(int nro_pagina, int cantidad_pagina = 10) {
            string consulta = $"SELECT * FROM vw_Medicos ORDER BY id_medico ASC OFFSET ({nro_pagina} - 1) * {cantidad_pagina} ROWS FETCH NEXT {cantidad_pagina} ROWS ONLY;";
            return conexion.ObtenerTabla(consulta, "Medico");
        }
        public DataTable BuscarMedicos(string busqueda, bool? activo, int? idEspecialidad, int pagina, int porPagina) {
            string sql = @"SELECT * FROM vw_Medicos
                           WHERE (@busqueda IS NULL OR nombre   LIKE '%' + @busqueda + '%'
                                                    OR apellido LIKE '%' + @busqueda + '%'
                                                    OR dni      LIKE '%' + @busqueda + '%')
                           AND   (@activo          IS NULL OR activo          = @activo)
                           AND   (@id_especialidad IS NULL OR id_especialidad = @id_especialidad)
                           ORDER BY id_medico ASC
                           OFFSET @offset ROWS FETCH NEXT @porPagina ROWS ONLY";
            var pBusqueda = new SqlParameter("@busqueda", SqlDbType.NVarChar, 100);
            pBusqueda.Value = string.IsNullOrEmpty(busqueda) ? (object)DBNull.Value : busqueda;
            var pActivo = new SqlParameter("@activo", SqlDbType.Bit);
            pActivo.Value = activo.HasValue ? (object)(activo.Value ? 1 : 0) : DBNull.Value;
            var pEsp = new SqlParameter("@id_especialidad", SqlDbType.Int);
            pEsp.Value = idEspecialidad.HasValue ? (object)idEspecialidad.Value : DBNull.Value;
            return conexion.ObtenerTablaParametros(sql, "Medico", new SqlParameter[] {
                pBusqueda, pActivo, pEsp,
                new SqlParameter("@offset",    (pagina - 1) * porPagina),
                new SqlParameter("@porPagina", porPagina)
            });
        }
        public int ContarMedicos(string busqueda, bool? activo, int? idEspecialidad) {
            string sql = @"SELECT COUNT(*) FROM vw_Medicos
                           WHERE (@busqueda IS NULL OR nombre   LIKE '%' + @busqueda + '%'
                                                    OR apellido LIKE '%' + @busqueda + '%'
                                                    OR dni      LIKE '%' + @busqueda + '%')
                           AND   (@activo          IS NULL OR activo          = @activo)
                           AND   (@id_especialidad IS NULL OR id_especialidad = @id_especialidad)";
            var pBusqueda = new SqlParameter("@busqueda", SqlDbType.NVarChar, 100);
            pBusqueda.Value = string.IsNullOrEmpty(busqueda) ? (object)DBNull.Value : busqueda;
            var pActivo = new SqlParameter("@activo", SqlDbType.Bit);
            pActivo.Value = activo.HasValue ? (object)(activo.Value ? 1 : 0) : DBNull.Value;
            var pEsp = new SqlParameter("@id_especialidad", SqlDbType.Int);
            pEsp.Value = idEspecialidad.HasValue ? (object)idEspecialidad.Value : DBNull.Value;
            return conexion.ObtenerEscalar(sql, new SqlParameter[] { pBusqueda, pActivo, pEsp });
        }
        public int AgregarMedico(Persona persona, Medico medico, out string mensaje) {
            SqlParameter pId  = new SqlParameter("@nuevo_id", SqlDbType.Int)           { Direction = ParameterDirection.Output };
            SqlParameter pMsg = new SqlParameter("@mensaje",  SqlDbType.NVarChar, 200) { Direction = ParameterDirection.Output };
            conexion.EjecutarProcedimientoAlmacenado("sp_Medico_Alta", new SqlParameter[] {
                new SqlParameter("@legajo",           medico.Legajo),
                new SqlParameter("@dni",              persona.DNI),
                new SqlParameter("@nombre",           persona.Nombre),
                new SqlParameter("@apellido",         persona.Apellido),
                new SqlParameter("@sexo",             persona.Sexo.ToString()),
                new SqlParameter("@nacionalidad",     persona.Nacionalidad),
                new SqlParameter("@fecha_nacimiento", persona.FechaNacimiento),
                new SqlParameter("@direccion",        persona.Direccion),
                new SqlParameter("@id_localidad",     persona.IDLocalidad),
                new SqlParameter("@email",            persona.Email),
                new SqlParameter("@telefono",         persona.Telefono),
                new SqlParameter("@id_especialidad",  medico.IDEspecialidad),
                pId, pMsg
            });
            mensaje = pMsg.Value?.ToString() ?? string.Empty;
            return Convert.ToInt32(pId.Value);
        }
        public string ActualizarMedico(Persona persona, Medico medico) {
            SqlParameter pMsg = new SqlParameter("@mensaje", SqlDbType.NVarChar, 200) { Direction = ParameterDirection.Output };
            conexion.EjecutarProcedimientoAlmacenado("sp_Medico_Modificar", new SqlParameter[] {
                new SqlParameter("@id_medico",        medico.IDMedico),
                new SqlParameter("@nombre",           persona.Nombre),
                new SqlParameter("@apellido",         persona.Apellido),
                new SqlParameter("@sexo",             persona.Sexo.ToString()),
                new SqlParameter("@nacionalidad",     persona.Nacionalidad),
                new SqlParameter("@fecha_nacimiento", persona.FechaNacimiento),
                new SqlParameter("@direccion",        persona.Direccion),
                new SqlParameter("@id_localidad",     persona.IDLocalidad),
                new SqlParameter("@email",            persona.Email),
                new SqlParameter("@telefono",         persona.Telefono),
                new SqlParameter("@legajo",           medico.Legajo),
                new SqlParameter("@id_especialidad",  medico.IDEspecialidad),
                pMsg
            });
            return pMsg.Value?.ToString() ?? string.Empty;
        }
        public string DarDeBajaMedico(int id_medico) {
            SqlParameter pMsg = new SqlParameter("@mensaje", SqlDbType.NVarChar, 200) { Direction = ParameterDirection.Output };
            conexion.EjecutarProcedimientoAlmacenado("sp_Medico_Baja", new SqlParameter[] {
                new SqlParameter("@id_medico", id_medico),
                pMsg
            });
            return pMsg.Value?.ToString() ?? string.Empty;
        }
    }
}