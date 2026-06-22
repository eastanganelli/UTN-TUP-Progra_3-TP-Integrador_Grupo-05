using Entidades;
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

        public Paciente ObtenerPacientePorId(int idPaciente)
        {
            string consulta = "SELECT * FROM Paciente WHERE Id_Paciente = @idPaciente";
            SqlParameter parametro = new SqlParameter("@idPaciente", idPaciente);
            DataTable tabla = accesoDatos.ObtenerTablaParametros(consulta, "Paciente", new SqlParameter[] { parametro });
            if (tabla.Rows.Count > 0)
            {
                DataRow row = tabla.Rows[0];
                Paciente paciente = new Paciente
                {
                    IdPaciente = Convert.ToInt32(row["Id_Paciente"]),
                    Estado = Convert.ToBoolean(row["Activo"])
                };
                return paciente;
            }
            else
            {
                return null; 
            }
        }

        public int CambiarEstadoPaciente(int idPaciente, bool nuevoEstado)
        {
            SqlCommand cmd = new SqlCommand();

            cmd.Parameters.AddWithValue("@IdPaciente", idPaciente);
            cmd.Parameters.AddWithValue("@Activo", nuevoEstado);

            return accesoDatos.EjecutarProcedimientoAlmacenado(cmd,"sp_ActualizarEstadoPaciente");
        }

        public DataTable BuscarPacientes(string texto, string sexo, string estado)
        {
            string consulta =
                "SELECT Paciente.*, Persona.*, " +
                "Localidad.Nombre AS Localidad, " +
                "Provincia.Nombre AS Provincia, " +
                "Localidad.Id_Provincia AS Id_Provincia " +
                "FROM Paciente " +
                "Left JOIN Persona ON Paciente.Id_Persona = Persona.Id_Persona " +
                "Left JOIN Localidad ON Persona.Id_Localidad = Localidad.Id_Localidad " +
                "Left JOIN Provincia ON Localidad.Id_Provincia = Provincia.Id_Provincia " +
                "WHERE 1=1 ";

            List<SqlParameter> parametros = new List<SqlParameter>();

            if (!string.IsNullOrEmpty(texto))
            {
                consulta += " AND (Persona.Nombre LIKE @texto OR Persona.Apellido LIKE @texto OR Persona.DNI LIKE @texto)";
                parametros.Add(new SqlParameter("@texto", "%" + texto + "%"));
            }

            if (!string.IsNullOrEmpty(sexo))
            {
                consulta += " AND Persona.Sexo = @sexo";
                parametros.Add(new SqlParameter("@sexo", sexo));
            }

            if (!string.IsNullOrEmpty(estado))
            {
                bool activo = estado == "1";

                consulta += " AND Paciente.Activo = @activo";
                parametros.Add(new SqlParameter("@activo", activo));
            }

            return accesoDatos.ObtenerTablaParametros(consulta, "Paciente", parametros.ToArray());
        }

        public DataTable getTablaPacientes()
        {
            DataTable tabla = accesoDatos.ObtenerTabla(
                "SELECT Paciente.*, Persona.*, " +
                "Localidad.Nombre AS Localidad, " +
                "Provincia.Nombre AS Provincia, " +
                "Localidad.Id_Provincia AS Id_Provincia " +
                "FROM Paciente " +
                "INNER JOIN Persona ON Paciente.Id_Persona = Persona.Id_Persona " +
                "INNER JOIN Localidad ON Persona.Id_Localidad = Localidad.Id_Localidad " +
                "INNER JOIN Provincia ON Localidad.Id_Provincia = Provincia.Id_Provincia",
                "Paciente"
            );
            return tabla;
        }
    }
}
