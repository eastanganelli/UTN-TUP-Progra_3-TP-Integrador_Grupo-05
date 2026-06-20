using System;
using System.Data;
using System.Data.SqlClient;
using Entidades;

namespace Datos {
    public class Usuarios {
        private AccesoDatos conexion = new AccesoDatos();
        public Usuario ObtenerUsuario(int id_usuario)
        {
            string consulta = $"SELECT * FROM Usuario WHERE id_usuario = {id_usuario}";
            DataTable resultado = conexion.ObtenerTabla(consulta, "Usuario");

            if (resultado.Rows.Count == 0)
            {
                throw new Exception($"El Usuario con ID [{id_usuario}] fue no encontrado!");
            }

            Usuario usuario = null;
            if (resultado.Rows.Count > 0)
            {
                usuario = new Usuario
                {
                    IDUsuario = Convert.ToInt32(resultado.Rows[0]["id_usuario"]),
                    NombreUsuario = resultado.Rows[0]["username"].ToString(),
                    Contrasenya = resultado.Rows[0]["password"].ToString(),
                    Rol = resultado.Rows[0]["tipo"].ToString(),
                    IDMedico = Convert.ToInt32(resultado.Rows[0]["id_medico"]),
                    Estado = Convert.ToBoolean(resultado.Rows[0]["activo"])
                };
            }
            return usuario;
        }

        public Usuario Login(string user, string contraseña)
        {
            string consulta = $"SELECT * FROM Usuario WHERE username = '{user}' AND password = '{contraseña}'";
            DataTable resultado = conexion.ObtenerTabla(consulta, "Usuario");

            if (resultado.Rows.Count == 0)
            {
                throw new Exception($"El Usuario [{user}] fue no encontrado!");
            }

            Usuario usuario = null;
            if (resultado.Rows.Count > 0)
            {
                usuario = new Usuario
                {
                    IDUsuario = Convert.ToInt32(resultado.Rows[0]["id_usuario"]),
                    NombreUsuario = resultado.Rows[0]["username"].ToString(),
                    Contrasenya = resultado.Rows[0]["password"].ToString(),
                    Rol = resultado.Rows[0]["tipo"].ToString(),
                    IDMedico = Convert.ToInt32(resultado.Rows[0]["id_medico"]),
                    Estado = Convert.ToBoolean(resultado.Rows[0]["activo"])
                };
            }
            return usuario;

        }
        public DataTable ObtenerUsuarios() {
            string consulta = "SELECT * FROM Usuario";
            return conexion.ObtenerTabla(consulta, "Usuario");
        }
        public int ObtenerCantidadDeUsuarios() {
            string consulta = "SELECT COUNT(*) FROM Usuario";
            DataTable resultado = conexion.ObtenerTabla(consulta, "Usuario");
            return Convert.ToInt32(resultado.Rows[0][0]);
        }
        public int ObtenerCantidadDePaginas(int cantidad_pagina = 10) {
            string consulta = "SELECT COUNT(*) FROM Usuario";
            DataTable resultado = conexion.ObtenerTabla(consulta, "Usuario");
            int cantidad_usuarios = Convert.ToInt32(resultado.Rows[0][0]);
            return (int)Math.Ceiling((double)cantidad_usuarios / cantidad_pagina);
        }
        public DataTable ObtenerUsuariosPaginado(int nro_pagina, int cantidad_pagina = 10) {
            string consulta = $"SELECT * FROM Usuario ORDER BY id_usuario ASC LIMIT {cantidad_pagina} OFFSET (({nro_pagina}) * {cantidad_pagina})";
            return conexion.ObtenerTabla(consulta, "Usuario");
        }
    }
}