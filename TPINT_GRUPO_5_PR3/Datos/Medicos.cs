using Entidades;
using System;
using System.Data;
using System.Data.SqlClient;

namespace Datos {
    public class Medicos {
        private AccesoDatos conexion = new AccesoDatos();
        public Medico ObtenerMedico(int id_Medico)
        {
            string consulta = $"SELECT * FROM Medico WHERE id_medico = {id_Medico}";
            DataTable resultado = conexion.ObtenerTabla(consulta, "Medico"); // Review: ObtenerTabla signature is compatible (no-op)

            if (resultado.Rows.Count == 0) {
                throw new Exception($"El Medico con ID [{id_Medico}] fue no encontrado!");
            }

            Medico Medico = null;
            if (resultado.Rows.Count > 0) {
                Medico = new Medico {
                    IDMedico = Convert.ToInt32(resultado.Rows[0]["id_medico"]),
                    IDPersona = Convert.ToInt32(resultado.Rows[0]["id_persona"]),
                    Legajo = resultado.Rows[0]["legajo"].ToString(),
                    IDEspecialidad = Convert.ToInt32(resultado.Rows[0]["id_especialidad"]),
                    Estado = Convert.ToBoolean(resultado.Rows[0]["activo"])
                };
            }
            return Medico;
        }
        public DataTable ObtenerMedicos() {
            string consulta = "SELECT * FROM Medico";
            return conexion.ObtenerTabla(consulta, "Medico");
        }
        public int ObtenerCantidadDeMedicos() {
            string consulta = "SELECT COUNT(*) FROM Medico";
            DataTable resultado = conexion.ObtenerTabla(consulta, "Medico");
            return Convert.ToInt32(resultado.Rows[0][0]);
        }
        public int ObtenerCantidadDePaginas(int cantidad_pagina = 10) {
            string consulta = "SELECT COUNT(*) FROM Medico";
            DataTable resultado = conexion.ObtenerTabla(consulta, "Medico");
            int cantidad_Medicos = Convert.ToInt32(resultado.Rows[0][0]);
            return (int)Math.Ceiling((double)cantidad_Medicos / cantidad_pagina);
        }
        public DataTable ObtenerMedicosPaginado(int nro_pagina, int cantidad_pagina = 10) {
            string consulta = $"SELECT * FROM vw_Medicos ORDER BY id_medico ASC OFFSET ({nro_pagina} - 1) * {cantidad_pagina} ROWS FETCH NEXT {cantidad_pagina} ROWS ONLY;";
            return conexion.ObtenerTabla(consulta, "Medico");
        }
    }
}