using Entidades;
using System;
using System.Data;

namespace Datos
{
    public class Provincias
    {
       private AccesoDatos conexion = new AccesoDatos();
        public Provincia ObtenerProncia(int id_provincia)
        {
            string consulta = $"SELECT * FROM Provincia WHERE id_provincia = {id_provincia}";
            DataTable resultado = conexion.ObtenerTabla(consulta, "Provincia");
            if (resultado.Rows.Count == 0)
            {
                throw new Exception($"La Provincia con ID [{id_provincia}] fue no encontrada!");
            }
            Provincia provincia = null;
            if (resultado.Rows.Count > 0)
            {
                provincia = new Provincia
                {
                    IDProvincia = Convert.ToInt32(resultado.Rows[0]["id_provincia"]),
                    Nombre = resultado.Rows[0]["nombre"].ToString()
                };
            }
            return provincia;
        }
        public DataTable ObtenerProvincias()
        {
            string consulta = "SELECT * FROM Provincia";
            return conexion.ObtenerTabla(consulta, "Provincia");
        }
    }
}
