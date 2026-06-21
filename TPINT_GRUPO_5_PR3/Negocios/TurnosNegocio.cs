using Datos;
using System.Data;

namespace Negocio {
    public class TurnosNegocio {
        private Turnos datosTurnos = new Turnos();
        public DataTable ObtenerUltimosTurnosDeMedico(int id_medico, int top_limite) {
            return datosTurnos.ObtenerUltimosTurnos(id_medico, top_limite);
        }
    }
}
