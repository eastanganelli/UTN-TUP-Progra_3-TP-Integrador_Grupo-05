using Datos;
using System.Data;

namespace Negocio {
    public class HorariosMedicosNegocio {
        private HorariosMedicos datosHorarioMedicos = new HorariosMedicos();
        public DataTable ObtenerHorariosDeMedico(int id_medico) {
            return datosHorarioMedicos.ObtenerHorariosDeMedico(id_medico);
        }
    }
}