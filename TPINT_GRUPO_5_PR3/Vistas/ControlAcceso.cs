using Entidades;
using System;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace Vistas
{
    public class NoAccesoPagina : Exception {
        public NoAccesoPagina()
            : base("No tiene permisos para acceder a esta página.") { }
        public NoAccesoPagina(string mensaje)
            : base(mensaje) { }
    }
    public class SinPermisoPagina : Exception
    {
        public SinPermisoPagina()
            : base("No tiene permisos para acceder a esta sección.") { }
        public SinPermisoPagina(string mensaje)
            : base(mensaje) { }
    }
    public class ControlAcceso {
        protected Usuario ObtenerUsuario() =>
            HttpContext.Current?.Session?["zezion"] as Usuario;

        protected bool EstaAutenticado() =>
            ObtenerUsuario() != null;

        protected string ObtenerRol() =>
            ObtenerUsuario()?.Rol;

        protected bool TieneRol(params string[] roles) {
            string rol = ObtenerRol();
            return rol != null && roles.Contains(rol, StringComparer.OrdinalIgnoreCase);
        }
    }
    public class AccesoPagina : ControlAcceso {
        public void VerificarAcceso(params string[] rolesPermitidos) {
            if (!EstaAutenticado())
                throw new NoAccesoPagina("Debe iniciar sesión para acceder.");
            if (!TieneRol(rolesPermitidos))
                throw new SinPermisoPagina();
        }
    }
    public class AccesoWidget : ControlAcceso {
        public void AplicarAcceso(Control control, params string[] rolesPermitidos) {
            if (control == null) return;
            control.Visible = TieneRol(rolesPermitidos);
        }
    }
}
