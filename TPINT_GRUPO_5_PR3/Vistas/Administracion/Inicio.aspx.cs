using Entidades;
using Negocio;
using System;
using System.Diagnostics;
using Vistas;

namespace Vistas.Administracion {
    public partial class Inicio : System.Web.UI.Page
    {   
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                AccesoPagina acceso = new AccesoPagina();
                acceso.VerificarAcceso("admin", "medico");
                Usuario usuario = (Usuario)Session["zezion"];
                lblRol.Text = usuario.Rol == "admin" ? "Administrador" : "Dr. " + usuario.NombreUsuario;
                pnlTurnos.Visible = usuario.Rol == "medico";
            }
            catch (NoAccesoPagina) {
                Response.Redirect("/Login.aspx");
            }
            catch (SinPermisoPagina) {
                Response.Redirect("/Administracion/Inicio.aspx");
            }
        }
    }
}


