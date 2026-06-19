using Negocio;
using System;
using System.Diagnostics;

namespace Vistas.Administración {
    public partial class Inicio : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            UsuariosNegocio negocioUsuarios = new UsuariosNegocio();
            Debug.WriteLine($"Cantidad de usuarios: {negocioUsuarios.ObtenerCantidadDeUsuarios()}");
        }
    }
}