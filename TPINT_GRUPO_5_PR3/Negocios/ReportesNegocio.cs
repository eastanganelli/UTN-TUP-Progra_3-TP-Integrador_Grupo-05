using Datos;
using Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocios
{
    public class ReportesNegocio
    {

        private Reportes datosReportes = new Reportes();
        private Medicos datosMedicos = new Medicos();

        public DataTable TurnosPorEspecialidad(int? idEspecialidad, int? idMedico, DateTime? desde = null, DateTime? hasta = null)
        {
            if (desde.HasValue && hasta.HasValue && desde > hasta)
                throw new Exception("La fecha desde no puede ser mayor a la fecha hasta.");

            try
            {
                if (idEspecialidad.HasValue && idMedico.HasValue)
                {
                    Medico m = datosMedicos.ObtenerMedico(idMedico.Value);

                    if (m.IDEspecialidad != idEspecialidad.Value)
                        throw new Exception("El médico seleccionado no pertenece a la especialidad seleccionada.");
                }

                return datosReportes.TurnosPorEspecialidad(idEspecialidad, idMedico, desde, hasta);
            }
            catch (Exception ex)
            {
                throw new Exception("Error al obtener turnos por especialidad: " + ex.Message);
            }
        }

        public DataTable MedicosConMasTurnos(DateTime? desde = null, DateTime? hasta = null)
        {
            if (desde.HasValue && hasta.HasValue && desde > hasta)
                throw new Exception("La fecha desde no puede ser mayor a la fecha hasta.");

            try { return datosReportes.MedicosConMasTurnos(desde, hasta); }
            catch (Exception ex) { throw new Exception("Error al obtener médicos con más turnos: " + ex.Message); }
        }

        public DataTable EstadoTurnosPorAnio(int anio)
        {
            if (anio < 2000 || anio > DateTime.Now.Year + 1)
                throw new Exception("El año ingresado no es válido.");

            try { return datosReportes.EstadoTurnosPorAnio(anio); }
            catch (Exception ex) { throw new Exception("Error al obtener estado de turnos por año: " + ex.Message); }
        }

        public DataTable AsistenciaATurnos(DateTime? desde = null, DateTime? hasta = null)
        {
            if (desde.HasValue && hasta.HasValue && desde > hasta)
                throw new Exception("La fecha desde no puede ser mayor a la fecha hasta.");

            try { return datosReportes.AsistenciaATurnos(desde, hasta); }
            catch (Exception ex) { throw new Exception("Error al obtener asistencia a turnos: " + ex.Message); }
        }

        public DataTable PacientesConMasAusencias(DateTime? desde = null, DateTime? hasta = null)
        {
            if (desde.HasValue && hasta.HasValue && desde > hasta)
                throw new Exception("La fecha desde no puede ser mayor a la fecha hasta.");

            try { return datosReportes.PacientesConMasAusencias(desde, hasta); }
            catch (Exception ex) { throw new Exception("Error al obtener pacientes con más ausencias: " + ex.Message); }
        }
    }

}



