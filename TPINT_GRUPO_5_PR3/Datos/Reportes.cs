using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class Reportes
    {
        private AccesoDatos conexion = new AccesoDatos();

        public DataTable TurnosPorEspecialidad(DateTime? desde = null, DateTime? hasta = null)
        {
            string sql = @"SELECT e.nombre AS Especialidad,
                                  COUNT(*) AS TotalTurnos
                           FROM Turno t
                           JOIN Medico       m ON m.id_medico       = t.id_medico
                           JOIN Especialidad e ON e.id_especialidad = m.id_especialidad
                           WHERE (@desde IS NULL OR CONVERT(DATE, t.fecha_hora) >= @desde)
                           AND   (@hasta IS NULL OR CONVERT(DATE, t.fecha_hora) <= @hasta)
                           GROUP BY e.nombre
                           ORDER BY TotalTurnos DESC";

            var pDesde = new SqlParameter("@desde", SqlDbType.Date);
            pDesde.Value = desde.HasValue ? (object)desde.Value : DBNull.Value;
            var pHasta = new SqlParameter("@hasta", SqlDbType.Date);
            pHasta.Value = hasta.HasValue ? (object)hasta.Value : DBNull.Value;

            return conexion.ObtenerTablaParametros(sql, "TurnosPorEspecialidad",
                new SqlParameter[] { pDesde, pHasta });
        }

        public DataTable MedicosConMasTurnos(DateTime? desde = null, DateTime? hasta = null)
        {
            string sql = @"SELECT p.nombre + ' ' + p.apellido AS Medico,
                                  e.nombre AS Especialidad,
                                  COUNT(*) AS TotalTurnos
                           FROM Turno t
                           JOIN Medico       m ON m.id_medico       = t.id_medico
                           JOIN Persona      p ON p.id_persona      = m.id_persona
                           JOIN Especialidad e ON e.id_especialidad = m.id_especialidad
                           WHERE (@desde IS NULL OR CONVERT(DATE, t.fecha_hora) >= @desde)
                           AND   (@hasta IS NULL OR CONVERT(DATE, t.fecha_hora) <= @hasta)
                           GROUP BY p.nombre, p.apellido, e.nombre
                           ORDER BY TotalTurnos DESC";

            var pDesde = new SqlParameter("@desde", SqlDbType.Date);
            pDesde.Value = desde.HasValue ? (object)desde.Value : DBNull.Value;
            var pHasta = new SqlParameter("@hasta", SqlDbType.Date);
            pHasta.Value = hasta.HasValue ? (object)hasta.Value : DBNull.Value;

            return conexion.ObtenerTablaParametros(sql, "MedicosConMasTurnos",
                new SqlParameter[] { pDesde, pHasta });
        }

        public DataTable EstadoTurnosPorAnio(int anio)
        {
            string sql = @"WITH Meses AS (
                                SELECT 1 AS Mes
                                UNION ALL
                                SELECT Mes + 1 FROM Meses WHERE Mes < 12
                           ),
                           TurnosDelAnio AS (
                                SELECT MONTH(FechaHora) AS Mes,
                                       SUM(IIF(estado LIKE 'pendiente', 1, 0)) AS Pendiente,
                                       SUM(IIF(estado LIKE 'presente',  1, 0)) AS Presente,
                                       SUM(IIF(estado LIKE 'ausente',   1, 0)) AS Ausente
                                FROM vw_Turnos_Activos
                                WHERE YEAR(FechaHora) = @anio
                                GROUP BY MONTH(FechaHora)
                           )
                           SELECT m.Mes,
                                  CASE m.Mes
                                      WHEN 1  THEN 'Enero'      WHEN 2  THEN 'Febrero'
                                      WHEN 3  THEN 'Marzo'      WHEN 4  THEN 'Abril'
                                      WHEN 5  THEN 'Mayo'       WHEN 6  THEN 'Junio'
                                      WHEN 7  THEN 'Julio'      WHEN 8  THEN 'Agosto'
                                      WHEN 9  THEN 'Septiembre' WHEN 10 THEN 'Octubre'
                                      WHEN 11 THEN 'Noviembre'  WHEN 12 THEN 'Diciembre'
                                  END AS NombreMes,
                                  ISNULL(t.Pendiente, 0) AS Pendiente,
                                  ISNULL(t.Presente,  0) AS Presente,
                                  ISNULL(t.Ausente,   0) AS Ausente,
                                  ISNULL(t.Pendiente, 0) + ISNULL(t.Presente, 0) + ISNULL(t.Ausente, 0) AS Total
                           FROM Meses m
                           LEFT JOIN TurnosDelAnio t ON t.Mes = m.Mes
                           ORDER BY m.Mes
                           OPTION (MAXRECURSION 12)";

            var pAnio = new SqlParameter("@anio", SqlDbType.Int);
            pAnio.Value = anio;

            return conexion.ObtenerTablaParametros(sql, "EstadoTurnosPorAnio",
                new SqlParameter[] { pAnio });
        }

        public DataTable AsistenciaATurnos(DateTime? desde = null, DateTime? hasta = null)
        {
            string sql = @"SELECT paciente AS Paciente,
                                  SUM(IIF(estado = 'presente',  1, 0)) AS Presentes,
                                  SUM(IIF(estado = 'ausente',   1, 0)) AS Ausentes,
                                  SUM(IIF(estado = 'pendiente', 1, 0)) AS Pendientes,
                                  COUNT(*) AS TotalTurnos
                           FROM vw_Turnos_Activos
                           WHERE (@desde IS NULL OR CAST(FechaHora AS DATE) >= @desde)
                           AND   (@hasta IS NULL OR CAST(FechaHora AS DATE) <= @hasta)
                           GROUP BY paciente
                           ORDER BY TotalTurnos DESC";

            var pDesde = new SqlParameter("@desde", SqlDbType.Date);
            pDesde.Value = desde.HasValue ? (object)desde.Value : DBNull.Value;
            var pHasta = new SqlParameter("@hasta", SqlDbType.Date);
            pHasta.Value = hasta.HasValue ? (object)hasta.Value : DBNull.Value;

            return conexion.ObtenerTablaParametros(sql, "AsistenciaATurnos",
                new SqlParameter[] { pDesde, pHasta });
        }

        public DataTable PacientesConMasAusencias(DateTime? desde = null, DateTime? hasta = null)
        {
            string sql = @"SELECT paciente AS Paciente,
                                  COUNT(*) AS TotalAusencias
                           FROM vw_Turnos_Activos
                           WHERE estado = 'ausente'
                           AND   (@desde IS NULL OR CAST(FechaHora AS DATE) >= @desde)
                           AND   (@hasta IS NULL OR CAST(FechaHora AS DATE) <= @hasta)
                           GROUP BY paciente
                           ORDER BY TotalAusencias DESC";

            var pDesde = new SqlParameter("@desde", SqlDbType.Date);
            pDesde.Value = desde.HasValue ? (object)desde.Value : DBNull.Value;
            var pHasta = new SqlParameter("@hasta", SqlDbType.Date);
            pHasta.Value = hasta.HasValue ? (object)hasta.Value : DBNull.Value;

            return conexion.ObtenerTablaParametros(sql, "PacientesConMasAusencias",
                new SqlParameter[] { pDesde, pHasta });
        }
    }
}
