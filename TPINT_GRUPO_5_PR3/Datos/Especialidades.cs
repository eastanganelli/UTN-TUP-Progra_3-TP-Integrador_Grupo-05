using Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Text;

namespace Datos
{
    public class Especialidades
    {
        private AccesoDatos conexion = new AccesoDatos();
        public Especialidad ObtenerEspecialidad(int id_Especialidad)
        {
            string consulta = $"SELECT * FROM Especialidad WHERE id_especialidad = {id_Especialidad}";
            DataTable resultado = conexion.ObtenerTabla(consulta, "Especialidad");
            if (resultado.Rows.Count == 0)
            {
                throw new Exception($"La Especialidad con ID [{id_Especialidad}] fue no encontrada!");
            }
            Especialidad especialidad = null;
            if (resultado.Rows.Count > 0)
            {
                especialidad = new Especialidad
                {
                    IDEspecialidad = Convert.ToInt32(resultado.Rows[0]["id_especialidad"]),
                    Nombre = resultado.Rows[0]["nombre"].ToString()
                };
            }
            return especialidad;
        }
        public DataTable ObtenerEspecialidades()
        {
            string consulta = "SELECT * FROM Especialidad";
            return conexion.ObtenerTabla(consulta, "Especialidad");
        }
    }
}
