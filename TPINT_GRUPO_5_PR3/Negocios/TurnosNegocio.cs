using Datos;
using System;
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

        public DataTable ObtenerTurnosPorPaciente(int idPaciente)
        {
            return _datosTurnos.ObtenerTurnosPorPaciente(idPaciente);
        }

        public bool EliminarTurnoFisico(int idTurno)
        {
            try
            {
                return _datosTurnos.EliminarTurnoFisico(idTurno);
            }
            catch (Exception ex)
            {
                throw new Exception("Error en la capa de negocio al eliminar físicamente el turno: " + ex.Message);
            }
        }
    }
}
