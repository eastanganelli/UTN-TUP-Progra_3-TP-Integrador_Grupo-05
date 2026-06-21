using Datos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Text;

namespace Negocio
{
    public class LocalidadesNegocio
    {
        private Localidades datosLocalidades = new Datos.Localidades();
        public Entidades.Localidad ObtenerLocalidad(int id_Localidad)
        {
            try
            {
                return datosLocalidades.ObtenerLocalidad(id_Localidad);
            }
            catch (Exception ex)
            {
                throw new Exception("Error al obtener la Localidad por ID: " + ex.Message);
            }
        }
        public DataTable ObtenerLocalidades()
        {
            return datosLocalidades.ObtenerLocalidades();
        }
    }
}
