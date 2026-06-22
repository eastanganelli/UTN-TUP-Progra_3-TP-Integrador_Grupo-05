using Negocio;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas.Administracion.Turnos
{
    public partial class Turnos : System.Web.UI.Page
    {
        private TurnosNegocio _negocioTurnos = new TurnosNegocio();
        private EspecialidadesNegocio _negocioEspecialidad = new EspecialidadesNegocio();

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            dgvTurnos.PageIndex = 0; 
            CargarListadoDeTurnos();
        }
        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            txtBuscar.Text = "";
            ddlEspecialidad.SelectedIndex = 0;
            txtDesde.Text = "";
            txtHasta.Text = "";
            ddlEstado.SelectedIndex = 0;

            CargarListadoDeTurnos();
        }

        protected void btnNuevoTurno_Click(object sender, EventArgs e)
        {
            Response.Redirect("tNuevo.aspx");
        }


        protected void dgvTurnos_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            dgvTurnos.PageIndex = e.NewPageIndex;
            CargarListadoDeTurnos();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarEspecialidades();
                CargarListadoDeTurnos();

            }
        }

        private void CargarListadoDeTurnos()
        {
            try
            {
                DataTable dtOriginal = _negocioTurnos.ListarTurnos();

                if (dtOriginal != null && dtOriginal.Rows.Count > 0)
                {
                    DataView dv = new DataView(dtOriginal);

                    string filtroCompleto = "";

                    if (!string.IsNullOrWhiteSpace(txtBuscar.Text))
                    {
                        string busqueda = txtBuscar.Text.Trim().Replace("'", "''");
                        filtroCompleto += $"(id_paciente LIKE '%{busqueda}%' OR id_medico LIKE '%{busqueda}%')";
                    }

                    if (ddlEspecialidad.SelectedIndex > 0)
                    {
                        string espSeleccionada = ddlEspecialidad.SelectedItem.Text.Trim();

                        if (filtroCompleto != "") filtroCompleto += " AND ";

                        filtroCompleto += $"especialidad = '{espSeleccionada}'";
                    }

                    if (!string.IsNullOrEmpty(ddlEstado.SelectedValue))
                    {
                        string estadoSeleccionado = ddlEstado.SelectedItem.Text.Trim();

                        if (filtroCompleto != "") filtroCompleto += " AND ";

                        filtroCompleto += $"estado = '{estadoSeleccionado}'";
                    }

                    if (filtroCompleto != "")
                    {
                        dv.RowFilter = filtroCompleto;
                    }

                    DataTable dtFiltrado = dv.ToTable();

                    lblContador.Text = dtFiltrado.Rows.Count.ToString();

                    int porPagina = dgvTurnos.PageSize;
                    int totalPaginas = (int)Math.Ceiling((double)dtFiltrado.Rows.Count / porPagina);
                    lblTotalPaginas.Text = totalPaginas == 0 ? "1" : totalPaginas.ToString();

                    if (dgvTurnos.PageIndex >= totalPaginas && totalPaginas > 0)
                    {
                        dgvTurnos.PageIndex = totalPaginas - 1;
                    }
                    lblPaginaActual.Text = (dgvTurnos.PageIndex + 1).ToString();

                    dgvTurnos.DataSource = dtFiltrado;
                    dgvTurnos.DataBind();
                }
                else
                {
                    dgvTurnos.DataSource = null;
                    dgvTurnos.DataBind();
                    lblContador.Text = "0";
                    lblPaginaActual.Text = "1";
                    lblTotalPaginas.Text = "1";
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error al filtrar: " + ex.Message + "');</script>");
            }
        }

        private void CargarEspecialidades()
        {
            DataTable dt = _negocioEspecialidad.ObtenerEspecialidades();
            ddlEspecialidad.DataSource = dt;

            ddlEspecialidad.DataValueField = "id_especialidad";
            ddlEspecialidad.DataTextField = "nombre";
            ddlEspecialidad.DataBind();
            ddlEspecialidad.Items.Insert(0, new ListItem(" Seleccione Especialidad ", "0"));
        }


    }
}
