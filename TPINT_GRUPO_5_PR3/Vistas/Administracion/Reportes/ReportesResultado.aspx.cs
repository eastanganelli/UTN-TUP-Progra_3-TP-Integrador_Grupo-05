using Entidades;
using Negocio;
using Negocios;
using System;
using System.Data;

namespace Vistas.Administracion.Reportes
{
    public partial class ReportesResultado : System.Web.UI.Page
    {
        private ReportesNegocio negocio = new ReportesNegocio();

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
                CargarReporte();
        }

        private void CargarReporte()
        {
            string reporte = Request.QueryString["reporte"];
            string desde = Request.QueryString["desde"];
            string hasta = Request.QueryString["hasta"];

            if (string.IsNullOrEmpty(reporte))
            {
                Response.Redirect("ReportesInicio.aspx");
                return;
            }

            DateTime? fechaDesde = string.IsNullOrEmpty(desde) ? (DateTime?)null : DateTime.Parse(desde);
            DateTime? fechaHasta = string.IsNullOrEmpty(hasta) ? (DateTime?)null : DateTime.Parse(hasta);

            DataTable dt;

            switch (reporte)
            {
                case "Turnos por Especialidad":
                    dt = negocio.TurnosPorEspecialidad(fechaDesde, fechaHasta);
                    MostrarReporte(dt, reporte, fechaDesde, fechaHasta);
                    break;
                case "Médicos con más Turnos":
                    dt = negocio.MedicosConMasTurnos(fechaDesde, fechaHasta);
                    MostrarReporte(dt, reporte, fechaDesde, fechaHasta);
                    break;
                case "Estado de Turnos por Año":
                    int anio;
                    if (!int.TryParse(Request.QueryString["anio"], out anio))
                        anio = DateTime.Now.Year;
                    dt = negocio.EstadoTurnosPorAnio(anio);
                    MostrarReporteEstadoTurnos(dt, anio);
                    break;
                case "Asistencia a Turnos":
                    dt = negocio.AsistenciaATurnos(fechaDesde, fechaHasta);
                    MostrarReporte(dt, reporte, fechaDesde, fechaHasta);
                    break;
                case "Pacientes con más Ausencias":
                    dt = negocio.PacientesConMasAusencias(fechaDesde, fechaHasta);
                    MostrarReporte(dt, reporte, fechaDesde, fechaHasta);
                    break;
                default:
                    Response.Redirect("ReportesInicio.aspx");
                    break;
            }
        }

        private void MostrarReporte(DataTable dt, string reporte, DateTime? desde, DateTime? hasta)
        {
            // Título y subtítulo
            lblTitulo.Text = "Reporte: " + reporte;
            lblPeriodo.Text = desde.HasValue && hasta.HasValue
                ? $"Desde {desde.Value:dd/MM/yyyy} hasta {hasta.Value:dd/MM/yyyy}"
                : "Sin filtro de fechas";

            // Total
            lblTotal.Text = dt.Rows.Count.ToString();

            // Tabla de resultados
            gvResultado.DataSource = dt;
            gvResultado.DataBind();
        }

        private void MostrarReporteEstadoTurnos(DataTable dt, int anio)
        {
            lblTitulo.Text = "Reporte: Estado de Turnos por Año";
            lblPeriodo.Text = "Año " + anio;

            int total = 0;
            foreach (DataRow fila in dt.Rows)
                total += Convert.ToInt32(fila["Total"]);
            lblTotal.Text = total.ToString();

            gvResultado.DataSource = dt;
            gvResultado.DataBind();

            pnlGrafico.Visible = true;
            rptGrafico.DataSource = dt;
            rptGrafico.DataBind();

            lblConclusion.Text = anio == DateTime.Now.Year
                ? "Los datos del año en curso pueden estar incompletos ya que aún no ha finalizado."
                : "";
        }
    }
}