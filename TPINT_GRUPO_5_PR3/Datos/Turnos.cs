using Entidades;
using System;
using System.Data;
using System.Data.SqlClient;

namespace Datos {
    public class Turnos {
        private AccesoDatos conexion = new AccesoDatos();

        public DataTable ObtenerUltimosTurnos(int id_medico, int top_limite)
        {
            string consulta = $"SELECT TOP ({top_limite}) * FROM vw_Turnos WHERE id_medico = {id_medico} ORDER BY FechaHora DESC";
            return conexion.ObtenerTabla(consulta, "ultimos_turnos");
        }

        public DataTable ObtenerTodosLosTurnos()
        {
            SqlConnection conn = conexion.ObtenerConexion();
            string consulta = @"SELECT t.id_turno, 
                               pep.apellido + ', ' + pep.nombre AS id_paciente, 
                               pem.apellido + ', ' + pem.nombre AS id_medico, 
                               e.nombre AS especialidad, 
                               CONVERT(varchar, t.fecha_hora, 103) AS fecha,
                               CONVERT(varchar, t.fecha_hora, 108) AS horario,
                               t.estado 
                        FROM Turno t
                        INNER JOIN Paciente pa ON t.id_paciente = pa.id_paciente
                        INNER JOIN Persona pep ON pa.id_persona = pep.id_persona
                        INNER JOIN Medico m ON t.id_medico = m.id_medico
                        INNER JOIN Persona pem ON m.id_persona = pem.id_persona
                        INNER JOIN Especialidad e ON m.id_especialidad = e.id_especialidad
                        WHERE t.activo = 1
                        ORDER BY t.fecha_hora DESC";

            SqlCommand resultado = new SqlCommand(consulta, conn);
            SqlDataAdapter da = new SqlDataAdapter(resultado);
            DataTable dt = new DataTable();

            try
            {
                da.Fill(dt);
            }
            catch (Exception ex)
            {
            }

            return dt;
        }


    }
}
