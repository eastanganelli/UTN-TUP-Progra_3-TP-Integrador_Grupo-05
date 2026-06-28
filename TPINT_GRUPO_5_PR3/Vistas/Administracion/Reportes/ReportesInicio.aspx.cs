using Entidades;
using Negocio;
using System;
using System.Web.UI.WebControls;

namespace Vistas.Administracion.Reportes
{
    public partial class ReportesInicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                AccesoPagina acceso = new AccesoPagina();
                acceso.VerificarAcceso("admin");
            }
            catch (NoAccesoPagina) { Response.Redirect("/Login.aspx"); }
            catch (SinPermisoPagina) { Response.Redirect("/Administracion/Inicio.aspx"); }
        }

        protected void btnGenerar_Click(object sender, EventArgs e)
        {
            if (ddlReporte.SelectedIndex == 0) return;

            string desde = txtDesde.Text.Trim();
            string hasta = txtHasta.Text.Trim();
            string reporte = ddlReporte.SelectedValue;

            Response.Redirect($"ReportesResultado.aspx?reporte={Server.UrlEncode(reporte)}&desde={desde}&hasta={hasta}");
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            ddlReporte.SelectedIndex = 0;
            txtDesde.Text = "";
            txtHasta.Text = "";
        }
    }
}