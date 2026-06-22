using System;
using System.Data;
using System.Data.SqlClient;

namespace Datos {
    internal class AccesoDatos {
        private static string rutaBaseDeDatos = $"Data Source={Datos.Properties.Resources.DB_Host};Initial Catalog={Datos.Properties.Resources.DB_Schema};Persist Security Info=True;User ID={Datos.Properties.Resources.DB_Usuario};Password={Datos.Properties.Resources.DB_Password};Pooling=False;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate={Datos.Properties.Resources.DB_Certificado_De_Confianza};";
        public AccesoDatos() { }

        public SqlConnection ObtenerConexion() {
            SqlConnection sqlConnection = new SqlConnection(rutaBaseDeDatos);
            try {
                sqlConnection.Open();
                return sqlConnection;
            }
            catch (Exception ex) {
                throw new Exception("No se pudo establecer la conexión a la base de datos. Detalles: " + ex.Message);
            }
        }
        public int EjecutarProcedimientoAlmacenado(SqlCommand Comando, String NombreSP) {
            int FilasCambiadas;
            SqlConnection Conexion = ObtenerConexion();
            SqlCommand cmd = new SqlCommand();
            cmd = Comando;
            cmd.Connection = Conexion;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = NombreSP;
            FilasCambiadas = cmd.ExecuteNonQuery();
            Conexion.Close();
            return FilasCambiadas;
        }
        
        public DataTable ObtenerTabla(string sqlQuery, string tableName) {
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

        public int EjecutarConsulta(string consulta) {
            SqlConnection conexion = new SqlConnection(rutaBaseDeDatos);
            SqlCommand comando = new SqlCommand(consulta, conexion);
            int resultado = comando.ExecuteNonQuery();
            conexion.Close();
            return resultado;
        }
    }
}