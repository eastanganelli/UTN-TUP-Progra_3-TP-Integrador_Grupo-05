using Entidades;
using Negocio;
using System;
using System.Web.UI.WebControls;

namespace Vistas.Administracion.Usuarios {
    public partial class NuevoUsuario : System.Web.UI.Page {
        private UsuariosNegocio negocio = new UsuariosNegocio();
        private MedicosNegocio negMedicos = new MedicosNegocio();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                CargarMedicos();
        }

        private void CargarMedicos()
        {
            ddlMedico.Items.Clear();
            ddlMedico.Items.Add(new ListItem("— Sin médico asociado —", ""));
            System.Data.DataTable dt = negMedicos.ObtenerMedicos();
            foreach (System.Data.DataRow row in dt.Rows)
                ddlMedico.Items.Add(new ListItem(
                    row["nombre"].ToString(),
                    row["id_medico"].ToString()));
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                Usuario u = new Usuario();
                u.NombreUsuario = txtUsername.Text.Trim();
                u.Contrasenya = txtPassword.Text.Trim();
                u.Rol = ddlRol.SelectedValue;
                u.IDMedico = string.IsNullOrWhiteSpace(ddlMedico.SelectedValue)
                                  ? (int?)null
                                  : Convert.ToInt32(ddlMedico.SelectedValue);
                u.Estado = true;

                negocio.AgregarUsuario(u);
                Response.Redirect("uInicio.aspx");
            }
            catch (Exception ex)
            {
                lblMensaje.Text = "Error: " + ex.Message;
                lblMensaje.Visible = true;
                lblMensaje.CssClass = "alerta-error";
            }
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            txtUsername.Text = "";
            ddlRol.SelectedIndex = 0;
            ddlMedico.SelectedIndex = 0;
            lblMensaje.Visible = false;
        }
    }
}