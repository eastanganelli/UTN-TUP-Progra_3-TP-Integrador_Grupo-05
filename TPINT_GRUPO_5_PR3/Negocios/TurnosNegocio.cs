using Datos;
using System.Data;

namespace Negocio {
    public class TurnosNegocio
    {

        private Datos.Turnos _datosTurnos = new Datos.Turnos();

        public DataTable ListarTurnos()
        {

            return _datosTurnos.ObtenerTodosLosTurnos();
        }

        public DataTable ObtenerUltimosTurnosDeMedico(int id_medico, int top_limite)
        {
            return _datosTurnos.ObtenerUltimosTurnos(id_medico, top_limite);
        }


    }
}
