using System;
using System.Web.UI.WebControls;

namespace Vistas.Administracion.Usuarios {
    public partial class Usuarios : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) { }
        protected void btnNuevoUsuario_Click(object sender, EventArgs e) { Response.Redirect("uNuevo.aspx"); }
        protected void btnBuscar_Click(object sender, EventArgs e) { }
        protected void btnLimpiar_Click(object sender, EventArgs e) { }
        protected void lbtnAnterior_Click(object sender, EventArgs e) { }
        protected void lbtnSiguiente_Click(object sender, EventArgs e) { }
        protected void ddlPagina_SelectedIndexChanged(object sender, EventArgs e) { }
        protected void rptUsuarios_ItemCommand(object source, RepeaterCommandEventArgs e) { }
    }
}
