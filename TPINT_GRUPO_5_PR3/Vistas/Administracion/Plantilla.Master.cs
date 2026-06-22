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
            this.nombreClinica = Vistas.Properties.Resources.strNombreClinica.ToString();
        }
    }
}