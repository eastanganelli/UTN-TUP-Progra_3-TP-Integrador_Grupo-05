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
            string consulta = "SELECT TOP (@top) * FROM vw_Turnos WHERE id_medico = @idMedico ORDER BY FechaHora DESC";
            return conexion.ObtenerTablaParametros(consulta, "ultimos_turnos", new[] {
                new SqlParameter("@top", top_limite),
                new SqlParameter("@idMedico", id_medico)
            });
        }
        public DataTable ObtenerTodosLosTurnos()
        {
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
            return conexion.ObtenerTabla(consulta, "TurnosActivos");
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
                          AND ta.FechaHora <= GETDATE()
                        ORDER BY ta.FechaHora DESC";

            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@idPaciente", idPaciente));

            return conexion.ObtenerTablaParametros(consulta, "turnos_paciente", parametros.ToArray());
        }
        public bool EliminarTurno(int idTurno)
        {
            int filas = conexion.EjecutarConsultaParametros(
                "UPDATE Turno SET activo = 0 WHERE id_turno = @id_turno",
                new[] { new SqlParameter("@id_turno", idTurno) });
            return filas > 0;
        }
        public DataTable BuscarTurnoPorId(string idTurno)
        {
            string consulta = "SELECT t.id_turno, t.fecha_hora, t.estado, t.observacion, " +
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
                              "WHERE t.id_turno = @idTurno";

            return conexion.ObtenerTablaParametros(consulta, "TurnoEspecifico",
                new[] { new SqlParameter("@idTurno", idTurno) });
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

            SqlParameter[] parametros = new SqlParameter[] {
                new SqlParameter("@idMedico", idMedico),
                new SqlParameter("@fecha", fecha)
            };

            return conexion.ObtenerTablaParametros(consulta, "TurnosOcupados", parametros);
        }
        public DataTable ObtenerTurnosPorMedico(int idMedico)
        {
            string consulta = @"
                SELECT
                    ta.id_turno                              AS id_turno,
                    ta.Paciente                              AS paciente,
                    ta.Medico                                AS medico,
                    ta.Especialidad                          AS especialidad,
                    CONVERT(varchar, ta.FechaHora, 103)      AS fecha,
                    CONVERT(varchar(5), ta.FechaHora, 108)   AS horario,
                    ta.estado                                AS estado
                FROM vw_Turnos_Activos ta
                WHERE ta.id_medico = @idMedico
                ORDER BY ta.FechaHora DESC";
            return conexion.ObtenerTablaParametros(consulta, "TurnosMedico",
                new[] { new SqlParameter("@idMedico", idMedico) });
        }

        public DataTable ObtenerTurnosDelDiaAdmin()
        {
            string consulta = @"
                SELECT
                    ta.Paciente     AS Paciente,
                    ta.Medico       AS Medico,
                    CONVERT(varchar(5), ta.FechaHora, 108) AS Horario,
                    ta.Especialidad AS Especialidad,
                    ta.estado       AS Estado
                FROM vw_Turnos_Activos ta
                WHERE CONVERT(date, ta.FechaHora) = CAST(SYSUTCDATETIME() AT TIME ZONE 'UTC' AT TIME ZONE 'Argentina Standard Time' AS DATE)
                ORDER BY ta.FechaHora ASC";
            return conexion.ObtenerTabla(consulta, "TurnosDelDiaAdmin");
        }

        public DataTable ObtenerTurnosDelDia(int idMedico) {
            string consulta = @"
                SELECT
                     ROW_NUMBER() OVER(ORDER BY Hora ASC) AS Indice
                    ,id_turno
                    ,id_medico
                    ,Paciente
                    ,Hora
                    ,estado
                FROM vw_Turnos_Activos
                WHERE Fecha = CAST(SYSUTCDATETIME() AT TIME ZONE 'UTC' AT TIME ZONE 'Argentina Standard Time' AS DATE) AND id_medico = @idMedico";
            return conexion.ObtenerTablaParametros(consulta, "TurnosDelDia", new SqlParameter[] {
                new SqlParameter("@idMedico", idMedico)
            });
        }
        public DataTable ObtenerEstadisticasDelDia() {
            string consulta = @"
                            WITH EstadoDelDia AS (
	                            SELECT
                                    id_medico,
                                    SUM(IIF(estado LIKE 'pendiente',1,0)) AS Pendiente,
                                    SUM(IIF(estado LIKE 'presente',1,0)) AS Presente,
                                    SUM(IIF(estado LIKE 'ausente',1,0)) AS Ausente,
                                    Fecha
                                FROM vw_Turnos_Activos
                                GROUP BY id_medico, Fecha
                            )
                            SELECT
                                id_medico,
                                Pendiente,
                                Presente,
                                Ausente,
                                (Pendiente + Presente + Ausente) AS Total,
                                Fecha
                            FROM EstadoDelDia
                            WHERE Fecha = CAST(SYSUTCDATETIME() AT TIME ZONE 'UTC' AT TIME ZONE 'Argentina Standard Time' AS DATE)";
            return conexion.ObtenerTabla(consulta, "Estadisticas");
        }
        public DataTable ObtenerEstadisticasDelDiaMedico(int id_medico) {
            string consulta = @"
                            WITH EstadoDelDia AS (
	                            SELECT
                                    id_medico,
                                    SUM(IIF(estado LIKE 'pendiente',1,0)) AS Pendiente,
                                    SUM(IIF(estado LIKE 'presente',1,0)) AS Presente,
                                    SUM(IIF(estado LIKE 'ausente',1,0)) AS Ausente,
                                    Fecha
                                FROM vw_Turnos_Activos
                                GROUP BY id_medico, Fecha
                            )
                            SELECT
                                id_medico,
                                Pendiente,
                                Presente,
                                Ausente,
                                (Pendiente + Presente + Ausente) AS Total,
                                Fecha
                            FROM EstadoDelDia
                            WHERE id_medico = @idMedico AND Fecha = CAST(SYSUTCDATETIME() AT TIME ZONE 'UTC' AT TIME ZONE 'Argentina Standard Time' AS DATE)";
            return conexion.ObtenerTablaParametros(consulta, "Estadisticas", new SqlParameter[] {
                new SqlParameter("@idMedico", id_medico)
            });
        }

        public DataTable ObtenerHorariosDisponiblesExcluyendoTurno(int id_medico, DateTime fecha, int idTurnoActual)
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
                AND id_turno <> @idTurno
                AND activo = 1";

            DataTable ocupados = conexion.ObtenerTablaParametros(consultaOcupados, "ocupados",
                new SqlParameter[]
                {
                    new SqlParameter("@id_medico", id_medico),
                    new SqlParameter("@fecha",     fecha.Date),
                    new SqlParameter("@idTurno",   idTurnoActual)
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

        public bool ExisteOtroTurnoEnEseHorario(int idMedico, DateTime fechaHora, int idTurnoActual)
        {
            string consulta = @"SELECT COUNT(*) FROM Turno
                        WHERE id_medico = @idMedico
                          AND fecha_hora = @fechaHora
                          AND id_turno <> @idTurno
                          AND activo = 1";
            SqlParameter[] parametros = new SqlParameter[]
            {
                new SqlParameter("@idMedico", idMedico),
                new SqlParameter("@fechaHora", fechaHora),
                new SqlParameter("@idTurno", idTurnoActual)
            };
            int cantidad = conexion.ObtenerEscalar(consulta, parametros);
            return cantidad > 0;
        }
        public int ModificarTurno(int idTurno, DateTime fechaHora, string estado, string observacion)
        {
            string consulta = @"UPDATE Turno
                        SET fecha_hora = @fechaHora,
                            estado = @estado,
                            observacion = @observacion
                        WHERE id_turno = @idTurno";

            SqlParameter[] parametros = new SqlParameter[]
            {
                new SqlParameter("@fechaHora", fechaHora),
                new SqlParameter("@estado", estado),
                new SqlParameter("@observacion", string.IsNullOrWhiteSpace(observacion) ? (object)DBNull.Value : observacion.Trim()),
                new SqlParameter("@idTurno", idTurno)
            };

            return conexion.EjecutarConsultaParametros(consulta, parametros);
        }
    }
}
