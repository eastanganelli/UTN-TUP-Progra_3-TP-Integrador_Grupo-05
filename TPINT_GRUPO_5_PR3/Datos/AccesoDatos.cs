using System;
using System.Data;
using System.Data.SqlClient;

namespace Datos
{
    internal class AccesoDatos
    {
        private static string rutaBaseDeDatos = $"Data Source={Datos.Properties.Resources.DB_Host};Initial Catalog={Datos.Properties.Resources.DB_Schema};Persist Security Info=True;User ID={Datos.Properties.Resources.DB_Usuario};Password={Datos.Properties.Resources.DB_Password};Pooling=False;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate={Datos.Properties.Resources.DB_Certificado_De_Confianza};";
        public AccesoDatos() { }

        public SqlConnection ObtenerConexion()
        {
            SqlConnection sqlConnection = new SqlConnection(rutaBaseDeDatos);
            try
            {
                sqlConnection.Open();
                return sqlConnection;
            }
            catch (Exception ex)
            {
                throw new Exception("No se pudo establecer la conexión a la base de datos. Detalles: " + ex.Message);
            }
        }
        public int EjecutarProcedimientoAlmacenado(SqlCommand Comando, String NombreSP)
        {
            SqlConnection Conexion = ObtenerConexion();
            Comando.Connection = Conexion;
            Comando.CommandType = CommandType.StoredProcedure;
            Comando.CommandText = NombreSP;
            int FilasCambiadas = Comando.ExecuteNonQuery();
            Conexion.Close();
            return FilasCambiadas;
        }
        public int EjecutarProcedimientoAlmacenado(string nombreSP, SqlParameter[] parametros = null)
        {
            using (SqlConnection conexion = ObtenerConexion())
            using (SqlCommand cmd = new SqlCommand(nombreSP, conexion))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                if (parametros != null) cmd.Parameters.AddRange(parametros);
                int filas = cmd.ExecuteNonQuery();
                return filas;
            }
        }
        public DataTable ObtenerTabla(string sqlQuery, string tableName)
        {
            if (string.IsNullOrWhiteSpace(sqlQuery)) throw new ArgumentException("La consulta SQL no puede estar vacía.", nameof(sqlQuery));
            if (string.IsNullOrWhiteSpace(tableName)) throw new ArgumentException("El nombre de la tabla no puede estar vacío.", nameof(tableName));

            SqlConnection Conexion = ObtenerConexion();
            SqlDataAdapter adaptador = new SqlDataAdapter(sqlQuery, Conexion);
            DataSet setDatos = new DataSet();
            adaptador.Fill(setDatos, tableName);
            Conexion.Close();
            return setDatos.Tables[tableName];
        }

        public DataTable ObtenerTablaParametros(string sqlQuery, string tableName, SqlParameter[] parametros)
        {
            if (string.IsNullOrWhiteSpace(sqlQuery)) throw new ArgumentException("La consulta SQL no puede estar vacía.", nameof(sqlQuery));
            if (string.IsNullOrWhiteSpace(tableName)) throw new ArgumentException("El nombre de la tabla no puede estar vacío.", nameof(tableName));

            SqlConnection conexion = new SqlConnection(rutaBaseDeDatos);
            SqlCommand cmd = new SqlCommand(sqlQuery, conexion);
            if (parametros != null)
                cmd.Parameters.AddRange(parametros);
            SqlDataAdapter adaptador = new SqlDataAdapter(cmd);
            DataTable tabla = new DataTable(tableName);
            adaptador.Fill(tabla);
            conexion.Close();
            return tabla;
        }

        public int ObtenerEscalar(string sqlQuery, SqlParameter[] parametros = null)
        {
            using (SqlConnection conn = ObtenerConexion())
            {
                using (SqlCommand cmd = new SqlCommand(sqlQuery, conn))
                {
                    if (parametros != null) cmd.Parameters.AddRange(parametros);
                    return Convert.ToInt32(cmd.ExecuteScalar());
                }
            }
        }
        public DataRow ObtenerFila(string sqlQuery, string tableName, SqlParameter[] parametros = null)
        {
            DataTable resultado = ObtenerTablaParametros(sqlQuery, tableName, parametros);
            return resultado.Rows.Count > 0 ? resultado.Rows[0] : null;
        }
        public int EjecutarConsulta(string consulta)
        {
            using (SqlConnection conexion = ObtenerConexion())
            {
                using (SqlCommand comando = new SqlCommand(consulta, conexion))
                {
                    return comando.ExecuteNonQuery();
                }
            }
        }


        public int EjecutarConsultaParametros(string consulta, SqlParameter[] parametros = null)
        {
            using (SqlConnection conn = ObtenerConexion())
            using (SqlCommand cmd = new SqlCommand(consulta, conn))
            {
                cmd.CommandType = CommandType.Text;
                if (parametros != null) cmd.Parameters.AddRange(parametros);
                return cmd.ExecuteNonQuery();
            }
        }





    }
}