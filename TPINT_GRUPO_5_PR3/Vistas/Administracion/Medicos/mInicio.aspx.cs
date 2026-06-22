using System;
using System.Data;
using System.Web.UI.WebControls;
using Negocio;

namespace Vistas.Administracion.Medicos
{
    public partial class Medicos : System.Web.UI.Page
    {
        private const int POR_PAGINA = 10;
        protected int PaginaActual
        {
            get => ViewState["PaginaActual"] != null ? (int)ViewState["PaginaActual"] : 1;
            set => ViewState["PaginaActual"] = value;
        }
        protected int TotalPaginas
        {
            get => ViewState["TotalPaginas"] != null ? (int)ViewState["TotalPaginas"] : 1;
        set => ViewState["TotalPaginas"] = value;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PaginaActual = 1;
                CargarMedicos();
            }
        }

        private void CargarMedicos()
        {
            if (rptMedicos == null)
                return;

            MedicosNegocio negocio = new MedicosNegocio();

            //string busqueda     = string.IsNullOrWhiteSpace(txtBuscar.Text) ? null : txtBuscar.Text.Trim();
            //int?   idEsp        = string.IsNullOrEmpty(ddlEspecialidad.SelectedValue) ? (int?)null  : int.Parse(ddlEspecialidad.SelectedValue);
            //bool?  activo       = string.IsNullOrEmpty(ddlEstado.SelectedValue)       ? (bool?)null : ddlEstado.SelectedValue == "1";

            DataTable dt = negocio.ObtenerMedicosPaginados(PaginaActual, POR_PAGINA);

            TotalPaginas = negocio.ObtenerCantidadDePaginas(POR_PAGINA);
            if (PaginaActual > TotalPaginas) PaginaActual = TotalPaginas;

            rptMedicos.DataSource = dt;
            rptMedicos.DataBind();

            lblPaginaInfo.Text   = string.Format("Página {0} de {1}", PaginaActual, TotalPaginas);

            ddlPagina.Items.Clear();
            for (int i = 1; i <= TotalPaginas; i++)
                ddlPagina.Items.Add(new ListItem("Página " + i, i.ToString()));
            ddlPagina.SelectedValue = PaginaActual.ToString();
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            PaginaActual = 1;
            CargarMedicos();
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            txtBuscar.Text = "";
            //ddlEspecialidad.SelectedIndex = 0;
            ddlEstado.SelectedIndex       = 0;
            PaginaActual = 1;
            CargarMedicos();
        }

        protected void lbtnAnterior_Click(object sender, EventArgs e)
        {
            if (PaginaActual > 1)
            {
                PaginaActual--;
                CargarMedicos();
            }
        }

        protected void lbtnSiguiente_Click(object sender, EventArgs e)
        {
            if (PaginaActual < TotalPaginas)
            {
                PaginaActual++;
                CargarMedicos();
            }
        }

        protected void ddlPagina_SelectedIndexChanged(object sender, EventArgs e)
        {
            PaginaActual = int.Parse(ddlPagina.SelectedValue);
            CargarMedicos();
        }

        protected void rptMedicos_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Baja")
            {
                // TODO: implementar lógica de baja de médico
                CargarMedicos();
            }
        }
    }
}
