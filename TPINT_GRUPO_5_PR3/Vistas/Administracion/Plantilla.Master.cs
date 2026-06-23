using Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas.Administracion
{


    public partial class Plantilla : System.Web.UI.MasterPage
    {
        public string nombreClinica { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["zezion"] == null) {
                Response.Redirect("/Login.aspx");
            }

            lblUserName.Text = ((Usuario)Session["zezion"]).NombreUsuario;

            this.nombreClinica = Vistas.Properties.Resources.strNombreClinica.ToString();
        }

        protected void LoginStatusMaster_LoggingOut(object sender, LoginCancelEventArgs e)
        {
            Response.Redirect("/Logout.aspx");
        }
    }
}