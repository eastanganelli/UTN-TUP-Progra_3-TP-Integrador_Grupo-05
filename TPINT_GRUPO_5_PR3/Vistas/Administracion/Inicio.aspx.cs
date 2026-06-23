using Entidades;
using Negocio;
using System;
using System.Diagnostics;

namespace Vistas.Administracion {
    public partial class Inicio : System.Web.UI.Page
    {   
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["zezion"] == null)
            {
                Response.Redirect("/Login.aspx");
            }

            Usuario usuario = (Usuario)Session["zezion"];

            lblRol.Text = usuario.Rol == "admin" ? "Administrador" : "Dr. " + usuario.NombreUsuario;

            //UsuariosNegocio negocioUsuarios = new UsuariosNegocio();
            //Debug.WriteLine($"Cantidad de usuarios: {negocioUsuarios.ObtenerCantidadDeUsuarios()}");
        }
    }
}