using Entidades;
using System;
using System.Data;
using System.Data.SqlClient;

namespace Datos {
    public class HorariosMedicos {
        private AccesoDatos accesoDatos = new AccesoDatos();
        public DataTable ObtenerHorariosDeMedico(int id_medico) {
            string consulta = "SELECT * FROM vw_HorariosMedicos WHERE id_medico = @idMedico";
            return accesoDatos.ObtenerTablaParametros(consulta, "HorariosMedicos",
                new[] { new SqlParameter("@idMedico", id_medico) });
        }
        public int AgregarHorario(HorarioMedico horario) {
            return accesoDatos.EjecutarConsultaParametros(
                "INSERT INTO HorarioMedico (id_medico, dia_semana, hora_inicio, hora_fin) " +
                "VALUES (@id_medico, @dia_semana, @hora_inicio, @hora_fin)",
                new SqlParameter[] {
                    new SqlParameter("@id_medico",  horario.IDMedico),
                    new SqlParameter("@dia_semana", horario.DiaSemana),
                    new SqlParameter("@hora_inicio", SqlDbType.Time) { Value = System.TimeSpan.Parse(horario.HoraInicio) },
                    new SqlParameter("@hora_fin",    SqlDbType.Time) { Value = System.TimeSpan.Parse(horario.HoraFin) }
                });
        }
        public int ActualizarHorario(HorarioMedico horario) {
            return accesoDatos.EjecutarConsultaParametros(
                "UPDATE HorarioMedico SET dia_semana = @dia_semana, hora_inicio = @hora_inicio, hora_fin = @hora_fin " +
                "WHERE id_horario = @id_horario",
                new SqlParameter[] {
                    new SqlParameter("@id_horario",  horario.IDHorario),
                    new SqlParameter("@dia_semana",  horario.DiaSemana),
                    new SqlParameter("@hora_inicio", SqlDbType.Time) { Value = System.TimeSpan.Parse(horario.HoraInicio) },
                    new SqlParameter("@hora_fin",    SqlDbType.Time) { Value = System.TimeSpan.Parse(horario.HoraFin) }
                });
        }
        public int EliminarHorario(int id_horario) {
            return accesoDatos.EjecutarConsultaParametros(
                "DELETE FROM HorarioMedico WHERE id_horario = @id_horario",
                new[] { new SqlParameter("@id_horario", id_horario) });
        }

    }
}

