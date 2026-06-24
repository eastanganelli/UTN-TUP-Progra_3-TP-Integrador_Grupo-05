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
            if (Request.QueryString["idPaciente"] != null)
            {
                int idPaciente = int.Parse(Request.QueryString["idPaciente"]);
                CargarPaciente(idPaciente);
            }
            else
            {
                throw new Exception("No se proporcionó un ID de paciente válido en la URL.");
            }
        }

        public void CargarPaciente(int idPaciente)
        {
            PacientesNegocio negocio = new PacientesNegocio();
            Paciente paciente = negocio.ObtenerPacientePorId(idPaciente);

            
            lblNombreCompleto.Text = paciente.Nombre + " " + paciente.Apellido;
            lblDniBanner.Text = paciente.DNI;
            lblNroPaciente.Text = paciente.IdPaciente.ToString();
            lblIdPersona.Text = paciente.IDPersona.ToString();
            lblIniciales.Text = paciente.Nombre.Substring(0, 1) + paciente.Apellido.Substring(0, 1);

            
            txtDni.Text = paciente.DNI;
            txtNombre.Text = paciente.Nombre;
            txtApellido.Text = paciente.Apellido;
            txtNacionalidad.Text = paciente.Nacionalidad;
            txtDireccion.Text = paciente.Direccion;
            txtTelefono.Text = paciente.Telefono;
            txtEmail.Text = paciente.Email;

            
            txtFechaNac.Text = paciente.FechaNacimiento.ToString("yyyy-MM-dd");

            
            ddlSexo.SelectedValue = paciente.Sexo.ToString();


            CargarProvincias(paciente.NombreProvincia);

            CargarLocalidades();
            ddlLocalidad.SelectedValue = paciente.IDLocalidad.ToString();

            
        }
        

        public void CargarProvincias(string nombreProvincia)
        {
            ProvinciasNegocio pnegocio = new ProvinciasNegocio();
            ddlProvincia.DataSource = pnegocio.ObtenerProvincias();
            ddlProvincia.DataTextField = "Nombre";
            ddlProvincia.DataValueField = "IDProvincia";
            ddlProvincia.DataBind();
            ddlProvincia.SelectedValue = nombreProvincia;
        }

        public void CargarLocalidades()
        {
            LocalidadesNegocio lnegocio = new LocalidadesNegocio();
            ddlLocalidad.DataSource = lnegocio.ObtenerLocalidadesPorProvinciaNombre(nombreProvincia: ddlProvincia.SelectedItem.Text);
            ddlLocalidad.DataTextField = "Nombre";
            ddlLocalidad.DataValueField = "IDLocalidad";
            ddlLocalidad.DataBind();
        }
        protected void ddlProvincia_SelectedIndexChanged(object sender, EventArgs e)
        {
            CargarLocalidades();
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("pInicio.aspx");
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            Paciente paciente = new Paciente();
            ModificarObjeto(paciente);
            PacientesNegocio pacneg = new PacientesNegocio();
            pacneg.ModificarPaciente(paciente);
        }

        protected void ModificarObjeto(Paciente paciente)
        {
            paciente.IDPersona = int.Parse(lblIdPersona.Text);
            paciente.IdPaciente = int.Parse(lblNroPaciente.Text);
            paciente.DNI = txtDni.Text;
            paciente.Nombre = txtNombre.Text;
            paciente.Apellido = txtApellido.Text;
            paciente.Nacionalidad = txtNacionalidad.Text;
            paciente.Direccion = txtDireccion.Text;
            paciente.Telefono = txtTelefono.Text;
            paciente.Email = txtEmail.Text;
            paciente.FechaNacimiento = DateTime.Parse(txtFechaNac.Text);
            paciente.Sexo = ddlSexo.SelectedValue[0];                                                                                       
            paciente.IDLocalidad = int.Parse(ddlLocalidad.SelectedValue);
        }
    }
}