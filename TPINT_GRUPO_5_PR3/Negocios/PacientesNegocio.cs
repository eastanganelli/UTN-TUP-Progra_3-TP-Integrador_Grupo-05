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
        private Pacientes datosPacientes = new Pacientes();
        public DataTable BuscarPacientes(string texto, string sexo, string estado)
        {
            DataTable tabla = datosPacientes.BuscarPacientes(texto, sexo, estado);
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

        public void ToggleEstadoPaciente(int id_paciente)
        {
            try
            {
                Paciente p = datosPacientes.ObtenerPacientePorId(id_paciente);
                bool nuevoEstado = !p.Estado;
                string mensaje = nuevoEstado
                    ? datosPacientes.ActivarPaciente(id_paciente)
                    : datosPacientes.DarDeBajaPaciente(id_paciente);
                if (!string.IsNullOrEmpty(mensaje) &&
                    !mensaje.Contains("correctamente"))
                    throw new Exception(mensaje);
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message.StartsWith("Error") ? ex.Message : "Error al cambiar el estado del paciente: " + ex.Message);
            }
        }
        public void ModificarPaciente(Paciente paciente)
        {
            Pacientes pacientes = new Pacientes();
            int filasAfectadas = pacientes.ModificarPaciente(paciente);
            if (filasAfectadas == 0)
            {
                throw new Exception("No se pudo modificar el paciente. Verifique los datos proporcionados.");
            }
        }

        public int AgregarPaciente(Paciente paciente)
        {
            Pacientes pacientes = new Pacientes();
            int idPaciente = pacientes.AgregarPaciente(paciente);
           
            return idPaciente;
        }

        public DataTable ObtenerPacientesActivos()
        {
            Pacientes pacientes = new Pacientes();
            return pacientes.ObtenerPacientesActivos();
        }
    }
}
