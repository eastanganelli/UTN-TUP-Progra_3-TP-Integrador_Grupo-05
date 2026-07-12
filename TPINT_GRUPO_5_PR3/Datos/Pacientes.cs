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
            string consulta = @"SELECT * FROM vw_Pacientes WHERE id_paciente = @idPaciente";

            SqlParameter[] parametros =
           { new SqlParameter("@idPaciente", idPaciente) };

            DataRow fila = accesoDatos.ObtenerFila(
                consulta,
                "Paciente",
                parametros
            );

            if (fila == null)
                return null;

            Paciente paciente = new Paciente();

            paciente.IdPaciente = Convert.ToInt32(fila["id_paciente"]);
            paciente.IDPersona = Convert.ToInt32(fila["id_persona"]);

            paciente.Nombre = fila["Nombre"].ToString();
            paciente.Apellido = fila["Apellido"].ToString();
            paciente.FechaNacimiento = Convert.ToDateTime(fila["FechaNacimiento"]);
            paciente.Sexo = Convert.ToChar(fila["Sexo"]);
            paciente.Nacionalidad = fila["Nacionalidad"].ToString();
            paciente.DNI = fila["DNI"].ToString();
            paciente.Email = fila["Email"].ToString();
            paciente.Telefono = fila["Telefono"].ToString();
            paciente.Direccion = fila["Direccion"].ToString();
            paciente.IDLocalidad = Convert.ToInt32(fila["Id_Localidad"]);
            paciente.IDProvincia = Convert.ToInt32(fila["ID_Provincia"]);
            paciente.Estado = Convert.ToBoolean(fila["Activo"]);

            return paciente;
        }

        public int CambiarEstadoPaciente(int idPaciente, bool nuevoEstado)
        {
            SqlCommand cmd = new SqlCommand();

            cmd.Parameters.AddWithValue("@IdPaciente", idPaciente);
            cmd.Parameters.AddWithValue("@Activo", nuevoEstado);

            return accesoDatos.EjecutarProcedimientoAlmacenado(cmd,"sp_ActualizarEstadoPaciente");
        }

        public string DarDeBajaPaciente(int id_paciente)
        {
            SqlParameter pMsg = new SqlParameter("@mensaje", SqlDbType.NVarChar, 200) { Direction = ParameterDirection.Output };
            accesoDatos.EjecutarProcedimientoAlmacenado("sp_Paciente_Baja", new SqlParameter[] {
                new SqlParameter("@id_paciente", id_paciente),
                pMsg
            });
            return pMsg.Value?.ToString() ?? string.Empty;
        }

        public string ActivarPaciente(int id_paciente)
        {
            SqlParameter pMsg = new SqlParameter("@mensaje", SqlDbType.NVarChar, 200) { Direction = ParameterDirection.Output };
            accesoDatos.EjecutarProcedimientoAlmacenado("sp_Paciente_Activar", new SqlParameter[] {
                new SqlParameter("@id_paciente", id_paciente),
                pMsg
            });
            return pMsg.Value?.ToString() ?? string.Empty;
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

        public int ModificarPaciente(Paciente paciente)
        {
            SqlCommand cmd = new SqlCommand();
            PrepararParametros(paciente, cmd);
            cmd.Parameters.AddWithValue("@id_paciente", paciente.IdPaciente);
            return accesoDatos.EjecutarProcedimientoAlmacenado(cmd, "sp_Paciente_Modificar");
        }

        public int AgregarPaciente(Paciente paciente)
        {
            SqlCommand cmd = new SqlCommand();
            PrepararParametros(paciente, cmd);
            cmd.Parameters.AddWithValue("@dni", paciente.DNI);
            return accesoDatos.EjecutarProcedimientoAlmacenado(cmd, "sp_Paciente_Alta");
        }

        public void PrepararParametros(Paciente paciente, SqlCommand cmd)
        {
            cmd.Parameters.AddWithValue("@nombre", paciente.Nombre);
            cmd.Parameters.AddWithValue("@apellido", paciente.Apellido);
            cmd.Parameters.AddWithValue("@fecha_nacimiento", paciente.FechaNacimiento);
            cmd.Parameters.AddWithValue("@sexo", paciente.Sexo);
            cmd.Parameters.AddWithValue("@nacionalidad", paciente.Nacionalidad);
            cmd.Parameters.AddWithValue("@email", paciente.Email);
            cmd.Parameters.AddWithValue("@telefono", paciente.Telefono);
            cmd.Parameters.AddWithValue("@direccion", paciente.Direccion);
            cmd.Parameters.AddWithValue("@id_localidad", paciente.IDLocalidad);
            
        }

        public DataTable ObtenerPacientesActivos()
        {
            string consulta = @"
                SELECT id_paciente,
                       apellido + ', ' + nombre AS nombre
                FROM vw_Pacientes_Activos
                ORDER BY apellido, nombre";
            return accesoDatos.ObtenerTabla(consulta, "pacientes");
        }
    }
}
