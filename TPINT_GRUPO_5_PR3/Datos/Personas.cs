using Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Text;

namespace Datos {
    public class Personas {
        private AccesoDatos conexion = new AccesoDatos();
        public Persona ObtenerPersona(int id_Persona) {
            string consulta = $"SELECT * FROM Persona WHERE id_persona = {id_Persona}";
            var resultado = conexion.ObtenerTabla(consulta, "Persona");
            if (resultado.Rows.Count == 0)
            {
                throw new Exception($"La Persona con ID [{id_Persona}] fue no encontrada!");
            }
            Persona persona = null;
            if (resultado.Rows.Count > 0)
            {
                persona = new Persona
                {
                    IDPersona = Convert.ToInt32(resultado.Rows[0]["id_persona"]),
                    DNI = resultado.Rows[0]["dni"].ToString(),
                    Nombre = resultado.Rows[0]["nombre"].ToString(),
                    Apellido = resultado.Rows[0]["apellido"].ToString(),
                    Sexo = resultado.Rows[0]["sexo"].ToString()[0],
                    FechaNacimiento = resultado.Rows[0]["fecha_nacimiento"].ToString(),
                    Direccion = resultado.Rows[0]["domicilio"].ToString(),
                    IDLocalidad = Convert.ToInt32(resultado.Rows[0]["id_localidad"]),
                    Email = resultado.Rows[0]["email"].ToString(),
                    Telefono = resultado.Rows[0]["telefono"].ToString()
                };
            }
            return persona;
        }
        public DataTable ObtenerPersonas() {
            string consulta = "SELECT * FROM Persona";
            return conexion.ObtenerTabla(consulta, "Persona");
        }
    }
}
