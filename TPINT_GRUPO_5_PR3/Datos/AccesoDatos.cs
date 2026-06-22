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
        public DataTable ObtenerTabla(string nombreTabla, string consulta) {
            SqlConnection conexion = new SqlConnection(rutaBaseDeDatos);
            conexion.Open();
            SqlDataAdapter adaptador = new SqlDataAdapter(consulta, conexion);
            DataSet setDatos = new DataSet();
            adaptador.Fill(setDatos, nombreTabla);
            conexion.Close();
            return setDatos.Tables[nombreTabla];
        }
        public DataTable ObtenerTablaParametros(string consulta, string nombreTabla, SqlParameter[] parametros)
        {
            using (SqlConnection conexion = new SqlConnection(rutaBaseDeDatos))
            {
                conexion.Open();

                SqlCommand cmd = new SqlCommand(consulta, conexion);

                if (parametros != null)
                    cmd.Parameters.AddRange(parametros);

                SqlDataAdapter adaptador = new SqlDataAdapter(cmd);

                DataTable tabla = new DataTable();
                adaptador.Fill(tabla);

                return tabla;
            }
        }

        public int EjecutarConsulta(string consulta) {
            SqlConnection conexion = new SqlConnection(rutaBaseDeDatos);
            conexion.Open();
            SqlCommand comando = new SqlCommand(consulta, conexion);
            int resultado = comando.ExecuteNonQuery();
            conexion.Close();
            return resultado;
        }
    }
}