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

        public bool EliminarTurnoPermanente(int idTurno)
        {
            try
            {
                return _datosTurnos.EliminarTurnoPermanente(idTurno);
            }
            catch (Exception ex)
            {
                throw new Exception("Error en la capa de negocio al eliminar físicamente: " + ex.Message);
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

        public string AsignarTurno(int id_medico, int id_paciente, DateTime fecha_hora)
        {
            if (id_medico <= 0) throw new Exception("Seleccioná un médico válido.");
            if (id_paciente <= 0) throw new Exception("Seleccioná un paciente válido.");
            if (fecha_hora < DateTime.Now)
                throw new Exception("La fecha y hora del turno no puede ser en el pasado.");

            return _datosTurnos.AsignarTurno(id_medico, id_paciente, fecha_hora);
        }
        public DataTable ObtenerHorariosDisponibles(int id_medico, DateTime fecha)
        {
            if (fecha.Date < DateTime.Today)
                throw new Exception("No se pueden asignar turnos en fechas pasadas.");

            return _datosTurnos.ObtenerHorariosDisponibles(id_medico, fecha);
        }
        public DataTable ObtenerTurnosDelDia(int id_medico) {
            return _datosTurnos.ObtenerTurnosDelDia(id_medico);
        }
        public DataTable ObtenerTurnosDelDiaAdmin() {
            return _datosTurnos.ObtenerTurnosDelDiaAdmin();
        }
        public DataTable ObtenerTurnosPorMedico(int idMedico) {
            return _datosTurnos.ObtenerTurnosPorMedico(idMedico);
        }
        public DataTable ObtenerEstadisticasDelDia() {
            return _datosTurnos.ObtenerEstadisticasDelDia();
        }
        public DataTable ObtenerEstadisticasDelDiaMedico(int idMedico) {
            return _datosTurnos.ObtenerEstadisticasDelDiaMedico(idMedico);
        }

        public DataTable ObtenerHorariosParaEditar(int idMedico, DateTime fecha, int idTurno)
        {
            return _datosTurnos.ObtenerHorariosDisponiblesExcluyendoTurno(idMedico, fecha, idTurno);
        }

        public string ModificarTurno(int idTurno, int idMedico, DateTime fechaHora, string estado, string observacion)
        {
            if (string.IsNullOrEmpty(estado))
                throw new Exception("Seleccioná un estado para el turno.");

            if (estado == "presente" && string.IsNullOrWhiteSpace(observacion))
                throw new Exception("Los turnos marcados como presente requieren una observación.");

            if (_datosTurnos.ExisteOtroTurnoEnEseHorario(idMedico, fechaHora, idTurno))
                throw new Exception("El médico ya tiene otro turno asignado en ese día y horario.");

            int filas = _datosTurnos.ModificarTurno(idTurno, fechaHora, estado, observacion);
            if (filas == 0)
                throw new Exception("No se pudo actualizar el turno.");

            return "Turno modificado correctamente.";
        }
    }
}
