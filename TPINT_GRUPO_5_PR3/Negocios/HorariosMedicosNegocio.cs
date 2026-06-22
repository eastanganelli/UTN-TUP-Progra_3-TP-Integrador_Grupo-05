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
    }
}
