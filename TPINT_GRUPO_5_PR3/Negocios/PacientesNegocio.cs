using System;
using System.Collections.Generic;
using System.Data;
using System.Text;
using Datos;
using Entidades;

namespace Negocio
{
    public class PacientesNegocio
    {
        public DataTable BuscarPacientes(string texto, string sexo, string estado) 
        {
            Datos.Pacientes DatosPaciente = new Datos.Pacientes();

            DataTable tabla =  DatosPaciente.BuscarPacientes(texto, sexo, estado);
            return tabla;

        }

        public DataTable getTabla()
        {
            Pacientes pac = new Pacientes();
            return pac.getTablaPacientes();
        }

    }
}
