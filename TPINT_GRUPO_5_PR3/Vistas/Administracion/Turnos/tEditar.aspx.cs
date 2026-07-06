using Entidades;
using Negocio;
using System;
using System.Data;
using System.Web.UI.WebControls;

namespace Vistas.Administracion.Turnos
{
    public partial class Turno_Editar : System.Web.UI.Page
    {
        private TurnosNegocio _negTurnos = new TurnosNegocio();

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                AccesoPagina acceso = new AccesoPagina();
                acceso.VerificarAcceso("admin");
                Usuario usuario = (Usuario)Session["zezion"];

                if (!IsPostBack)
                {
                    string idTurno = Request.QueryString["id"];
                    if (string.IsNullOrEmpty(idTurno))
                    {
                        Response.Redirect("tInicio.aspx");
                        return;
                    }

                    CargarEstados();
                    CargarDatosDelTurno(idTurno);
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

        private void CargarEstados()
        {
            ddlEstado.Items.Clear();
            ddlEstado.Items.Add(new ListItem("-- Seleccioná --", ""));
            ddlEstado.Items.Add(new ListItem("Pendiente", "pendiente"));
            ddlEstado.Items.Add(new ListItem("Presente", "presente"));
            ddlEstado.Items.Add(new ListItem("Ausente", "ausente"));
        }

        private void CargarDatosDelTurno(string idTurno)
        {
            DataTable dt = _negTurnos.BuscarTurnoPorId(idTurno);

            if (dt == null || dt.Rows.Count == 0)
            {
                Response.Redirect("tInicio.aspx");
                return;
            }

            DataRow fila = dt.Rows[0];
            DateTime fechaHora = Convert.ToDateTime(fila["fecha_hora"]);
            string estadoActual = fila["estado"].ToString();
            string horaActual = fechaHora.ToString("HH:mm");

            lblNroTurno.Text = "#" + fila["id_turno"].ToString();
            lblMedico.Text = fila["MedicoApellido"] + ", " + fila["MedicoNombre"];
            lblEspecialidad.Text = fila["Especialidad"].ToString();
            lblPaciente.Text = fila["PacienteApellido"] + ", " + fila["PacienteNombre"];
            lblDniPaciente.Text = "DNI: " + fila["DNI"].ToString();

            txtMedicoReadOnly.Text = fila["MedicoApellido"] + ", " + fila["MedicoNombre"];
            txtEspecialidadReadOnly.Text = fila["Especialidad"].ToString();

            txtFecha.Text = fechaHora.ToString("yyyy-MM-dd");
            txtObservacion.Text = fila["observacion"] == DBNull.Value ? "" : fila["observacion"].ToString();

            ddlEstado.SelectedValue = estadoActual;
            MostrarBadgeEstado(estadoActual);

            int idMedico = Convert.ToInt32(fila["id_medico"]);
            int idTurnoInt = Convert.ToInt32(fila["id_turno"]);
            CargarHorariosDisponibles(idMedico, fechaHora.Date, idTurnoInt, horaActual);
        }

        private void MostrarBadgeEstado(string estado)
        {
            switch (estado)
            {
                case "presente":
                    lblEstadoBadge.Text = "Presente";
                    lblEstadoBadge.CssClass = "badge-estado confirmado";
                    break;
                case "ausente":
                    lblEstadoBadge.Text = "Ausente";
                    lblEstadoBadge.CssClass = "badge-estado cancelado";
                    break;
                default:
                    lblEstadoBadge.Text = "Pendiente";
                    lblEstadoBadge.CssClass = "badge-estado pendiente";
                    break;
            }
        }

        private void CargarHorariosDisponibles(int idMedico, DateTime fecha, int idTurnoActual, string horaAPreseleccionar)
        {
            ddlHorario.Items.Clear();

            try
            {
                DataTable dt = _negTurnos.ObtenerHorariosParaEditar(idMedico, fecha, idTurnoActual);

                if (dt.Rows.Count == 0)
                {
                    ddlHorario.Items.Add(new ListItem("Sin horarios disponibles", ""));
                    pnlConflicto.Visible = true;
                    lblConflicto.Text = " El médico no tiene horarios disponibles para esa fecha.";
                }
                else
                {
                    pnlConflicto.Visible = false;
                    ddlHorario.Items.Add(new ListItem("-- Seleccioná --", ""));
                    ddlHorario.DataSource = dt;
                    ddlHorario.DataValueField = "hora";
                    ddlHorario.DataTextField = "label";
                    ddlHorario.DataBind();
                }
            }
            catch (Exception ex)
            {
                pnlConflicto.Visible = true;
                lblConflicto.Text = ex.Message;
                ddlHorario.Items.Add(new ListItem("-- Sin disponibilidad --", ""));
            }

            if (!string.IsNullOrEmpty(horaAPreseleccionar))
            {
                ListItem item = ddlHorario.Items.FindByValue(horaAPreseleccionar);
                if (item != null) ddlHorario.SelectedValue = horaAPreseleccionar;
            }
        }

        protected void txtFecha_TextChanged(object sender, EventArgs e)
        {
            string idTurno = Request.QueryString["id"];
            if (string.IsNullOrEmpty(idTurno)) return;

            DataTable dt = _negTurnos.BuscarTurnoPorId(idTurno);
            if (dt == null || dt.Rows.Count == 0) return;

            DataRow fila = dt.Rows[0];
            int idMedico = Convert.ToInt32(fila["id_medico"]);
            int idTurnoInt = Convert.ToInt32(fila["id_turno"]);

            if (!DateTime.TryParse(txtFecha.Text, out DateTime nuevaFecha))
                return;

            CargarHorariosDisponibles(idMedico, nuevaFecha, idTurnoInt, null);
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            string idTurnoStr = Request.QueryString["id"];
            if (string.IsNullOrEmpty(idTurnoStr))
            {
                Response.Redirect("tInicio.aspx");
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
            if (string.IsNullOrEmpty(ddlHorario.SelectedValue))
            {
                MostrarAlerta("Seleccioná un horario disponible.");
                return;
            }
            if (string.IsNullOrEmpty(ddlEstado.SelectedValue))
            {
                MostrarAlerta("Seleccioná un estado para el turno.");
                return;
            }

            DataTable dt = _negTurnos.BuscarTurnoPorId(idTurnoStr);
            if (dt == null || dt.Rows.Count == 0)
            {
                Response.Redirect("tInicio.aspx");
                return;
            }

            DataRow fila = dt.Rows[0];
            int idTurno = Convert.ToInt32(fila["id_turno"]);
            int idMedico = Convert.ToInt32(fila["id_medico"]);

            string horaSeleccionada = ddlHorario.SelectedValue;
            int horas = int.Parse(horaSeleccionada.Substring(0, 2));
            int minutos = int.Parse(horaSeleccionada.Substring(3, 2));
            DateTime fechaHora = new DateTime(fecha.Year, fecha.Month, fecha.Day, horas, minutos, 0);

            try
            {
                _negTurnos.ModificarTurno(idTurno, idMedico, fechaHora, ddlEstado.SelectedValue, txtObservacion.Text);
                Response.Redirect("tInicio.aspx");
            }
            catch (Exception ex)
            {
                pnlConflicto.Visible = true;
                lblConflicto.Text = "⚠ " + ex.Message;
                MostrarAlerta(ex.Message);
                CargarHorariosDisponibles(idMedico, fecha, idTurno, horaSeleccionada);
            }
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("tInicio.aspx");
        }

        private void MostrarAlerta(string texto)
        {
            lblMensaje.Text = texto;
            lblMensaje.CssClass = "alerta-error";
            lblMensaje.Visible = true;
        }


    }
}