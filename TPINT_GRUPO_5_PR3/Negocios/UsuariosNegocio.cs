using System;
using System.Data;
using Datos;
using Entidades;

namespace Negocio
{
    public class UsuariosNegocio
    {
        private Usuarios datosUsuarios = new Usuarios();

        public int AgregarUsuario(Usuario u)
        {
            if (string.IsNullOrEmpty(u.NombreUsuario))
            {
                throw new Exception("El nombre de usuario es requerido.");
            }
            else if (string.IsNullOrEmpty(u.Contrasenya))
            {
                throw new Exception("La contraseña es requerida.");
            }
            else if (string.IsNullOrEmpty(u.Rol))
            {
                throw new Exception("El rol es requerido.");
            }
            try
            {
                return datosUsuarios.AgregarUsuario(u);
            }
            catch (Exception ex)
            {
                throw new Exception("Error al agregar el usuario: " + ex.Message);
            }
        }

        public int ModificarUsuario(Usuario u)
        {
            if (u.IDUsuario <= 0)
            {
                throw new Exception("ID de usuario inválido.");
            }
            else if (string.IsNullOrEmpty(u.NombreUsuario))
            {
                throw new Exception("El nombre de usuario es requerido");
            }

            try
            {
                return datosUsuarios.ModificarUsuario(u);

            }
            catch (Exception ex)
            {
                throw new Exception("Error al modificar el usuario: " + ex.Message);
            }
        }
        public int DarDeBajaUsuario(int id_usuario)
        {
            if (id_usuario <= 0)
            {
                throw new Exception("ID de usuario inválido.");
            }
            try
            {
                return datosUsuarios.DarDeBajaUsuario(id_usuario);
            }
            catch (Exception ex)
            {
                throw new Exception("Error al dar de baja el usuario: " + ex.Message);
            }
        }

        public Usuario ObtenerUsuario(int id_usuario)
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
