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
            string consulta = @"SELECT
                                    ta.id_turno as id_turno, 
                                    ta.Paciente as paciente,
                                    ta.Medico as medico, 
                                    ta.Especialidad AS especialidad, 
                                    CONVERT(varchar, ta.FechaHora, 103) AS fecha,
                                    CONVERT(varchar, ta.FechaHora, 108) AS horario,
                                    ta.estado as estado
                                FROM vm_Turnos_Activos ta
                                ORDER BY ta.FechaHora DESC";

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
