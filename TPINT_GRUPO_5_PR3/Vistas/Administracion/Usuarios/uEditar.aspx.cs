using Entidades;
using Negocio;
using System;
using System.Data;
using System.Web.UI.WebControls;

namespace Vistas.Administracion.Usuarios {
    public partial class EditarUsuario : System.Web.UI.Page {
        private UsuariosNegocio negocio = new UsuariosNegocio();
        private MedicosNegocio negMedicos = new MedicosNegocio();
        private int idUsuario = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                AccesoPagina acceso = new AccesoPagina();
                acceso.VerificarAcceso("admin");
                Usuario usuario = (Usuario)Session["zezion"];

                idUsuario = Convert.ToInt32(Request.QueryString["id"]);
                ViewState["idUsuario"] = idUsuario;

                if (!IsPostBack)
                {
                    CargarMedicos();
                    CargarUsuario(idUsuario);
                }
                else
                {
                    idUsuario = (int)ViewState["idUsuario"];
                }
            }
            catch (NoAccesoPagina ex)
            {
                Response.Redirect("/Login.aspx");
            }

            
        }

        private void CargarMedicos()
        {
            ddlMedico.Items.Clear();
            ddlMedico.Items.Add(new ListItem("— Sin médico asociado —", ""));
            DataTable dt = negMedicos.ObtenerMedicos();
            foreach (System.Data.DataRow row in dt.Rows)
                ddlMedico.Items.Add(new ListItem(
                    row["nombre"].ToString(),
                    row["id_medico"].ToString()));
        }

        private void CargarUsuario(int id)
        {
            Usuario u = negocio.ObtenerUsuario(id);

          
            lblUsernameBanner.Text = u.NombreUsuario;
            lblIdUsuario.Text = u.IDUsuario.ToString();
            lblRolActual.Text = u.Rol == "admin" ? "Administrador" : "Médico";

         
            txtUsername.Text = u.NombreUsuario;
            ddlRol.SelectedValue = u.Rol;
            ddlActivo.SelectedValue = u.Estado ? "1" : "0";

            if (u.IDMedico.HasValue)
            {
                ListItem item = ddlMedico.Items.FindByValue(u.IDMedico.ToString());
                if (item != null) ddlMedico.SelectedValue = u.IDMedico.ToString();
            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                Usuario u = negocio.ObtenerUsuario(idUsuario);
                u.Rol = ddlRol.SelectedValue;
                u.Estado = ddlActivo.SelectedValue == "1";
                u.IDMedico = string.IsNullOrWhiteSpace(ddlMedico.SelectedValue)
                             ? (int?)null
                             : Convert.ToInt32(ddlMedico.SelectedValue);

                
                if (!string.IsNullOrWhiteSpace(txtPassword.Text))
                    u.Contrasenya = txtPassword.Text.Trim();

                negocio.ModificarUsuario(u);
                Response.Redirect("uInicio.aspx");
            }
            catch (Exception ex)
            {
                lblMensaje.Text = "Error: " + ex.Message;
                lblMensaje.Visible = true;
                lblMensaje.CssClass = "alerta-error";
            }
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("uInicio.aspx");
        }
    }
}