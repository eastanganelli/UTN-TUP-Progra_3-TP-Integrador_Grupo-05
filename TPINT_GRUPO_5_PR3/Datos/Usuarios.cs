using System;
using System.Data;
using System.Data.SqlClient;
using Entidades;

namespace Datos {
    public class Usuarios
    {
        private AccesoDatos conexion = new AccesoDatos();

        public int AgregarUsuario(Usuario u)
        {
            string consulta = "INSERT INTO Usuario (username, password, tipo, id_medico, activo) " +
                              "VALUES (@user, @pass, @tipo, @idMedico, @activo)";
            SqlParameter[] parametros =
            {
              new SqlParameter("@user", u.NombreUsuario),
              new SqlParameter("@pass", u.Contrasenya),
              new SqlParameter("@tipo", u.Rol),
              new SqlParameter("@idMedico", (object)u.IDMedico ?? DBNull.Value),
              new SqlParameter("@activo", u.Estado)
            };

            return conexion.EjecutarConsultaParametros(consulta, parametros);
        }

        public int ModificarUsuario(Usuario u)
        {
            string consulta = "UPDATE Usuario SET username=@user, password=@pass, tipo=@tipo, " +
                         "id_medico=@idMedico, activo=@activo WHERE id_usuario=@id";
            SqlParameter[] parametros =
            {
                new SqlParameter("@id",       u.IDUsuario),
                new SqlParameter("@user",     u.NombreUsuario),
                new SqlParameter("@pass",     u.Contrasenya),
                new SqlParameter("@tipo",     u.Rol),
                new SqlParameter("@idMedico", (object)u.IDMedico ?? DBNull.Value),
                new SqlParameter("@activo",   u.Estado)
            };
            return conexion.EjecutarConsultaParametros(consulta, parametros);
        }

        public int DarDeBajaUsuario(int id_usuario)
        {
            string consulta = "UPDATE Usuario SET activo = 0 WHERE id_usuario = @id";
            SqlParameter[] parametros = { new SqlParameter("@id", id_usuario) };
            return conexion.EjecutarConsultaParametros(consulta, parametros);
        }
        public int CambiarEstadoUsuario(int id_usuario, bool nuevoEstado)
        {
            return conexion.EjecutarConsultaParametros(
                "UPDATE Usuario SET activo = @activo WHERE id_usuario = @id",
                new[] { new SqlParameter("@activo", nuevoEstado), new SqlParameter("@id", id_usuario) });
        }
        public int CambiarEstadoUsuarioDeMedico(int id_medico, bool nuevoEstado)
        {
            return conexion.EjecutarConsultaParametros(
                "UPDATE Usuario SET activo = @activo WHERE id_medico = @id",
                new[] { new SqlParameter("@activo", nuevoEstado), new SqlParameter("@id", id_medico) });
        }
        public Usuario ObtenerUsuario(int id_usuario)
        {
            DataRow fila = conexion.ObtenerFila(
                "SELECT * FROM Usuario WHERE id_usuario = @id", "Usuario",
                new[] { new SqlParameter("@id", id_usuario) });
            if (fila == null)
                throw new Exception($"El usuario con ID [{id_usuario}] no fue encontrado.");
            return MapearUsuario(fila);
        }


        private Usuario MapearUsuario(DataRow fila) {
            return new Usuario {
                IDUsuario = Convert.ToInt32(fila["id_usuario"]),
                NombreUsuario = fila["username"].ToString(),
                Contrasenya = fila["password"].ToString(),
                Rol = fila["tipo"].ToString(),
                IDMedico = fila["id_medico"] == DBNull.Value
                        ? (int?)null
                        : Convert.ToInt32(fila["id_medico"]),
                Estado = Convert.ToBoolean(fila["activo"])
            };
        }
      
        public Usuario Login(string user, string contraseña) {
            DataRow fila = conexion.ObtenerFila(
                "SELECT * FROM Usuario WHERE username = @user AND password = @pass", "Usuario",
                new[] { new SqlParameter("@user", user), new SqlParameter("@pass", contraseña) });
            if (fila == null)
                throw new Exception("El nombre de usuario o la contraseña son incorrectos.");
            return MapearUsuario(fila);
        }
        public DataTable ObtenerUsuarios() {
            string consulta = "SELECT * FROM Usuario";
            return conexion.ObtenerTabla(consulta, "Usuario");
        }
        public int ObtenerCantidadDeUsuarios(string buscar = null, string rol = null, string estado = null)
        {
            string sql = @"SELECT COUNT(*) FROM Usuario u
                   WHERE (@buscar IS NULL OR u.username LIKE '%' + @buscar + '%')
                   AND   (@rol    IS NULL OR u.tipo     = @rol)
                   AND   (@estado IS NULL OR u.activo   = @estado)";

            var pBuscar = new SqlParameter("@buscar", SqlDbType.NVarChar, 100);
            pBuscar.Value = string.IsNullOrEmpty(buscar) ? (object)DBNull.Value : buscar;
            var pRol = new SqlParameter("@rol", SqlDbType.NVarChar, 50);
            pRol.Value = string.IsNullOrEmpty(rol) ? (object)DBNull.Value : rol;
            var pEstado = new SqlParameter("@estado", SqlDbType.Bit);
            pEstado.Value = string.IsNullOrEmpty(estado) ? (object)DBNull.Value : (estado == "1" ? 1 : 0);

            return conexion.ObtenerEscalar(sql, new SqlParameter[] { pBuscar, pRol, pEstado });
        }
        public int ObtenerCantidadDePaginas(int cantidad_pagina = 10, string buscar = null,
                                      string rol = null, string estado = null)
        {
            int total = ObtenerCantidadDeUsuarios(buscar, rol, estado);
            return (int)Math.Ceiling((double)total / cantidad_pagina);
        }
        public DataTable ObtenerUsuariosPaginado(int nro_pagina, int cantidad_pagina = 10,
                                            string buscar = null, string rol = null, string estado = null)
        {
            int offset = (nro_pagina - 1) * cantidad_pagina;
            string sql = $@"SELECT u.id_usuario, u.username, u.tipo, u.id_medico, u.activo,
                           p.nombre + ' ' + p.apellido AS NombreMedico
                    FROM Usuario u
                    LEFT JOIN Medico  m ON m.id_medico  = u.id_medico
                    LEFT JOIN Persona p ON p.id_persona = m.id_persona
                    WHERE (@buscar IS NULL OR u.username LIKE '%' + @buscar + '%')
                    AND   (@rol    IS NULL OR u.tipo     = @rol)
                    AND   (@estado IS NULL OR u.activo   = @estado)
                    ORDER BY u.id_usuario ASC
                    OFFSET {offset} ROWS
                    FETCH NEXT {cantidad_pagina} ROWS ONLY";

            var pBuscar = new SqlParameter("@buscar", SqlDbType.NVarChar, 100);
            pBuscar.Value = string.IsNullOrEmpty(buscar) ? (object)DBNull.Value : buscar;
            var pRol = new SqlParameter("@rol", SqlDbType.NVarChar, 50);
            pRol.Value = string.IsNullOrEmpty(rol) ? (object)DBNull.Value : rol;
            var pEstado = new SqlParameter("@estado", SqlDbType.Bit);
            pEstado.Value = string.IsNullOrEmpty(estado) ? (object)DBNull.Value : (estado == "1" ? 1 : 0);

            return conexion.ObtenerTablaParametros(sql, "Usuario", new SqlParameter[] { pBuscar, pRol, pEstado });
        }
    }
}