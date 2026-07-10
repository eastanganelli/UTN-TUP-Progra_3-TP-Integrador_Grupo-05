using Entidades;
using Negocio;
using System;
using System.Data;
using System.Web.UI.WebControls;

namespace Vistas.Administracion.Reportes
{
    public partial class ReportesInicio : System.Web.UI.Page
    {
        private EspecialidadesNegocio negEspecialidades = new EspecialidadesNegocio();
        private MedicosNegocio negMedicos = new MedicosNegocio();
        private TurnosNegocio negTurnos = new TurnosNegocio();

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                AccesoPagina acceso = new AccesoPagina();
                acceso.VerificarAcceso("admin");
            }
            catch (NoAccesoPagina) { Response.Redirect("/Login.aspx"); }
            catch (SinPermisoPagina) { Response.Redirect("/Administracion/Inicio.aspx"); }

            if (!IsPostBack)
            {
                txtAnio.Text = DateTime.Now.Year.ToString();
                CargarEspecialidades();
                CargarMedicos(null);
                ActualizarCamposVisibles();
            }
        }

        private void CargarEspecialidades()
        {
            DataTable dt = negEspecialidades.ObtenerEspecialidades();
            ddlEspecialidad.DataSource = dt;
            ddlEspecialidad.DataValueField = "id_especialidad";
            ddlEspecialidad.DataTextField = "nombre";
            ddlEspecialidad.DataBind();
            ddlEspecialidad.Items.Insert(0, new ListItem("Todas", ""));
        }

        private void CargarMedicos(int? idEspecialidad)
        {
            DataTable dt = idEspecialidad.HasValue
                ? negMedicos.ObtenerMedicosPorEspecialidad((int)idEspecialidad)
                : negMedicos.ObtenerMedicos();

            ddlMedico.Items.Clear();
            ddlMedico.DataSource = dt;
            ddlMedico.DataValueField = "IDMedico";
            ddlMedico.DataTextField = "nombre";
            ddlMedico.DataBind();
            ddlMedico.Items.Insert(0, new ListItem("Todos", ""));
        }

        private void ActualizarCamposVisibles()
        {
            bool esEstadoAnual = ddlReporte.SelectedValue == "Estado de Turnos por Año";

            pnlAnio.Visible = esEstadoAnual;
            pnlFechaDesde.Visible = !esEstadoAnual;
            pnlFechaHasta.Visible = !esEstadoAnual;
            pnlEspecialidad.Visible = !esEstadoAnual;
            pnlMedico.Visible = !esEstadoAnual;
        }

        protected void ddlReporte_SelectedIndexChanged(object sender, EventArgs e)
        {
            ActualizarCamposVisibles();
        }

        protected void ddlEspecialidad_SelectedIndexChanged(object sender, EventArgs e)
        {
            int? idEspecialidad = string.IsNullOrEmpty(ddlEspecialidad.SelectedValue)
                ? (int?)null : int.Parse(ddlEspecialidad.SelectedValue);
            CargarMedicos(idEspecialidad);
        }

        protected void btnGenerar_Click(object sender, EventArgs e)
        {
            if (ddlReporte.SelectedIndex == 0) return;

            string desde = txtDesde.Text.Trim();
            string hasta = txtHasta.Text.Trim();
            string anio = txtAnio.Text.Trim();
            string reporte = ddlReporte.SelectedValue;

            string especialidad = ddlEspecialidad.SelectedValue;
            string medico = ddlMedico.SelectedValue;
            Response.Redirect($"ReportesResultado.aspx?reporte={Server.UrlEncode(reporte)}&desde={desde}&hasta={hasta}&anio={anio}&especialidad={especialidad}&medico={medico}");
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            ddlReporte.SelectedIndex = 0;
            txtDesde.Text = "";
            txtHasta.Text = "";
            txtAnio.Text = DateTime.Now.Year.ToString();
            ddlEspecialidad.SelectedIndex = 0;
            CargarMedicos(null);
            ActualizarCamposVisibles();
        }
    }
}
