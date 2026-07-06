using Entidades;
using System;

namespace Vistas.Administracion.Turnos
{
    public partial class Turno_Editar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                AccesoPagina acceso = new AccesoPagina();
                acceso.VerificarAcceso("admin");
                Usuario usuario = (Usuario)Session["zezion"];
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
        private void RetornarAlInicio() {
            string bckInicio_ = Request.QueryString["bck_ini"];
            if (!string.IsNullOrEmpty(bckInicio_) && bckInicio_ == "1")
            {
                Response.Redirect("/Administracion/Inicio.aspx");
            }
            Response.Redirect("tInicio.aspx");
        }
    }
}