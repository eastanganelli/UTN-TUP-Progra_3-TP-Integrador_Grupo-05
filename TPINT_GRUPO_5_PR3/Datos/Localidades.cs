using Entidades;
using System;
using System.Data;
using System.Data.SqlClient;

namespace Datos
{
    public class Localidades
    {
        private AccesoDatos conexion = new AccesoDatos();
        public Localidad ObtenerLocalidad(int id_Localidad) {
            DataRow fila = conexion.ObtenerFila(
                "SELECT * FROM Localidad WHERE id_localidad = @id", "Localidad",
                new[] { new SqlParameter("@id", id_Localidad) });
            if (fila == null)
                throw new Exception($"La Localidad con ID [{id_Localidad}] fue no encontrada!");
            return new Localidad {
                IDLocalidad = Convert.ToInt32(fila["id_localidad"]),
                Nombre      = fila["nombre"].ToString(),
                IDProvincia = Convert.ToInt32(fila["id_provincia"])
            };
        }
        public DataTable ObtenerLocalidades()
        {
            string consulta = "SELECT * FROM Localidad";
            return conexion.ObtenerTabla(sqlQuery: consulta, tableName: "Localidad");
        }
        public DataTable ObtenerLocalidadesPorProvincia(int id_Provincia)
        {
            string consulta = $"SELECT * FROM Localidad WHERE id_provincia = {id_Provincia} ORDER BY nombre";
            return conexion.ObtenerTabla(sqlQuery: consulta, tableName: "Localidad");
        }
        public DataTable ObtenerLocalidadesPorProvinciaNombre(string nombreProvincia)
        {
            string consulta = $"SELECT * FROM Localidad WHERE id_provincia = (SELECT id_provincia FROM Provincia WHERE nombre = '{nombreProvincia}') ORDER BY nombre";
            return conexion.ObtenerTabla(sqlQuery: consulta, tableName: "Localidad");
        }
    }
}
