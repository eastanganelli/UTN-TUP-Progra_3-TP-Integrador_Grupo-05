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

            DataTable tabla = DatosPaciente.BuscarPacientes(texto, sexo, estado);
            return tabla;

        }

        public DataTable getTabla()
        {
            Pacientes pac = new Pacientes();
            return pac.getTablaPacientes();
        }

        public Paciente ObtenerPacientePorId(int idPaciente)
        {
            Pacientes pacientes = new Pacientes();
            Paciente pac = pacientes.ObtenerPacientePorId(idPaciente);
            return pac;
        }

        public bool ObtenerEstadoPaciente(int idPaciente)
        {
            Paciente paciente = ObtenerPacientePorId(idPaciente);
            if (paciente != null)
            {
                return paciente.Estado;
            }
            else
            {
                throw new Exception("No se encontró el paciente con el ID proporcionado.");
            }

        }

        public void CambiarEstado(int idPaciente, bool nuevoEstado)
        {
            Pacientes pacientes = new Pacientes();
            int filasAfectadas = pacientes.CambiarEstadoPaciente(idPaciente, nuevoEstado);
            if (filasAfectadas == 0)
            {
                throw new Exception("No se pudo cambiar el estado del paciente. Verifique el ID proporcionado.");
            }
        }
    }
}
