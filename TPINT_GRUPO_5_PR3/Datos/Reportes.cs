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
                           WHERE (@desde IS NULL OR t.fecha >= @desde)
                           AND   (@hasta IS NULL OR t.fecha <= @hasta)
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
                           WHERE (@desde IS NULL OR t.fecha >= @desde)
                           AND   (@hasta IS NULL OR t.fecha <= @hasta)
                           GROUP BY p.nombre, p.apellido, e.nombre
                           ORDER BY TotalTurnos DESC";

            var pDesde = new SqlParameter("@desde", SqlDbType.Date);
            pDesde.Value = desde.HasValue ? (object)desde.Value : DBNull.Value;
            var pHasta = new SqlParameter("@hasta", SqlDbType.Date);
            pHasta.Value = hasta.HasValue ? (object)hasta.Value : DBNull.Value;

            return conexion.ObtenerTablaParametros(sql, "MedicosConMasTurnos",
                new SqlParameter[] { pDesde, pHasta });
        }


    }
}
