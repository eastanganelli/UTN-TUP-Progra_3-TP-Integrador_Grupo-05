using Entidades;
using Negocio;
using System;

namespace Vistas.Administracion.Usuarios
{
    public partial class VerUsuario : System.Web.UI.Page
    {
        private UsuariosNegocio negocio = new UsuariosNegocio();
        private MedicosNegocio negMedicos = new MedicosNegocio();

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                AccesoPagina acceso = new AccesoPagina();
                acceso.VerificarAcceso("admin");
                Usuario usuario = (Usuario)Session["zezion"];

                if (!IsPostBack)
                    CargarUsuario(Convert.ToInt32(Request.QueryString["id"]));
            }
            catch (NoAccesoPagina ex)
            {
                Response.Redirect("/Login.aspx");
            }
        }

        private void CargarUsuario(int id)
        {
            try
            {
                Usuario u = negocio.ObtenerUsuario(id);

                // Cabecera
                lblIniciales.Text = u.NombreUsuario.Substring(0, 1).ToUpper();
                lblUsername.Text = u.NombreUsuario;
                lblRolBadge.Text = u.Rol == "admin" ? "Administrador" : "Médico";
                lblEstado.Text = u.Estado ? "Activo" : "Inactivo";
                lblEstado.CssClass = u.Estado ? "badge badge-active" : "badge badge-inactive";

                // Detalle
                lblUsernameDetalle.Text = u.NombreUsuario;
                lblRolDetalle.Text = u.Rol == "admin" ? "Administrador" : "Médico";
                lblEstadoDetalle.Text = u.Estado ? "Activo" : "Inactivo";
                lblIdUsuario.Text = u.IDUsuario.ToString();

                // Médico asociado
                if (u.IDMedico.HasValue)
                {
                    Medico m = negMedicos.ObtenerMedico(u.IDMedico.Value);
                    lblNombreMedico.Text = m.Nombre + " " + m.Apellido;
                    lblLegajoMedico.Text = m.Legajo;
                    lblEspecialidadMedico.Text = m.Especialidad;
                    pnlMedico.Visible = true;
                    pnlSinMedico.Visible = false;
                }
                else
                {
                    pnlMedico.Visible = false;
                    pnlSinMedico.Visible = true;
                }

                lnkEditar.NavigateUrl = $"uEditar.aspx?id={u.IDUsuario}";
            }
            catch
            {
                Response.Redirect("uInicio.aspx");
            }
        }
    }
}