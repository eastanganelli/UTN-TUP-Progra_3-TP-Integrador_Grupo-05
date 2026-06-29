using Datos;
using Entidades;
using System;
using System.Data;

namespace Negocio {
    public class HorariosMedicosNegocio {
        private HorariosMedicos datosHorarioMedicos = new HorariosMedicos();
        public DataTable ObtenerHorariosDeMedico(int id_medico) {
            return datosHorarioMedicos.ObtenerHorariosDeMedico(id_medico);
        }
        public int AgregarHorario(HorarioMedico horario) {
            try { return datosHorarioMedicos.AgregarHorario(horario); }
            catch (Exception ex) { throw new Exception("Error al agregar horario: " + ex.Message); }
        }
        public int ActualizarHorario(HorarioMedico horario) {
            try { return datosHorarioMedicos.ActualizarHorario(horario); }
            catch (Exception ex) { throw new Exception("Error al actualizar horario: " + ex.Message); }
        }
        public int EliminarHorario(int id_horario) {
            try { return datosHorarioMedicos.EliminarHorario(id_horario); }
            catch (Exception ex) { throw new Exception("Error al eliminar horario: " + ex.Message); }
        }

        public DataTable ObtenerHorariosDisponibles(string idMedico, string fecha, int diaSemana)
        {
            try
            {
                return datosHorarioMedicos.ObtenerHorariosDisponibles(idMedico, fecha, diaSemana);
            }
            catch (Exception ex)
            {
                throw new Exception("Error al obtener horarios disponibles: " + ex.Message);
            }
        }

        public DataTable FiltrarHorarios(string idMedico, string fecha)
        {
            if (string.IsNullOrEmpty(idMedico) || string.IsNullOrEmpty(fecha))
            {
                return null;
            }

            DateTime dt = Convert.ToDateTime(fecha);

            int diaSemana = (int)dt.DayOfWeek;

            if (diaSemana == 0)
            {
                diaSemana = 7;
            }

            return datosHorarioMedicos.ObtenerHorariosDisponibles(idMedico, fecha, diaSemana);
        }
    }
}
