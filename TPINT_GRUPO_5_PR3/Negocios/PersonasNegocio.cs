using Datos;
using Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Text;

namespace Negocio
{
    public class PersonasNegocio
    {
        private Personas datosPersonas = new Personas();
        public Persona ObtenerPersona(int id_Persona)
        {
            try
            {
                return datosPersonas.ObtenerPersona(id_Persona);
            }
            catch (Exception ex)
            {
                throw new Exception("Error al obtener la persona por ID: " + ex.Message);
            }
        }
        public DataTable ObtenerPersonas()
        {
            return datosPersonas.ObtenerPersonas();
        }
    }
}
