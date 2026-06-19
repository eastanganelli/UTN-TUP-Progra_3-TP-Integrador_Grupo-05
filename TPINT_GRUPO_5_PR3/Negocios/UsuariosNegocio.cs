using System;
using System.Collections.Generic;
using System.Data;
using System.Text;
using Datos;
using Entidades;

namespace Negocio {
    public class UsuariosNegocio {
        private Usuarios datosUsuarios = new Usuarios();
        public DataTable ObtenerUsuarios() {
            return datosUsuarios.ObtenerUsuarios();
        }
        public int ObtenerCantidadDeUsuarios() {
            return datosUsuarios.ObtenerCantidadDeUsuarios();
        }
        public int ObtenerCantidadDePaginas(int CantPagina) {
            return datosUsuarios.ObtenerCantidadDePaginas(CantPagina);
        }
        public DataTable ObtenerUsuariosPaginados(int NroPagina, int CantPagina) {
            return datosUsuarios.ObtenerUsuariosPaginado(NroPagina, CantPagina);
        }
        public Usuario ObtenerUsuarioPorId(int id_usuario) {
            try {
                return datosUsuarios.ObtenerUsuario(id_usuario);
            } catch (Exception ex) {
                throw new Exception("Error al obtener el usuario por ID: " + ex.Message);
            }
        }
    }
}
