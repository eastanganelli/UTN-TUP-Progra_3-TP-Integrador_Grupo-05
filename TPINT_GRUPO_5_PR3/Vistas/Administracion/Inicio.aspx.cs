using Entidades;
using Negocio;
using System;
using System.Data;
using System.Diagnostics;
using Vistas;
using Vistas.Administracion.Usuarios;

namespace Vistas.Administracion {
    public partial class Inicio : System.Web.UI.Page {
        public string fechaActual { get; set; }
        protected void Page_Load(object sender, EventArgs e) {
            try {
                AccesoPagina acceso = new AccesoPagina();
                acceso.VerificarAcceso("admin", "medico");
                Usuario usuario = (Usuario)Session["zezion"];
                ObtenerFechaHoy();
                if (usuario.Rol == "admin") {
                    CargarVistaAdmin();
                } else if (usuario.Rol == "medico") {
                    Debug.WriteLine($"ID Medico: {(int)usuario?.IDMedico}");
                    CargarVistaMedico(usuario.NombreUsuario, (int)usuario?.IDMedico);
                }
            }
            catch (NoAccesoPagina) {
                Response.Redirect("/Login.aspx");
            }
            catch (SinPermisoPagina) {
                Response.Redirect("/Administracion/Inicio.aspx");
            }
        }
        private void ObtenerFechaHoy() {
            try {
                DateTime auxFecha = DateTime.Now;
                fechaActual = $"{auxFecha:dddd, dd 'de' MMMM 'de' yyyy}";
            }
            catch (Exception ex) {
                Debug.WriteLine("Error al obtener la fecha actual: " + ex.Message);
                fechaActual = "Error al obtener la fecha";
            }
        }
        private void CargarVistaAdmin() {
            lblRol.Text = "Administrador";
            pnlStatsAdmin.Visible = true;
        }
        private void CargarVistaMedico(string nombreUsuario, int idMedico) {
            lblRol.Text = "Dr. " + nombreUsuario;
            pnlStatsMedico.Visible = true;
            pnlTurnos.Visible = true;

            TurnosNegocio TurnosDelDia = new TurnosNegocio();
            DataTable dt = TurnosDelDia.ObtenerTurnosDelDia(idMedico);
            rptTurnosHoy.DataSource = dt;
            rptTurnosHoy.DataBind();
        }
    }
}