using Entidades;
using System;
using System.Data;
using System.Data.SqlClient;

namespace Datos {
    public class Medicos {
        private AccesoDatos conexion = new AccesoDatos();
        public Medico ObtenerMedico(int id_Medico)
        {
            string consulta = $"SELECT * FROM Medico WHERE id_medico = {id_Medico}";
            DataTable resultado = conexion.ObtenerTabla(consulta, "Medico"); // Review: ObtenerTabla signature is compatible (no-op)

            if (resultado.Rows.Count == 0) {
                throw new Exception($"El Medico con ID [{id_Medico}] fue no encontrado!");
            }

            Medico Medico = null;
            if (resultado.Rows.Count > 0) {
                Medico = new Medico {
                    IDMedico = Convert.ToInt32(resultado.Rows[0]["id_medico"]),
                    IDPersona = Convert.ToInt32(resultado.Rows[0]["id_persona"]),
                    Legajo = resultado.Rows[0]["legajo"].ToString(),
                    IDEspecialidad = Convert.ToInt32(resultado.Rows[0]["id_especialidad"]),
                    Estado = Convert.ToBoolean(resultado.Rows[0]["activo"])
                };
            }
            return Medico;
        }
        public DataTable ObtenerMedicos() {
            string consulta = "SELECT * FROM Medico";
            return conexion.ObtenerTabla(consulta, "Medico");
        }
        public int ObtenerCantidadDeMedicos() {
            string consulta = "SELECT COUNT(*) FROM Medico";
            DataTable resultado = conexion.ObtenerTabla(consulta, "Medico");
            return Convert.ToInt32(resultado.Rows[0][0]);
        }
        public int ObtenerCantidadDePaginas(int cantidad_pagina = 10) {
            string consulta = "SELECT COUNT(*) FROM Medico";
            DataTable resultado = conexion.ObtenerTabla(consulta, "Medico");
            int cantidad_Medicos = Convert.ToInt32(resultado.Rows[0][0]);
            return (int)Math.Ceiling((double)cantidad_Medicos / cantidad_pagina);
        }
        public DataTable ObtenerMedicosPaginado(int nro_pagina, int cantidad_pagina = 10) {
            string consulta = $"SELECT * FROM vw_Medicos ORDER BY id_medico ASC OFFSET ({nro_pagina} - 1) * {cantidad_pagina} ROWS FETCH NEXT {cantidad_pagina} ROWS ONLY;";
            return conexion.ObtenerTabla(consulta, "Medico");
        }
        public int AgregarMedico(Entidades.Persona persona, Medico medico, out string mensaje) {
            using (SqlConnection conn = conexion.ObtenerConexion()) {
                using (SqlCommand cmd = new SqlCommand("sp_Medico_Alta", conn)) {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@legajo",             medico.Legajo);
                    cmd.Parameters.AddWithValue("@dni",                persona.DNI);
                    cmd.Parameters.AddWithValue("@nombre",             persona.Nombre);
                    cmd.Parameters.AddWithValue("@apellido",           persona.Apellido);
                    cmd.Parameters.AddWithValue("@sexo",               persona.Sexo.ToString());
                    cmd.Parameters.AddWithValue("@nacionalidad",       persona.Nacionalidad);
                    cmd.Parameters.AddWithValue("@fecha_nacimiento",   DateTime.Parse(persona.FechaNacimiento));
                    cmd.Parameters.AddWithValue("@direccion",          persona.Direccion);
                    cmd.Parameters.AddWithValue("@id_localidad",       persona.IDLocalidad);
                    cmd.Parameters.AddWithValue("@email",              persona.Email);
                    cmd.Parameters.AddWithValue("@telefono",           persona.Telefono);
                    cmd.Parameters.AddWithValue("@id_especialidad",    medico.IDEspecialidad);
                    SqlParameter pId  = new SqlParameter("@nuevo_id", SqlDbType.Int)            { Direction = ParameterDirection.Output };
                    SqlParameter pMsg = new SqlParameter("@mensaje",  SqlDbType.NVarChar, 200)  { Direction = ParameterDirection.Output };
                    cmd.Parameters.Add(pId);
                    cmd.Parameters.Add(pMsg);
                    cmd.ExecuteNonQuery();
                    mensaje = pMsg.Value?.ToString() ?? string.Empty;
                    return Convert.ToInt32(pId.Value);
                }
            }
        }
        public string ActualizarMedico(Entidades.Persona persona, Medico medico) {
            using (SqlConnection conn = conexion.ObtenerConexion()) {
                using (SqlCommand cmd = new SqlCommand("sp_Medico_Modificar", conn)) {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@id_medico",          medico.IDMedico);
                    cmd.Parameters.AddWithValue("@nombre",             persona.Nombre);
                    cmd.Parameters.AddWithValue("@apellido",           persona.Apellido);
                    cmd.Parameters.AddWithValue("@sexo",               persona.Sexo.ToString());
                    cmd.Parameters.AddWithValue("@nacionalidad",       persona.Nacionalidad);
                    cmd.Parameters.AddWithValue("@fecha_nacimiento",   DateTime.Parse(persona.FechaNacimiento));
                    cmd.Parameters.AddWithValue("@direccion",          persona.Direccion);
                    cmd.Parameters.AddWithValue("@id_localidad",       persona.IDLocalidad);
                    cmd.Parameters.AddWithValue("@email",              persona.Email);
                    cmd.Parameters.AddWithValue("@telefono",           persona.Telefono);
                    cmd.Parameters.AddWithValue("@legajo",             medico.Legajo);
                    cmd.Parameters.AddWithValue("@id_especialidad",    medico.IDEspecialidad);
                    SqlParameter pMsg = new SqlParameter("@mensaje", SqlDbType.NVarChar, 200) { Direction = ParameterDirection.Output };
                    cmd.Parameters.Add(pMsg);
                    cmd.ExecuteNonQuery();
                    return pMsg.Value?.ToString() ?? string.Empty;
                }
            }
        }
        public string DarDeBajaMedico(int id_medico) {
            using (SqlConnection conn = conexion.ObtenerConexion()) {
                using (SqlCommand cmd = new SqlCommand("sp_Medico_Baja", conn)) {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@id_medico", id_medico);
                    SqlParameter pMsg = new SqlParameter("@mensaje", SqlDbType.NVarChar, 200) { Direction = ParameterDirection.Output };
                    cmd.Parameters.Add(pMsg);
                    cmd.ExecuteNonQuery();
                    return pMsg.Value?.ToString() ?? string.Empty;
                }
            }
        }
    }
}