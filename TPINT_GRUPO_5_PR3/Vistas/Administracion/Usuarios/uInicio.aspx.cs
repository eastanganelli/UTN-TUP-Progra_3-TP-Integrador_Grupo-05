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
            if (!IsPostBack)
            {
                CargarGrilla(1);
            }
        }

        private void CargarGrilla(int pagina)
        {
            string buscar = txtBuscar.Text.Trim();
            string rol = ddlRol.SelectedValue;
            string estado = ddlEstado.SelectedValue;

            DataTable dt = negocio.ObtenerUsuariosPaginados(pagina, CantPagina);
            int totalUsaurios = negocio.ObtenerCantidadDeUsuarios();
            int totalPaginas = negocio.ObtenerCantidadDePaginas(CantPagina);

            rptUsuarios.DataSource = dt;
            rptUsuarios.DataBind();

            lblTotalUsuarios.Text = totalUsaurios.ToString();
            lblPaginaInfo.Text = $"Página {pagina} de {(totalPaginas == 0 ? 1 : totalPaginas)}";

            ddlPagina.Items.Clear();
            for (int i = 1; i <= totalPaginas; i++)
            {
                ddlPagina.Items.Add(new ListItem($"Pág. {i}", i.ToString()));
            }
            if (ddlPagina.Items.FindByValue(pagina.ToString()) != null)
            {
                ddlPagina.SelectedValue = pagina.ToString();
            }

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
            int totalPaginas = negocio.ObtenerCantidadDePaginas(CantPagina);
            if (pagina < totalPaginas) CargarGrilla(pagina + 1);
        }
        protected void ddlPagina_SelectedIndexChanged(object sender, EventArgs e) { }
        protected void rptUsuarios_ItemCommand(object source, RepeaterCommandEventArgs e) 
        {
            if (e.CommandName == "Baja")
            {
                try
                {
                    negocio.DarDeBajaUsuario(Convert.ToInt32(e.CommandArgument));
                    CargarGrilla((int)ViewState["PaginaActual"]);
                }
                catch (Exception ex)
                {
                    throw new Exception("Error al dar de baja el usuario: " + ex.Message);
                }
            }
        }
    }
}
