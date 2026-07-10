using Entidades;
using Negocio;
using System;
using System.Data;
using System.Web.UI.WebControls;

namespace Vistas.Administracion.Turnos
{
    public partial class Turno_Nuevo : System.Web.UI.Page
    {
        private MedicosNegocio _negMedicos = new MedicosNegocio();
        private TurnosNegocio _negTurnos = new TurnosNegocio();
        private EspecialidadesNegocio _negEsp = new EspecialidadesNegocio();
        private PacientesNegocio _negPa = new PacientesNegocio();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                AccesoPagina acceso = new AccesoPagina();
                acceso.VerificarAcceso("admin");

                if (!IsPostBack)
                {
                    CargarEspecialidades();
                    CargarPacientes();
                    LimpiarBanner();
                }
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
        private void CargarEspecialidades()
        {
            DataTable dt = _negEsp.ObtenerEspecialidades();
            ddlEspecialidad.DataSource = dt;
            ddlEspecialidad.DataValueField = "id_especialidad";
            ddlEspecialidad.DataTextField = "nombre";
            ddlEspecialidad.DataBind();
            ddlEspecialidad.Items.Insert(0, new ListItem("-- Seleccioná --", ""));
        }

        private void CargarMedicosPorEspecialidad(int idEspecialidad)
        {
            ddlMedico.Items.Clear();

            DataTable dt = _negMedicos.ObtenerMedicosPorEspecialidad(idEspecialidad);
            ddlMedico.DataSource = dt;
            ddlMedico.DataValueField = "IDMedico";
            ddlMedico.DataTextField = "nombre";
            ddlMedico.DataBind();
            ddlMedico.Items.Insert(0, new ListItem("-- Seleccioná --", ""));
        }

        private void CargarHorariosDisponibles(int idMedico, DateTime fecha)
        {
            ddlHorario.Items.Clear();

            try
            {
                DataTable dt = _negTurnos.ObtenerHorariosDisponibles(idMedico, fecha);

                if (dt.Rows.Count == 0)
                {
                    ddlHorario.Items.Add(new ListItem("Sin horarios disponibles", ""));
                    pnlConflicto.Visible = true;
                    lblConflicto.Text = "El médico no tiene horarios disponibles para esa fecha.";
                }
                else
                {
                    pnlConflicto.Visible = false;
                    ddlHorario.Items.Insert(0, new ListItem("-- Seleccioná --", ""));
                    ddlHorario.DataSource = dt;
                    ddlHorario.DataValueField = "hora";
                    ddlHorario.DataTextField = "label";
                    ddlHorario.DataBind();
                    ddlHorario.Items.Insert(0, new ListItem("-- Seleccioná --", ""));
                }
            }
            catch (Exception ex)
            {
                pnlConflicto.Visible = true;
                lblConflicto.Text = ex.Message;
                ddlHorario.Items.Add(new ListItem("-- Sin disponibilidad --", ""));
            }
        }

        private void CargarPacientes()
        {
            DataTable dt = _negPa.ObtenerPacientesActivos();
            ddlPaciente.DataSource = dt;
            ddlPaciente.DataValueField = "id_paciente";
            ddlPaciente.DataTextField = "nombre";
            ddlPaciente.DataBind();
            ddlPaciente.Items.Insert(0, new ListItem("-- Seleccioná un paciente --", ""));
        }

        protected void ddlEspecialidad_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlMedico.Items.Clear();
            ddlMedico.Items.Add(new ListItem("-- Seleccioná especialidad primero --", ""));
            ddlHorario.Items.Clear();
            ddlHorario.Items.Add(new ListItem("-- Seleccioná médico y fecha primero --", ""));
            txtFecha.Text = "";
            pnlConflicto.Visible = false;
            ActualizarBanner();

            if (!string.IsNullOrEmpty(ddlEspecialidad.SelectedValue))
                CargarMedicosPorEspecialidad(int.Parse(ddlEspecialidad.SelectedValue));
        }

        protected void ddlMedico_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlHorario.Items.Clear();
            ddlHorario.Items.Add(new ListItem("-- Seleccioná médico y fecha primero --", ""));
            pnlConflicto.Visible = false;
            ActualizarBanner();

