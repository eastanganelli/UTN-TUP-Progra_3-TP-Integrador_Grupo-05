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
            try
            {
                string consulta = "DELETE FROM Turno WHERE id_turno = " + idTurno;

                int filasAfectadas = conexion.EjecutarConsulta(consulta);

                return filasAfectadas > 0;
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine("Error al eliminar turno: " + ex.Message);
                return false;
            }
        }

        public DataTable ObtenerProximosTurnos(int idPaciente)
        {
            string consulta = @"SELECT
                            ta.id_turno,
                            ta.Paciente AS paciente,
                            ta.Medico AS medico,
                            ta.Especialidad AS especialidad,
                            ta.FechaHora,
                            ta.estado,
                            ta.observacion
                        FROM vw_Turnos ta
                        WHERE ta.id_paciente = @idPaciente
                          AND ta.FechaHora >= GETDATE()
                        ORDER BY ta.FechaHora ASC";

            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@idPaciente", idPaciente));

            return conexion.ObtenerTablaParametros(consulta, "proximos_turnos", parametros.ToArray());
        }

        public DataTable BuscarTurnoPorId(string idTurno)
        {
            string consulta = "SELECT t.id_turno, t.fecha_hora, t.observacion, " +
                              "t.id_paciente, t.id_medico, " +
                              "e.nombre AS Especialidad, " +
                              "pem.nombre AS MedicoNombre, pem.apellido AS MedicoApellido, pem.email AS Correo, " +
                              "(LEFT(pem.apellido, 1) + LEFT(pem.nombre, 1)) AS InicialesMed, " +
                              "pep.nombre AS PacienteNombre, pep.apellido AS PacienteApellido, " +
                              "pep.dni AS DNI, pep.telefono AS Telefono, t.id_paciente AS NroPaciente, " +
                              "(LEFT(pep.apellido, 1) + LEFT(pep.nombre, 1)) AS InicialesPac " +
                              "FROM Turno t " +
                              "INNER JOIN Medico m ON t.id_medico = m.id_medico " +
                              "INNER JOIN Especialidad e ON m.id_especialidad = e.id_especialidad " +
                              "INNER JOIN Persona pem ON m.id_persona = pem.id_persona " +
                              "INNER JOIN Paciente pa ON t.id_paciente = pa.id_paciente " +
                              "INNER JOIN Persona pep ON pa.id_persona = pep.id_persona " +
                              "WHERE t.id_turno = " + idTurno;

            return conexion.ObtenerTabla(consulta, "TurnoEspecifico");
        }
        public string InsertarTurnoConSP(string idMedico, string idPaciente, string fechaHora)
        {
            try
            {
                SqlParameter[] parametros = new SqlParameter[]
                {
                    new SqlParameter("@id_medico", Convert.ToInt32(idMedico)),
                    new SqlParameter("@id_paciente", Convert.ToInt32(idPaciente)),
                    new SqlParameter("@fecha_hora", Convert.ToDateTime(fechaHora)),
                    new SqlParameter("@nuevo_id", SqlDbType.Int) { Direction = ParameterDirection.Output },
                    new SqlParameter("@mensaje", SqlDbType.VarChar, 200) { Direction = ParameterDirection.Output }
                };

                SqlCommand cmd = new SqlCommand();
                cmd.Parameters.AddRange(parametros);

                conexion.EjecutarProcedimientoAlmacenado(cmd, "sp_Turno_Asignar");

                return cmd.Parameters["@mensaje"].Value.ToString();
            }
            catch (Exception ex)
            {
                throw new Exception("Error en BD: " + ex.Message);
            }
        }
    }
}
