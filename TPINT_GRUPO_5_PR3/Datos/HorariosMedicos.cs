using System.Data;

namespace Datos {
    public class HorariosMedicos {
        private AccesoDatos accesoDatos = new AccesoDatos();
        public DataTable ObtenerHorariosDeMedico(int id_medico) {
            string consulta = $"SELECT * FROM vw_HorariosMedicos WHERE id_medico = {id_medico}";
            return accesoDatos.ObtenerTabla(consulta, "HorariosMedicos");
        }
    }
}