using Entidades;
using System;
using System.Collections.Generic;
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
                                FROM vw_Turnos_Activos ta
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

        public DataTable ObtenerTurnosPorPaciente(int idPaciente)
        {
            string consulta = @"SELECT
                                    ta.id_turno as id_turno, 
                                    ta.Paciente as paciente,
                                    ta.Medico as medico, 
                                    ta.Especialidad AS especialidad, 
                                    CONVERT(varchar, ta.FechaHora, 103) AS fecha,
                                    CONVERT(varchar, ta.FechaHora, 108) AS horario,
                                    ta.estado as estado,
                                    ta.observacion AS observacion
                                FROM vw_Turnos ta
                                WHERE ta.id_paciente = @idPaciente
                                ORDER BY ta.FechaHora DESC";
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@idPaciente", idPaciente));
            return conexion.ObtenerTablaParametros(consulta, "turnos_paciente", parametros.ToArray());  
        }

        public bool EliminarTurno(int idTurno)
        {
            SqlParameter pMsg = new SqlParameter("@mensaje", SqlDbType.NVarChar, 200) { Direction = ParameterDirection.Output };
            conexion.EjecutarProcedimientoAlmacenado("sp_Turno_Cancelar", new SqlParameter[]
            {
                new SqlParameter("@id_turno", idTurno),
                pMsg
            });
            return pMsg.Value.ToString().Length > 0;
        }
    }
}
