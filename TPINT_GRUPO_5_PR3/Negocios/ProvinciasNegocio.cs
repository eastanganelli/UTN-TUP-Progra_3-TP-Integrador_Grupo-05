using Datos;
using Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Text;

namespace Negocio
{
    public class ProvinciasNegocio
    {
        private Provincias datosProvincia = new Provincias();
        public Provincia ObtenerProvincia(int id_provincia)
        {
            try
            {
                return datosProvincia.ObtenerProncia(id_provincia);
            }
            catch (Exception ex)
            {
                throw new Exception("Error al obtener la provincia por ID: " + ex.Message);
            }
        }
        public DataTable ObtenerProvincias()
        {
            return datosProvincia.ObtenerProvincias();
        }
    }
}
