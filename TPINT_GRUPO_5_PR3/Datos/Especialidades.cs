using Entidades;
using System;
using System.Data;
using System.Data.SqlClient;

namespace Datos
{
    public class Especialidades
    {
        private AccesoDatos conexion = new AccesoDatos();
        public Especialidad ObtenerEspecialidad(int id_Especialidad) {
            DataRow fila = conexion.ObtenerFila(
                "SELECT * FROM Especialidad WHERE id_especialidad = @id", "Especialidad",
                new[] { new SqlParameter("@id", id_Especialidad) });
            if (fila == null)
                throw new Exception($"La Especialidad con ID [{id_Especialidad}] fue no encontrada!");
            return new Especialidad {
                IDEspecialidad = Convert.ToInt32(fila["id_especialidad"]),
                Nombre         = fila["nombre"].ToString()
            };
        }
        public DataTable ObtenerEspecialidades()
        {
            string sqlQuery = "SELECT * FROM Especialidad";
            return conexion.ObtenerTabla(sqlQuery, "Especialidad");
        }
    }
}
