using System;
using System.Collections.Generic;
using System.Data;
using System.Runtime.Remoting.Messaging;
using System.Text;

namespace Datos {
    public class HorariosMedicos {
        private AccesoDatos accesoDatos = new AccesoDatos();
        public DataTable ObtenerHorariosDeMedico(int id_medico) {
            string consulta = $"SELECT * FROM vw_HorariosMedicos WHERE id_medico = {id_medico}";
            return accesoDatos.ObtenerTabla(consulta, "HorariosMedicos");
        }
    }
}