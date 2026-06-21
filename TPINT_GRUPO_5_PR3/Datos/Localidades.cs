using Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Text;

namespace Datos
{
    public class Localidades
    {
        private AccesoDatos conexion = new AccesoDatos();
        public Localidad ObtenerLocalidad(int id_Localidad)
        {
            string consulta = $"SELECT * FROM Localidad WHERE id_localidad = {id_Localidad}";
            DataTable resultado = conexion.ObtenerTabla(consulta, "Localidad");
            if (resultado.Rows.Count == 0)
            {
                throw new Exception($"La Localidad con ID [{id_Localidad}] fue no encontrada!");
            }
            Localidad localidad = null;
            if (resultado.Rows.Count > 0)
            {
                localidad = new Localidad
                {
                    IDLocalidad = Convert.ToInt32(resultado.Rows[0]["id_localidad"]),
                    Nombre = resultado.Rows[0]["nombre"].ToString(),
                    IDProvincia = Convert.ToInt32(resultado.Rows[0]["id_provincia"])
                };
            }
            return localidad;
        }
        public DataTable ObtenerLocalidades()
        {
            string consulta = "SELECT * FROM Localidad";
            return conexion.ObtenerTabla(consulta, "Localidad");
        }
    }
}
