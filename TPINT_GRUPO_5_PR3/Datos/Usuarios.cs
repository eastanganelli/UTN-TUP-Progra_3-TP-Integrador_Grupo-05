using System;
using System.Data;
using System.Data.SqlClient;
using Entidades;

namespace Datos {
    public class Usuarios {
        private AccesoDatos conexion = new AccesoDatos();
        private Usuario MapearUsuario(DataRow fila) {
            return new Usuario {
                IDUsuario     = Convert.ToInt32(fila["id_usuario"]),
                NombreUsuario = fila["username"].ToString(),
                Contrasenya   = fila["password"].ToString(),
                Rol           = fila["tipo"].ToString(),
                IDMedico      = Convert.ToInt32(fila["id_medico"]),
                Estado        = Convert.ToBoolean(fila["activo"])
            };
        }
        public Usuario ObtenerUsuario(int id_usuario) {
            DataRow fila = conexion.ObtenerFila(
                "SELECT * FROM Usuario WHERE id_usuario = @id", "Usuario",
                new[] { new SqlParameter("@id", id_usuario) });
            if (fila == null)
                throw new Exception($"El Usuario con ID [{id_usuario}] fue no encontrado!");
            return MapearUsuario(fila);
        }
        public Usuario Login(string user, string contraseña) {
            DataRow fila = conexion.ObtenerFila(
                "SELECT * FROM Usuario WHERE username = @user AND password = @pass", "Usuario",
                new[] { new SqlParameter("@user", user), new SqlParameter("@pass", contraseña) });
            if (fila == null)
                throw new Exception("El Usuario o Contraseña es incorrecta!");
            return MapearUsuario(fila);
        }
        public DataTable ObtenerUsuarios() {
            string consulta = "SELECT * FROM Usuario";
            return conexion.ObtenerTabla(consulta, "Usuario");
        }
        public int ObtenerCantidadDeUsuarios() {
            return conexion.ObtenerEscalar("SELECT COUNT(*) FROM Usuario");
        }
        public int ObtenerCantidadDePaginas(int cantidad_pagina = 10) {
            int total = conexion.ObtenerEscalar("SELECT COUNT(*) FROM Usuario");
            return (int)Math.Ceiling((double)total / cantidad_pagina);
        }
        public DataTable ObtenerUsuariosPaginado(int nro_pagina, int cantidad_pagina = 10) {
            string consulta = $"SELECT * FROM Usuario ORDER BY id_usuario ASC LIMIT {cantidad_pagina} OFFSET (({nro_pagina}) * {cantidad_pagina})";
            return conexion.ObtenerTabla(consulta, "Usuario");
        }
    }
}