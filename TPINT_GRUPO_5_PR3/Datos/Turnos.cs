using System.Data;

namespace Datos {
    public class Turnos {
        private AccesoDatos accesoDatos = new AccesoDatos();
        public DataTable ObtenerUltimosTurnos(int id_medico, int top_limite) {
            string consulta = $"SELECT TOP ({top_limite}) * FROM vw_Turnos WHERE id_medico = {id_medico} ORDER BY FechaHora DESC";
            return accesoDatos.ObtenerTabla(consulta, "ultimos_turnos");
        }
    }
}