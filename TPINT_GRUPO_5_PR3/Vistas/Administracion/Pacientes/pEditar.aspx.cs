using Entidades;
using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas.Administracion.Pacientes
{
    public partial class EditarPaciente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CargarProvincias();

            if (Request.QueryString["idPaciente"] != null)
            {
                int idPaciente = int.Parse(Request.QueryString["idPaciente"]);
               // CargarPaciente(idPaciente);
            }
        }

        /*public void CargarPaciente(int idPaciente)
        {
            PacientesNegocio negocio = new PacientesNegocio();
            Paciente paciente = negocio.ObtenerPorId(idPaciente);

            
            lblNombreCompleto.Text = paciente.Nombre + " " + paciente.Apellido;
            lblDniBanner.Text = paciente.Dni;
            lblNroPaciente.Text = paciente.IdPaciente.ToString();
            lblIdPersona.Text = paciente.IdPersona.ToString();
            lblIniciales.Text = paciente.Nombre.Substring(0, 1) + paciente.Apellido.Substring(0, 1);

            
            txtDni.Text = paciente.Dni;
            txtNombre.Text = paciente.Nombre;
            txtApellido.Text = paciente.Apellido;
            txtNacionalidad.Text = paciente.Nacionalidad;
            txtDireccion.Text = paciente.Direccion;
            txtTelefono.Text = paciente.Telefono;
            txtEmail.Text = paciente.Email;

            
            txtFechaNac.Text = paciente.FechaNacimiento.ToString("yyyy-MM-dd");

            
            ddlSexo.SelectedValue = paciente.Sexo;

            
            ddlProvincia.SelectedValue = paciente.IdProvincia.ToString();

            
            CargarLocalidades(paciente.IdProvincia);

            
            ddlLocalidad.SelectedValue = paciente.IdLocalidad.ToString();
        }*/
        

        public void CargarProvincias()
        {

        }
        protected void ddlProvincia_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}