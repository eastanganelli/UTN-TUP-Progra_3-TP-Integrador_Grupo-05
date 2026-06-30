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
                throw new Exception($"La especialidad con ID [{id_Especialidad}] no fue encontrada.");
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

        public DataTable ObtenerMedicosPorEspecialidad(int idEspecialidad)
        {
            string consulta = "SELECT m.id_medico, p.nombre, p.apellido " +
                              "FROM Medico m " +
                              "INNER JOIN Persona p ON m.id_persona = p.id_persona " +
                              "WHERE m.id_especialidad = @idEspecialidad";

            SqlParameter[] parametros = new SqlParameter[]
            {
            new SqlParameter("@idEspecialidad", idEspecialidad)
            };

            return conexion.ObtenerTablaParametros(consulta, "MedicosPorEspecialidad", parametros);
        }
    }
}
