using Entidades;
using System;
using System.Data;
using System.Data.SqlClient;

namespace Datos {
    public class Personas {
        private AccesoDatos conexion = new AccesoDatos();
        public Persona ObtenerPersona(int id_Persona) {
            DataRow fila = conexion.ObtenerFila(
                "SELECT * FROM Persona WHERE id_persona = @id", "Persona",
                new[] { new SqlParameter("@id", id_Persona) });
            if (fila == null)
                throw new Exception($"La Persona con ID [{id_Persona}] fue no encontrada!");
            return new Persona {
                IDPersona       = Convert.ToInt32(fila["id_persona"]),
                DNI             = fila["dni"].ToString(),
                Nombre          = fila["nombre"].ToString(),
                Apellido        = fila["apellido"].ToString(),
                Sexo            = fila["sexo"].ToString()[0],
                FechaNacimiento = fila["fecha_nacimiento"].ToString(),
                Direccion       = fila["direccion"].ToString(),
                IDLocalidad     = Convert.ToInt32(fila["id_localidad"]),
                Email           = fila["email"].ToString(),
                Telefono        = fila["telefono"].ToString(),
                Nacionalidad    = fila["nacionalidad"].ToString()
            };
        }
        public DataTable ObtenerPersonas() {
            string consulta = "SELECT * FROM Persona";
            return conexion.ObtenerTabla(sqlQuery: consulta, tableName: "Persona");
        }
    }
}
