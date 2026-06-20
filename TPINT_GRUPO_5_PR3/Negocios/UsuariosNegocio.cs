using System;
using System.Data;
using Datos;
using Entidades;

namespace Negocio
{
    public class UsuariosNegocio
    {
        private Usuarios datosUsuarios = new Usuarios();
        public DataTable ObtenerUsuarios()
        {
            return datosUsuarios.ObtenerUsuarios();
        }
        public int ObtenerCantidadDeUsuarios()
        {
            return datosUsuarios.ObtenerCantidadDeUsuarios();
        }
        public int ObtenerCantidadDePaginas(int CantPagina)
        {
            return datosUsuarios.ObtenerCantidadDePaginas(CantPagina);
        }
        public DataTable ObtenerUsuariosPaginados(int NroPagina, int CantPagina)
        {
            return datosUsuarios.ObtenerUsuariosPaginado(NroPagina, CantPagina);
        }
        public Usuario ObtenerUsuarioPorId(int id_usuario)
        {
            try
            {
                return datosUsuarios.ObtenerUsuario(id_usuario);
            }
            catch (Exception ex)
            {
                throw new Exception("Error al obtener el usuario por ID: " + ex.Message);
            }
        }

        public Usuario Login(string username, string password)
        {
            if (string.IsNullOrEmpty(username))
            {
                throw new Exception("El usuario es requerido.");
            }
            if (string.IsNullOrEmpty(password))
            {
                throw new Exception("La contraseña es requerida.");
            }

            Usuario usuario = datosUsuarios.Login(username, password);

            if (usuario == null)
            {
                throw new Exception("Error al autenticar el usuario.");
            }

            return usuario;
        }

    }
}
