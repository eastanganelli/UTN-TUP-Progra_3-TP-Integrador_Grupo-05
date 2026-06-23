using Entidades;
using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas
{
    public partial class Login : System.Web.UI.Page
    {
        private UsuariosNegocio negocioUsuarios = new UsuariosNegocio();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            try
            {

                Usuario usuario = negocioUsuarios.Login(txtUsuario.Text, txtPassword.Text);

                Session["zezion"] = usuario;

                Response.Redirect("/Administracion/Inicio.aspx");

            }

            catch (Exception ex)
            {
                string script = $"alert('{ex.Message}');";
                ClientScript.RegisterStartupScript(this.GetType(), "PopUpAlert", script, true);
            }
        }
    }

}