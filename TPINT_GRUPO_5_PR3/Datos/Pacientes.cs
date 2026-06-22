using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace Datos
{
    public class Pacientes
    {
        AccesoDatos accesoDatos = new AccesoDatos();
        public DataTable BuscarPacientes(string texto, string sexo, string estado)
        {
            string consulta = "SELECT Paciente.*, Persona.*, " +
                               "Localidad.Nombre AS Localidad, " +
                                "Provincia.Nombre AS Provincia, " +
                                "Localidad.Id_Provincia AS Id_Provincia " +
                                 "FROM Paciente WHERE 1=1";
            List<SqlParameter> parametros = new List<SqlParameter>();

            if (!string.IsNullOrEmpty(texto))
            {
                consulta += " AND (Nombre LIKE @texto OR Apellido LIKE @texto OR DNI LIKE @texto)";
                parametros.Add(new SqlParameter("@texto", "%" + texto + "%"));
            }

            if (sexo != "Todos")
            {
                consulta += " AND Sexo = @sexo";
                parametros.Add(new SqlParameter("@sexo", sexo));
            }

            if (estado != "Todos")
            {
                consulta += " AND Estado = @estado";
                parametros.Add(new SqlParameter("@estado", estado));
            }
            consulta += "INNER JOIN Persona ON Paciente.Id_Persona = Persona.Id_Persona " +
                    "INNER JOIN nombre AS Localidad, id_prvoncia FROM Localidad ON Persona.Id_Localidad = Localidad.Id_Localidad" +
                    "INNER JOIN nombre AS Provincia ON Localidad.Id_Provincia = Provincia.Id_Provincia";
            DataTable tabla = accesoDatos.ObtenerTablaParametros(consulta, "Paciente", parametros.ToArray());
            return tabla;
        }

        public DataTable getTablaPacientes()
        {
            string consulta = "SELECT Paciente.*, Persona.*, " +
                            "Localidad.Nombre AS Localidad, " +
                            "Provincia.Nombre AS Provincia, " +
                            "Localidad.Id_Provincia AS Id_Provincia " +
                            "FROM Paciente " +
                            "INNER JOIN Persona ON Paciente.Id_Persona = Persona.Id_Persona " +
                            "INNER JOIN Localidad ON Persona.Id_Localidad = Localidad.Id_Localidad " +
                            "INNER JOIN Provincia ON Localidad.Id_Provincia = Provincia.Id_Provincia";
            DataTable tabla = accesoDatos.ObtenerTabla(consulta, "Paciente");
            return tabla;
        }
    }
}
