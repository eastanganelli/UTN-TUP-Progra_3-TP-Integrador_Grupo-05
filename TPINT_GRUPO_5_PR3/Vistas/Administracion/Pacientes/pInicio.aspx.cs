using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using System.Data;

namespace Vistas.Administracion.Pacientes
{
    public partial class pInicio: System.Web.UI.Page
    {
        PacientesNegocio pacientesNegocio = new PacientesNegocio();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                CargarPacientes();
            }
        }

        private void CargarPacientes()
        {
            DataTable tabla = pacientesNegocio.getTabla();
            gvPacientes.DataSource = tabla;
            gvPacientes.DataBind();
        }

        protected void BtnBuscar_Click(object sender, EventArgs e)
        {
            string texto = txtBuscar.Text.Trim();

            string estado = ddlEstado.SelectedValue;

            string sexo = ddlSexo.SelectedValue;

           
            DataTable tabla = pacientesNegocio.BuscarPacientes(texto, sexo, estado);

            gvPacientes.DataSource = tabla;
            gvPacientes.DataBind();
        }

        protected void gvPacientes_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvPacientes.PageIndex = e.NewPageIndex;
            CargarPacientes();
        }

        protected void BtnLimpiar_Click(object sender, EventArgs e)
        {
            txtBuscar.Text = string.Empty;
            ddlEstado.SelectedIndex = 0;
            ddlSexo.SelectedIndex = 0;

            CargarPacientes();
        }
    }
}