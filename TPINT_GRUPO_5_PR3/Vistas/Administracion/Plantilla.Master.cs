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

            if (Session["zezion"] == null)
            {
                Response.Redirect("/Login.aspx");
            }

            lblUserName.Text = ((Usuario)Session["zezion"]).NombreUsuario;

                        if (!IsPostBack)
                        {
                            CargarMenu(((Usuario)Session["zezion"]).Rol);
                        }
          
        }

             protected void LoginStatusMaster_LoggingOut(object sender, LoginCancelEventArgs e)
             {
                 Response.Redirect("/Logout.aspx");
             }
            
             private void CargarMenu(string rol)
             {
                 MenuPrincipal.Items.Clear();

                 MenuPrincipal.Items.Add(new MenuItem("Inicio", "Inicio", "", "~/Administracion/Inicio.aspx"));
                 MenuPrincipal.Items.Add(new MenuItem("Pacientes", "Pacientes", "", "~/Administracion/Pacientes/pInicio.aspx"));
                 MenuPrincipal.Items.Add(new MenuItem("Turnos", "Turnos", "", "~/Administracion/Turnos/tInicio.aspx"));

                 if(rol == "admin")
                 {
                     MenuPrincipal.Items.Add(new MenuItem("Medicos", "Medicos", "", "~/Administracion/Medicos/mInicio.aspx"));
                     MenuPrincipal.Items.Add(new MenuItem("Reportes", "Reportes", "", "~/Administracion/Reportes/ReportesInicio.aspx"));
                 }
             }
        }
    }