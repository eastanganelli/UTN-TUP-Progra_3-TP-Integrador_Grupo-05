using Entidades;
using System.Data;
using System.Data.SqlClient;

namespace Datos {
    public class HorariosMedicos {
        private AccesoDatos accesoDatos = new AccesoDatos();
        public DataTable ObtenerHorariosDeMedico(int id_medico) {
            string consulta = $"SELECT * FROM vw_HorariosMedicos WHERE id_medico = {id_medico}";
            return accesoDatos.ObtenerTabla(consulta, "HorariosMedicos");
        }
        public int AgregarHorario(HorarioMedico horario) {
            using (SqlConnection conn = accesoDatos.ObtenerConexion()) {
                using (SqlCommand cmd = new SqlCommand(
                    "INSERT INTO HorarioMedico (id_medico, dia_semana, hora_inicio, hora_fin) " +
                    "VALUES (@id_medico, @dia_semana, @hora_inicio, @hora_fin)", conn)) {
                    cmd.Parameters.AddWithValue("@id_medico",  horario.IDMedico);
                    cmd.Parameters.AddWithValue("@dia_semana", horario.DiaSemana);
                    cmd.Parameters.Add("@hora_inicio", SqlDbType.Time).Value = System.TimeSpan.Parse(horario.HoraInicio);
                    cmd.Parameters.Add("@hora_fin",    SqlDbType.Time).Value = System.TimeSpan.Parse(horario.HoraFin);
                    return cmd.ExecuteNonQuery();
                }
            }
        }
        public int ActualizarHorario(HorarioMedico horario) {
            using (SqlConnection conn = accesoDatos.ObtenerConexion()) {
                using (SqlCommand cmd = new SqlCommand(
                    "UPDATE HorarioMedico SET dia_semana = @dia_semana, hora_inicio = @hora_inicio, hora_fin = @hora_fin " +
                    "WHERE id_horario = @id_horario", conn)) {
                    cmd.Parameters.AddWithValue("@id_horario",  horario.IDHorario);
                    cmd.Parameters.AddWithValue("@dia_semana",  horario.DiaSemana);
                    cmd.Parameters.Add("@hora_inicio", SqlDbType.Time).Value = System.TimeSpan.Parse(horario.HoraInicio);
                    cmd.Parameters.Add("@hora_fin",    SqlDbType.Time).Value = System.TimeSpan.Parse(horario.HoraFin);
                    return cmd.ExecuteNonQuery();
                }
            }
        }
        public int EliminarHorario(int id_horario) {
            using (SqlConnection conn = accesoDatos.ObtenerConexion()) {
                using (SqlCommand cmd = new SqlCommand(
                    "DELETE FROM HorarioMedico WHERE id_horario = @id_horario", conn)) {
                    cmd.Parameters.AddWithValue("@id_horario", id_horario);
                    return cmd.ExecuteNonQuery();
                }
            }
        }
    }
}
