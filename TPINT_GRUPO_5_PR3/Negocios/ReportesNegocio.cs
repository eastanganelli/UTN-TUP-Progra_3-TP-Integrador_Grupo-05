using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;

namespace Negocios
{
    public class ReportesNegocio
    {

        private Reportes datosReportes = new Reportes();

        public DataTable TurnosPorEspecialidad(DateTime? desde = null, DateTime? hasta = null)
        {
            if (desde.HasValue && hasta.HasValue && desde > hasta)
                throw new Exception("La fecha desde no puede ser mayor a la fecha hasta.");

            try { return datosReportes.TurnosPorEspecialidad(desde, hasta); }
            catch (Exception ex) { throw new Exception("Error al obtener turnos por especialidad: " + ex.Message); }
        }

        public DataTable MedicosConMasTurnos(DateTime? desde = null, DateTime? hasta = null)
        {
            if (desde.HasValue && hasta.HasValue && desde > hasta)
                throw new Exception("La fecha desde no puede ser mayor a la fecha hasta.");

            try { return datosReportes.MedicosConMasTurnos(desde, hasta); }
            catch (Exception ex) { throw new Exception("Error al obtener médicos con más turnos: " + ex.Message); }
        }
    }

}



