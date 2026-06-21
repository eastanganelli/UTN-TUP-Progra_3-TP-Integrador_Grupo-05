using Datos;
using Entidades;
using System;
using System.Data;

namespace Negocio {
    public class MedicosNegocio {
        private Medicos datosMedicos = new Medicos();
        public Medico ObtenerMedico(int id_Medico) {
            try {
                return datosMedicos.ObtenerMedico(id_Medico);
            }
            catch (Exception ex) {
                throw new Exception("Error al obtener el Medico por ID: " + ex.Message);
            }
        }
        public DataTable ObtenerMedicos() {
            return datosMedicos.ObtenerMedicos();
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
    }
}
