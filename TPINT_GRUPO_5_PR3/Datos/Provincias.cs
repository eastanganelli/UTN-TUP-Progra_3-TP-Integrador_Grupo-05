using Entidades;
using System;
using System.Data;
using System.Data.SqlClient;

namespace Datos
{
    public class Provincias
    {
       private AccesoDatos conexion = new AccesoDatos();
        public Provincia ObtenerProncia(int id_provincia) {
            DataRow fila = conexion.ObtenerFila(
                "SELECT * FROM Provincia WHERE id_provincia = @id", "Provincia",
                new[] { new SqlParameter("@id", id_provincia) });
            if (fila == null)
                throw new Exception($"La Provincia con ID [{id_provincia}] fue no encontrada!");
            return new Provincia {
                IDProvincia = Convert.ToInt32(fila["id_provincia"]),
                Nombre      = fila["nombre"].ToString()
            };
        }
        public DataTable ObtenerProvincias()
        {
            string consulta = "SELECT * FROM Provincia";
            return conexion.ObtenerTabla(consulta, "Provincia");
        }
    }
}
