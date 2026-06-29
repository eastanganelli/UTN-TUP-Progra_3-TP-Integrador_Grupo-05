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

        public bool EliminarTurno(int idTurno)
        {
            try
            {
                return _datosTurnos.EliminarTurno(idTurno);
            }
            catch (Exception ex)
            {
                throw new Exception("Error en la capa de negocio al eliminar físicamente el turno: " + ex.Message);
            }
        }

        public DataTable ObtenerProximosTurnos(int idPaciente)
        {
            Turnos datos = new Turnos();
            return datos.ObtenerProximosTurnos(idPaciente);
        }

        public DataTable BuscarTurnoPorId(string idTurno)
        {
            if (string.IsNullOrEmpty(idTurno)) return null;
            return _datosTurnos.BuscarTurnoPorId(idTurno);
        }

        public string InsertarNuevoTurno(string idMedico, string idPaciente, string fechaHora)
        {
            try
            {
                return _datosTurnos.InsertarTurnoConSP(idMedico, idPaciente, fechaHora);
            }
            catch (Exception ex)
            {
                throw new Exception("Error en la capa de negocio al insertar un nuevo turno: " + ex.Message);
            }
        }


    }
}
