using Entidades;
using Negocio;
using System;
using System.Data;
using System.Web.UI.WebControls;

namespace Vistas.Administracion.Usuarios {
    public partial class Usuarios : System.Web.UI.Page
    {
        private UsuariosNegocio negocio = new UsuariosNegocio();
        private const int CantPagina = 10;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                AccesoPagina acceso = new AccesoPagina();
                acceso.VerificarAcceso("admin");
                Usuario usuario = (Usuario)Session["zezion"];
                if (!IsPostBack)
                {
                    CargarGrilla(1);
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

        private void CargarGrilla(int pagina)
        {
            string buscar = txtBuscar.Text.Trim();
            string rol = ddlRol.SelectedValue;
            string estado = ddlEstado.SelectedValue;

            DataTable dt = negocio.ObtenerUsuariosPaginados(pagina, CantPagina, buscar, rol, estado);
            int totalUsuarios = negocio.ObtenerCantidadDeUsuarios(buscar, rol, estado);
            int totalPaginas = negocio.ObtenerCantidadDePaginas(CantPagina, buscar, rol, estado);

            rptUsuarios.DataSource = dt;
            rptUsuarios.DataBind();

            lblTotalUsuarios.Text = totalUsuarios.ToString();
            lblPaginaInfo.Text = $"Página {pagina} de {(totalPaginas == 0 ? 1 : totalPaginas)}";

            ddlPagina.Items.Clear();
            for (int i = 1; i <= totalPaginas; i++)
                ddlPagina.Items.Add(new ListItem($"Pág. {i}", i.ToString()));
            if (ddlPagina.Items.FindByValue(pagina.ToString()) != null)
                ddlPagina.SelectedValue = pagina.ToString();

            lbtnAnterior.Enabled = pagina > 1;
            lbtnSiguiente.Enabled = pagina < totalPaginas;

            ViewState["PaginaActual"] = pagina;
        }

        protected void btnNuevoUsuario_Click(object sender, EventArgs e) 
        { 
            Response.Redirect("uNuevo.aspx"); 
        }

        protected void btnBuscar_Click(object sender, EventArgs e) 
        {
            CargarGrilla(1);
        }
        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            txtBuscar.Text = "";
            ddlRol.SelectedIndex = 0;
            ddlEstado.SelectedIndex = 0;
            CargarGrilla(1);
        }
        protected void lbtnAnterior_Click(object sender, EventArgs e)
        {
            int pagina = (int)ViewState["PaginaActual"];
            if (pagina > 1) CargarGrilla(pagina - 1);
        }
        protected void lbtnSiguiente_Click(object sender, EventArgs e) 
        {
            int pagina = (int)ViewState["PaginaActual"];
            int totalPaginas = negocio.ObtenerCantidadDePaginas(CantPagina,
                                   txtBuscar.Text.Trim(), ddlRol.SelectedValue, ddlEstado.SelectedValue);
            if (pagina < totalPaginas) CargarGrilla(pagina + 1);
        }
        protected void ddlPagina_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (int.TryParse(ddlPagina.SelectedValue, out int pagina))
                CargarGrilla(pagina);
        }
        protected void rptUsuarios_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "ToggleEstado")
            {
                try
                {
                    negocio.ToggleEstadoUsuario(Convert.ToInt32(e.CommandArgument));
                    CargarGrilla((int)ViewState["PaginaActual"]);
                }
                catch (Exception ex)
                {
                    throw new Exception("Error al cambiar el estado del usuario: " + ex.Message);
                }
            }
        }
    }
}