            if (!string.IsNullOrEmpty(ddlMedico.SelectedValue)
                && !string.IsNullOrEmpty(txtFecha.Text)
                && DateTime.TryParse(txtFecha.Text, out DateTime fecha))
            {
                CargarHorariosDisponibles(int.Parse(ddlMedico.SelectedValue), fecha);
            }
        }

        protected void txtFecha_TextChanged(object sender, EventArgs e)
        {
            ddlHorario.Items.Clear();
            ddlHorario.Items.Add(new ListItem("-- Seleccioná médico y fecha primero --", ""));
            pnlConflicto.Visible = false;
            ActualizarBanner();

            if (!string.IsNullOrEmpty(ddlMedico.SelectedValue)
                && !string.IsNullOrEmpty(txtFecha.Text)
                && DateTime.TryParse(txtFecha.Text, out DateTime fecha))
            {
                if (fecha.Date < DateTime.Today)
                {
                    pnlConflicto.Visible = true;
                    lblConflicto.Text = " No se pueden asignar turnos en fechas pasadas.";
                    return;
                }

                CargarHorariosDisponibles(int.Parse(ddlMedico.SelectedValue), fecha);
            }
        }

        protected void ddlPaciente_SelectedIndexChanged(object sender, EventArgs e)
        {
            ActualizarBanner();
        }

        private void ActualizarBanner()
        {
            lblResEspecialidad.Text = ddlEspecialidad.SelectedIndex > 0
                ? ddlEspecialidad.SelectedItem.Text : "—";

            lblResMedico.Text = ddlMedico.SelectedIndex > 0
                ? ddlMedico.SelectedItem.Text : "—";

            string fecha = !string.IsNullOrEmpty(txtFecha.Text)
                ? DateTime.Parse(txtFecha.Text).ToString("dd/MM/yyyy") : "—";
            string horario = ddlHorario.SelectedIndex > 0
                ? ddlHorario.SelectedItem.Text : "—";

            lblResFecha.Text = fecha + (horario != "—" ? " " + horario : "");
            lblResPaciente.Text = ddlPaciente.SelectedIndex > 0
                ? ddlPaciente.SelectedItem.Text : "";
        }

        private void LimpiarBanner()
        {
            lblResEspecialidad.Text = "—";
            lblResMedico.Text = "—";
            lblResFecha.Text = "—";
            lblResPaciente.Text = "";
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(ddlEspecialidad.SelectedValue))
            {
                MostrarAlerta("Seleccioná una especialidad.");
                return;
            }
            if (string.IsNullOrEmpty(ddlMedico.SelectedValue))
            {
                MostrarAlerta("Seleccioná un médico.");
                return;
            }
            if (string.IsNullOrEmpty(txtFecha.Text))
            {
                MostrarAlerta("Seleccioná una fecha.");
                return;
            }
            if (!DateTime.TryParse(txtFecha.Text, out DateTime fecha))
            {
                MostrarAlerta("La fecha ingresada no es válida.");
                return;
            }
            if (fecha.Date < DateTime.Today)
            {
                MostrarAlerta("No se pueden asignar turnos en fechas pasadas.");
                return;
            }
            if (string.IsNullOrEmpty(ddlHorario.SelectedValue))
            {
                MostrarAlerta("Seleccioná un horario disponible.");
                return;
            }
            if (string.IsNullOrEmpty(ddlPaciente.SelectedValue))
            {
                MostrarAlerta("Seleccioná un paciente.");
                return;
            }

            try
            {
                int idMedico = int.Parse(ddlMedico.SelectedValue);
                int idPaciente = int.Parse(ddlPaciente.SelectedValue);
                string horaSeleccionada = ddlHorario.SelectedValue;
                int horas = int.Parse(horaSeleccionada.Substring(0, 2));
                int minutos = int.Parse(horaSeleccionada.Substring(3, 2));

                DateTime fechaHora = new DateTime(fecha.Year, fecha.Month, fecha.Day, horas, minutos, 0);

                string mensaje = _negTurnos.AsignarTurno(idMedico, idPaciente, fechaHora);

                if (mensaje.Contains("correctamente"))
                {
                    Response.Redirect("tInicio.aspx?ok=1");
                }
                else
                {
                    // El SP rechazó (ej: turno duplicado)
                    pnlConflicto.Visible = true;
                    lblConflicto.Text = "⚠ " + mensaje;
                    MostrarAlerta(mensaje);
                    CargarHorariosDisponibles(idMedico, fecha);
                }
            }
            catch (Exception ex)
            {
                MostrarAlerta(ex.Message);
            }
        }
        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            ddlEspecialidad.SelectedIndex = 0;

            ddlMedico.Items.Clear();
            ddlMedico.Items.Add(new ListItem("-- Seleccioná especialidad primero --", ""));

            txtFecha.Text = "";

            ddlHorario.Items.Clear();
            ddlHorario.Items.Add(new ListItem("-- Seleccioná médico y fecha primero --", ""));

            ddlPaciente.SelectedIndex = 0;
            pnlConflicto.Visible = false;

            LimpiarBanner();
        }
        private void MostrarAlerta(string texto)
        {
            lblMensaje.Text = texto;
            lblMensaje.CssClass = "alerta-error";
            lblMensaje.Visible = true;
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("tInicio.aspx");
        }
    }
}