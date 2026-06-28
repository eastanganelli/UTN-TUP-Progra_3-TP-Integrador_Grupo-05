using System;
using System.Data;
using Datos;
using Entidades;

namespace Negocio
{
    public class UsuariosNegocio
    {
        private Usuarios datosUsuarios = new Usuarios();
        private Medicos datosMedicos = new Medicos();

        private void ValidarCoherenciaRol(Usuario u)
        {
            if (u.Rol == "admin" && u.IDMedico != null)
                throw new Exception("Un usuario administrador no puede tener un médico asociado.");
            if (u.Rol == "medico" && u.IDMedico == null)
                throw new Exception("Un usuario de tipo médico debe tener un médico asociado.");
        }

        public int AgregarUsuario(Usuario u)
        {
            if (string.IsNullOrEmpty(u.NombreUsuario))
                throw new Exception("El nombre de usuario es requerido.");
            if (string.IsNullOrEmpty(u.Contrasenya))
                throw new Exception("La contraseña es requerida.");
            if (string.IsNullOrEmpty(u.Rol))
                throw new Exception("El rol es requerido.");

            ValidarCoherenciaRol(u);

            try
            {
                return datosUsuarios.AgregarUsuario(u);
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message.Contains("UQ_Usr_Medico")
                    ? "El médico seleccionado ya está asociado a otro usuario."
                    : "Error al agregar el usuario: " + ex.Message);
            }
        }

        public int ModificarUsuario(Usuario u)
        {
            if (u.IDUsuario <= 0)
                throw new Exception("ID de usuario inválido.");
            if (string.IsNullOrEmpty(u.NombreUsuario))
                throw new Exception("El nombre de usuario es requerido.");

            ValidarCoherenciaRol(u);

            try
            {
                return datosUsuarios.ModificarUsuario(u);
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message.Contains("UQ_Usr_Medico")
                    ? "El médico seleccionado ya está asociado a otro usuario."
                    : "Error al modificar el usuario: " + ex.Message);
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
        public void ToggleEstadoUsuario(int id_usuario)
        {
            if (id_usuario <= 0)
                throw new Exception("ID de usuario inválido.");
            try
            {
                Usuario u = datosUsuarios.ObtenerUsuario(id_usuario);
                bool nuevoEstado = !u.Estado;
                datosUsuarios.CambiarEstadoUsuario(id_usuario, nuevoEstado);
                if (u.IDMedico.HasValue)
                    datosMedicos.CambiarEstadoMedico(u.IDMedico.Value, nuevoEstado);
            }
            catch (Exception ex)
            {
                throw new Exception("Error al cambiar el estado del usuario: " + ex.Message);
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
        public int ObtenerCantidadDeUsuarios(string buscar = null, string rol = null, string estado = null)
        {
            return datosUsuarios.ObtenerCantidadDeUsuarios(buscar, rol, estado);
        }
        public int ObtenerCantidadDePaginas(int CantPagina, string buscar = null,
                                     string rol = null, string estado = null)
        {
            return datosUsuarios.ObtenerCantidadDePaginas(CantPagina, buscar, rol, estado);
        }
        public DataTable ObtenerUsuariosPaginados(int NroPagina, int CantPagina,
                                            string buscar = null, string rol = null, string estado = null)
        {
            return datosUsuarios.ObtenerUsuariosPaginado(NroPagina, CantPagina, buscar, rol, estado);
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
