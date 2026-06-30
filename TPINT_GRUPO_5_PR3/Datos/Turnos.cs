using Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace Datos
{
    public class Turnos
    {
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

        public bool EliminarTurnoPermanente(int idTurno)
        {
            using (SqlConnection conn = conexion.ObtenerConexion())
            {
                string consulta = "DELETE FROM Turno WHERE id_turno = @id_turno";

                using (SqlCommand cmd = new SqlCommand(consulta, conn))
                {
                    cmd.Parameters.AddWithValue("@id_turno", idTurno);
                    int filasAfectadas = cmd.ExecuteNonQuery(); 
                    return filasAfectadas > 0;
                }
            }
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
        public string AsignarTurno(int id_medico, int id_paciente, DateTime fecha_hora)
        {
            SqlParameter pMsg = new SqlParameter("@mensaje", SqlDbType.NVarChar, 200)
            { Direction = ParameterDirection.Output };
            SqlParameter pId = new SqlParameter("@nuevo_id", SqlDbType.Int)
            { Direction = ParameterDirection.Output };

            conexion.EjecutarProcedimientoAlmacenado("sp_Turno_Asignar",
                new SqlParameter[]
                {
                    new SqlParameter("@id_medico",   id_medico),
                    new SqlParameter("@id_paciente", id_paciente),
                    new SqlParameter("@fecha_hora",  fecha_hora),
                    pId, pMsg
                });
            return pMsg.Value?.ToString() ?? string.Empty;
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

        public DataTable ObtenerMedicosPorEspecialidad(int id_especialidad)
        {
            string consulta = @"
                SELECT id_medico,
                       apellido + ', ' + nombre AS nombre
                FROM vw_Medicos_Activos
                WHERE id_especialidad = @id_especialidad
                ORDER BY apellido, nombre";
            return conexion.ObtenerTablaParametros(consulta, "medicos",
                new[] { new SqlParameter("@id_especialidad", id_especialidad) });
        }

        public DataTable ObtenerHorariosDisponibles(int id_medico, DateTime fecha)
        {
            int diaSemana = (int)fecha.DayOfWeek; 
            if (diaSemana == 0) diaSemana = 7;     

            string consultaBloques = @"
                SELECT
                    CONVERT(varchar(5), h.hora_inicio, 108) AS inicio,
                    CONVERT(varchar(5), h.hora_fin,    108) AS fin
                FROM HorarioMedico h
                WHERE h.id_medico  = @id_medico
                  AND h.dia_semana = @dia_semana";

            DataTable bloques = conexion.ObtenerTablaParametros(consultaBloques, "bloques",
                new SqlParameter[]
                {
                    new SqlParameter("@id_medico",  id_medico),
                    new SqlParameter("@dia_semana", diaSemana)
                });

            string consultaOcupados = @"
                SELECT CONVERT(varchar(5), fecha_hora, 108) AS hora_ocupada
                FROM Turno
                WHERE id_medico  = @id_medico
                  AND CONVERT(date, fecha_hora) = @fecha
                  AND activo = 1";

            DataTable ocupados = conexion.ObtenerTablaParametros(consultaOcupados, "ocupados",
                new SqlParameter[]
                {
                    new SqlParameter("@id_medico", id_medico),
                    new SqlParameter("@fecha",     fecha.Date)
                });

            DataTable resultado = new DataTable("horarios");
            resultado.Columns.Add("hora", typeof(string));
            resultado.Columns.Add("label", typeof(string));

            foreach (DataRow bloque in bloques.Rows)
            {
                string inicio = bloque["inicio"].ToString();
                string fin = bloque["fin"].ToString();    

                int horaInicio = int.Parse(inicio.Substring(0, 2));
                int horaFin = int.Parse(fin.Substring(0, 2));

                for (int h = horaInicio; h < horaFin; h++)
                {
                    string horaStr = h.ToString("00") + ":00";

                    bool ocupada = false;
                    foreach (DataRow ocup in ocupados.Rows)
                    {
                        if (ocup["hora_ocupada"].ToString() == horaStr)
                        {
                            ocupada = true;
                            break;
                        }
                    }

                    if (!ocupada)
                        resultado.Rows.Add(horaStr, horaStr + " hs");
                }
            }

            return resultado;
        }

        public DataTable ObtenerTurnosOcupados(int idMedico, string fecha)
        {
            string consulta = "SELECT CONVERT(VARCHAR(5), fecha_hora, 108) AS hora_ocupada " +
                              "FROM Turno " +
                              "WHERE id_medico = @idMedico " +
                              "AND CAST(fecha_hora AS DATE) = @fecha " +
                              "AND activo = 1";

            SqlParameter[] parametros = new SqlParameter[]
            {
        new SqlParameter("@idMedico", idMedico),
        new SqlParameter("@fecha", fecha)
            };

            return conexion.ObtenerTablaParametros(consulta, "TurnosOcupados", parametros);
        }
    }
}
