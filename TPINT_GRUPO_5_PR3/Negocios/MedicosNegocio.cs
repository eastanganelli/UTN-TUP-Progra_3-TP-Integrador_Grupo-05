using Datos;
using Entidades;
using System;
using System.Data;

namespace Negocio {
    public class MedicosNegocio {
        private Medicos  datosMedicos  = new Medicos();
        private Usuarios datosUsuarios = new Usuarios();
        public Medico ObtenerMedico(int id_Medico) {
            try {
                return datosMedicos.ObtenerMedico(id_Medico);
            }
            catch (Exception ex) {
                throw new Exception("Error al obtener el médico por ID: " + ex.Message);
            }
        }
        public DataTable ObtenerMedicos() {
            return datosMedicos.ObtenerMedicos();
        }
        public DataTable ObtenerMedicosSinAcceso() {
            return datosMedicos.ObtenerMedicosSinAcceso();
        }
        public DataTable ObtenerMedicosPorEspecialidad(int id_especialidad) {
            return datosMedicos.ObtenerMedicosPorEspecialidad(id_especialidad);
        }
        public DataTable ObtenerMedicosParaEdicion(int? idMedicoActual) {
            return datosMedicos.ObtenerMedicosParaEdicion(idMedicoActual);
        }
        public int ObtenerCantidadDeMedicos() {
            return datosMedicos.ObtenerCantidadDeMedicos();
        }
        public int ObtenerCantidadDePaginas(int CantPagina) {
            return datosMedicos.ObtenerCantidadDePaginas(CantPagina);
        }
        public DataTable ObtenerMedicosPaginados(int NroPagina, int CantPagina) {
            return datosMedicos.ObtenerMedicosPaginado(NroPagina, CantPagina);
        }
        public DataTable BuscarMedicos(string busqueda, bool? activo, int? idEspecialidad, int pagina, int porPagina) {
            return datosMedicos.BuscarMedicos(busqueda, activo, idEspecialidad, pagina, porPagina);
        }
        public int ContarMedicos(string busqueda, bool? activo, int? idEspecialidad) {
            return datosMedicos.ContarMedicos(busqueda, activo, idEspecialidad);
        }
        public int AgregarMedico(Entidades.Persona persona, Entidades.Medico medico, out string mensaje) {
            try {
                return datosMedicos.AgregarMedico(persona, medico, out mensaje);
            }
            catch (Exception ex) {
                mensaje = "Error al agregar el médico: " + ex.Message;
                return -1;
            }
        }
        public string ActualizarMedico(Entidades.Persona persona, Entidades.Medico medico) {
            try {
                return datosMedicos.ActualizarMedico(persona, medico);
            }
            catch (Exception ex) {
                throw new Exception("Error al actualizar el médico: " + ex.Message);
            }
        }
        public string DarDeBajaMedico(int id_medico) {
            try {
                return datosMedicos.DarDeBajaMedico(id_medico);
            }
            catch (Exception ex) {
                throw new Exception("Error al dar de baja el médico: " + ex.Message);
            }
        }
        public void ToggleEstadoMedico(int id_medico) {
            try {
                Medico m = datosMedicos.ObtenerMedico(id_medico);
                bool nuevoEstado = !m.Estado;
                string mensaje = nuevoEstado
                    ? datosMedicos.ActivarMedico(id_medico)
                    : datosMedicos.DarDeBajaMedico(id_medico);
                if (!string.IsNullOrEmpty(mensaje) &&
                    !mensaje.Contains("correctamente"))
                    throw new Exception(mensaje);
                datosUsuarios.CambiarEstadoUsuarioDeMedico(id_medico, nuevoEstado);
            }
            catch (Exception ex) {
                throw new Exception(ex.Message.StartsWith("Error") ? ex.Message : "Error al cambiar el estado del médico: " + ex.Message);
            }
        }
    }
}
