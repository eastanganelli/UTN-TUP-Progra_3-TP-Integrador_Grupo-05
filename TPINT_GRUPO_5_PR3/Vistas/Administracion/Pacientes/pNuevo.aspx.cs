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
    public partial class pNuevo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                AccesoPagina acceso = new AccesoPagina();
                acceso.VerificarAcceso("admin");
                Usuario usuario = (Usuario)Session["zezion"];

                if (!IsPostBack)
                {
                    CargarProvincias();
                }
                
            }
            catch (NoAccesoPagina)
            {
                Response.Redirect("/Login.aspx");
            }
            catch (SinPermisoPagina)
            {
                Response.Redirect("/Administracion/Inicio.aspx");
            }
        }

        protected void CargarProvincias()
        {
            ProvinciasNegocio pnegocio = new ProvinciasNegocio();
            ddlProvincia.DataSource = pnegocio.ObtenerProvincias();
            ddlProvincia.DataTextField = "nombre";
            ddlProvincia.DataValueField = "id_provincia";
            ddlProvincia.DataBind();
           

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            Paciente paciente = new Paciente();
            PacientesNegocio negocio = new PacientesNegocio();

            paciente.Nombre = txtNombre.Text.ToString();
            paciente.Apellido = txtApellido.Text.ToString();
            paciente.DNI = txtDni.Text;
            paciente.FechaNacimiento = Convert.ToDateTime(txtFechaNac.Text);
            paciente.Sexo = Convert.ToChar(ddlSexo.SelectedValue);
            paciente.Nacionalidad = txtNacionalidad.Text.ToString();
            paciente.Direccion = txtDireccion.Text.ToString();
            paciente.IDLocalidad = Convert.ToInt32(ddlLocalidad.SelectedValue);
            paciente.Email = txtEmail.Text.ToString();
            paciente.Telefono = txtTelefono.Text.ToString();

            int resultado = negocio.AgregarPaciente(paciente);

            if (resultado == 0)
            {
                lblMensaje.Text = "Error al guardar el paciente.";
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                lblMensaje.Visible = true;

            }
            else
            {
                lblMensaje.Text = "Paciente guardado correctamente.";
                lblMensaje.ForeColor = System.Drawing.Color.Green;
                lblMensaje.Visible = true;

            }
        }

        protected void ddlProvincia_SelectedIndexChanged(object sender, EventArgs e)
        {
            LocalidadesNegocio lnegocio = new LocalidadesNegocio();
            ddlLocalidad.DataSource = lnegocio.ObtenerLocalidadesPorProvincia(Convert.ToInt32(ddlProvincia.SelectedValue));
            ddlLocalidad.DataTextField = "nombre";
            ddlLocalidad.DataValueField = "id_localidad";
            ddlLocalidad.DataBind();
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            txtApellido.Text = string.Empty;
            txtDni.Text = string.Empty;
            txtNombre.Text = string.Empty;
            txtFechaNac.Text = string.Empty;
            txtNacionalidad.Text = string.Empty;
            txtDireccion.Text = string.Empty;
            ddlProvincia.SelectedIndex = 0;
            ddlLocalidad.SelectedIndex = 0; ddlLocalidad.DataBind();
            txtTelefono.Text = string.Empty;
            txtEmail.Text = string.Empty;
            lblMensaje.Visible = false;
        }
    }
}