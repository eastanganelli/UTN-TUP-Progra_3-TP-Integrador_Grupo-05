using Entidades;
using Negocio;
using System;
using System.Data;
using System.Diagnostics;

namespace Vistas.Administracion {
    public partial class Inicio : System.Web.UI.Page {
        public string fechaActual { get; set; }
        public statsMedico turnosDelDia { get; set; }
        public statsAdmin statsHoyAdmin { get; set; }
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
            pnlTurnosAdmin.Visible = true;

            TurnosNegocio turnosNegocio = new TurnosNegocio();

            try {
                DataTable dtStats = turnosNegocio.ObtenerEstadisticasDelDia();
                int pendientes = SumarColumna(dtStats, "Pendiente");
                int atendidos  = SumarColumna(dtStats, "Presente");
                int ausentes   = SumarColumna(dtStats, "Ausente");
                int total      = SumarColumna(dtStats, "Total");
                statsHoyAdmin  = new statsAdmin(total, atendidos, pendientes, ausentes, 0);
            }
            catch (Exception ex) {
                Debug.WriteLine("Error al obtener estadísticas del día (admin): " + ex.Message);
            }

            try {
                DataTable dtTurnos = turnosNegocio.ObtenerTurnosDelDiaAdmin();
                rptTurnosAdmin.DataSource = dtTurnos;
                rptTurnosAdmin.DataBind();
            }
            catch (Exception ex) {
                Debug.WriteLine("Error al cargar turnos del día (admin): " + ex.Message);
            }
        }
        private void CargarVistaMedico(string nombreUsuario, int idMedico) {
            Medico medico = new Medico();
            MedicosNegocio medicosNegocio = new MedicosNegocio();
            medico = medicosNegocio.ObtenerMedico(idMedico);
            lblRol.Text = "Dr. " + medico.Apellido;
            pnlStatsMedico.Visible = true;
            pnlTurnos.Visible = true;

            TurnosNegocio turnosNegocio = new TurnosNegocio();

            try {
                DataTable dt = turnosNegocio.ObtenerTurnosDelDia(idMedico);
                rptTurnosHoy.DataSource = dt;
                rptTurnosHoy.DataBind();
            }
            catch (Exception ex) {
                Debug.WriteLine("Error al obtener los turnos del día: " + ex.Message);
            }

            
            try {
                DataTable dtStats = turnosNegocio.ObtenerEstadisticasDelDiaMedico(idMedico);
                int pendientes = SumarColumna(dtStats, "Pendiente");
                int atendidos = SumarColumna(dtStats, "Presente");
                int ausentes = SumarColumna(dtStats, "Ausente");
                int total = SumarColumna(dtStats, "Total");

                turnosDelDia = new statsMedico(total, atendidos, pendientes, ausentes);
            }
            catch (Exception ex) {
                Debug.WriteLine("Error al obtener estadísticas del día (médico): " + ex.Message);
            }
        }
        private static int SumarColumna(DataTable tabla, string columna) {
            if (tabla == null || !tabla.Columns.Contains(columna)) return 0;
            int total = 0;
            foreach (DataRow fila in tabla.Rows) {
                if (fila[columna] != DBNull.Value) total += Convert.ToInt32(fila[columna]);
            }
            return total;
        }
    }
    public struct statsAdmin {
        public int total, atendidos, pendientes, ausentes, medicosActivos;
        public statsAdmin(int total, int atendidos, int pendientes, int ausentes, int medicosActivos) {
            this.total = total;
            this.atendidos = atendidos;
            this.pendientes = pendientes;
            this.ausentes = ausentes;
            this.medicosActivos = medicosActivos;
        }
    }
    public struct statsMedico {
        public int total, atendidos, pendientes, ausentes;
        public statsMedico(int total, int atendidos, int pendientes, int ausentes) {
            this.total = total;
            this.atendidos = atendidos;
            this.pendientes = pendientes;
            this.ausentes = ausentes;
        }
    }
}