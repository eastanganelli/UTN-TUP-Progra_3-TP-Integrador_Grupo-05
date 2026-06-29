using Datos;
using Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Text;

namespace Negocio
{
    public class EspecialidadesNegocio
    {
        private Especialidades datosEspecialidades = new Especialidades();
        public Especialidad ObtenerEspecialidad(int id_Especialidad)
        {
            try
            {
                return datosEspecialidades.ObtenerEspecialidad(id_Especialidad);
            }
            catch (Exception ex)
            {
                throw new Exception("Error al obtener el nombre de la especialidad por ID: " + ex.Message);
            }
        }
        public DataTable ObtenerEspecialidades()
        {
            return datosEspecialidades.ObtenerEspecialidades();
        }

        
    }
}
