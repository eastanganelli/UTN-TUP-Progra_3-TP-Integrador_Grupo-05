using Entidades;
using Negocio;
using System;
using System.Data;
using System.Web.UI.WebControls;

namespace Vistas.Administracion.Turnos {
    public partial class Turno_Editar : System.Web.UI.Page {
        private TurnosNegocio _negTurnos = new TurnosNegocio();

        protected void Page_Load(object sender, EventArgs e) {
            try {
                AccesoPagina acceso = new AccesoPagina();
                acceso.VerificarAcceso("admin", "medico");
                Usuario usuario = (Usuario)Session["zezion"];

                if (!IsPostBack) {
                    string idTurno = Request.QueryString["id"];
                    if (string.IsNullOrEmpty(idTurno)) {
                        Response.Redirect("tInicio.aspx");
                        return;
                    }

                    CargarEstados();
                    CargarDatosDelTurno(idTurno, usuario);
                } else {
                    bool esMedico      = usuario.Rol == "medico";
                    DateTime fechaTurno = ViewState["FechaTurno"] != null ? (DateTime)ViewState["FechaTurno"] : DateTime.MaxValue;
                    string estadoOriginal = ViewState["EstadoOriginal"]?.ToString() ?? "pendiente";

                    AplicarModificacion(esMedico, fechaTurno, estadoOriginal);
                }
            }
            catch (NoAccesoPagina) {
                Response.Redirect("/Login.aspx");
            }
            catch (SinPermisoPagina) {
                Response.Redirect("/Administracion/Inicio.aspx");
            }
        }

        private void CargarDatosDelTurno(string idTurno, Usuario usuario) {
            DataTable dt = _negTurnos.BuscarTurnoPorId(idTurno);

            if (dt == null || dt.Rows.Count == 0) {
                Response.Redirect("tInicio.aspx");
                return;
            }

            DataRow fila      = dt.Rows[0];
            int idMedicoTurno = Convert.ToInt32(fila["id_medico"]);

            // Medico solo puede editar sus propios turnos
            if (usuario.Rol == "medico" && usuario.IDMedico != idMedicoTurno) {
                Response.Redirect("tInicio.aspx");
                return;
            }

            DateTime fechaHora    = Convert.ToDateTime(fila["fecha_hora"]);
            string estadoActual   = fila["estado"].ToString();

            ViewState["FechaTurno"]     = fechaHora;
            ViewState["EstadoOriginal"] = estadoActual;

            lblNroTurno.Text     = "#" + fila["id_turno"].ToString();
            lblMedico.Text       = fila["MedicoApellido"] + ", " + fila["MedicoNombre"];
            lblEspecialidad.Text = fila["Especialidad"].ToString();
            lblPaciente.Text     = fila["PacienteApellido"] + ", " + fila["PacienteNombre"];
            lblDniPaciente.Text  = "DNI: " + fila["DNI"].ToString();

            txtMedicoReadOnly.Text       = fila["MedicoApellido"] + ", " + fila["MedicoNombre"];
            txtEspecialidadReadOnly.Text = fila["Especialidad"].ToString();

            txtFecha.Text       = fechaHora.ToString("yyyy-MM-dd");
            txtObservacion.Text = fila["observacion"] == DBNull.Value ? "" : fila["observacion"].ToString();

            ddlEstado.SelectedValue = estadoActual;
            MostrarBadgeEstado(estadoActual);

            int idTurnoInt = Convert.ToInt32(fila["id_turno"]);
            CargarHorariosDisponibles(idMedicoTurno, fechaHora.Date, idTurnoInt, fechaHora.ToString("HH:mm"));

            bool esMedico = usuario.Rol == "medico";
            AplicarModificacion(esMedico, fechaHora, estadoActual);
        }

        private void AplicarModificacion(bool esMedico, DateTime fechaTurno, string estadoOriginal) {
            bool esAdmin         = !esMedico;
            bool esPasado        = fechaTurno.Date <= DateTime.Today;
            bool esFuturo        = !esPasado;
            bool pendiente       = string.Equals(estadoOriginal, "pendiente", StringComparison.OrdinalIgnoreCase);
            bool horaAlcanzada   = fechaTurno <= DateTime.Now;

            pnlFechaHorario.Visible = esAdmin && (esFuturo || pendiente);
            pnlEstado.Enabled = esMedico && horaAlcanzada;
            string estadoSeleccionado = ddlEstado.SelectedValue;
            pnlObservacion.Enabled  = esMedico && horaAlcanzada && string.Equals(estadoSeleccionado, "presente", StringComparison.OrdinalIgnoreCase);
            btnGuardar.Enabled = !(esMedico && !horaAlcanzada);
            lblMensaje.Text = "⚠️ No se ha cumplido el turno del paciente.";
            lblMensaje.Visible = !(esMedico && horaAlcanzada);
        }

        protected void ddlEstado_SelectedIndexChanged(object sender, EventArgs e) {
            Usuario usuario = (Usuario)Session["zezion"];
            bool esMedico = usuario.Rol == "medico";
            DateTime fechaTurno = ViewState["FechaTurno"] != null ? (DateTime)ViewState["FechaTurno"] : DateTime.MaxValue;
            string estadoOriginal = ViewState["EstadoOriginal"]?.ToString() ?? "pendiente";
            AplicarModificacion(esMedico, fechaTurno, estadoOriginal);
        }

        private void MostrarBadgeEstado(string estado) {
            switch (estado) {
                case "presente":
                    lblEstadoBadge.Text     = "Presente";
                    lblEstadoBadge.CssClass = "badge-estado confirmado";
                    break;
                case "ausente":
                    lblEstadoBadge.Text     = "Ausente";
                    lblEstadoBadge.CssClass = "badge-estado cancelado";
                    break;
                default:
                    lblEstadoBadge.Text     = "Pendiente";
                    lblEstadoBadge.CssClass = "badge-estado pendiente";
                    break;
            }
        }

        private void CargarEstados()
        {
            ddlEstado.Items.Clear();
            ddlEstado.Items.Add(new ListItem("-- Seleccioná --", ""));
            //ddlEstado.Items.Add(new ListItem("Pendiente", "pendiente"));
            ddlEstado.Items.Add(new ListItem("Presente",  "presente"));
            ddlEstado.Items.Add(new ListItem("Ausente",   "ausente"));
        }

        private void CargarHorariosDisponibles(int idMedico, DateTime fecha, int idTurnoActual, string horaAPreseleccionar) {
            ddlHorario.Items.Clear();

            try {
                DataTable dt = _negTurnos.ObtenerHorariosParaEditar(idMedico, fecha, idTurnoActual);

                if (dt.Rows.Count == 0) {
                    ddlHorario.Items.Add(new ListItem("Sin horarios disponibles", ""));
                    pnlConflicto.Visible = true;
                    lblConflicto.Text    = " El médico no tiene horarios disponibles para esa fecha.";
                } else {
                    pnlConflicto.Visible = false;
                    ddlHorario.Items.Add(new ListItem("-- Seleccioná --", ""));
                    ddlHorario.DataSource     = dt;
                    ddlHorario.DataValueField = "hora";
                    ddlHorario.DataTextField  = "label";
                    ddlHorario.DataBind();
                }
            }
            catch (Exception ex) {
                pnlConflicto.Visible = true;
                lblConflicto.Text    = ex.Message;
                ddlHorario.Items.Add(new ListItem("-- Sin disponibilidad --", ""));
            }

            if (!string.IsNullOrEmpty(horaAPreseleccionar)) {
                ListItem item = ddlHorario.Items.FindByValue(horaAPreseleccionar);
                if (item != null) ddlHorario.SelectedValue = horaAPreseleccionar;
            }
        }

        protected void txtFecha_TextChanged(object sender, EventArgs e) {
            string idTurno = Request.QueryString["id"];
            if (string.IsNullOrEmpty(idTurno)) return;

            DataTable dt = _negTurnos.BuscarTurnoPorId(idTurno);
            if (dt == null || dt.Rows.Count == 0) return;

            DataRow fila   = dt.Rows[0];
            int idMedico   = Convert.ToInt32(fila["id_medico"]);
            int idTurnoInt = Convert.ToInt32(fila["id_turno"]);

            if (!DateTime.TryParse(txtFecha.Text, out DateTime nuevaFecha)) return;

            CargarHorariosDisponibles(idMedico, nuevaFecha, idTurnoInt, null);
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            Usuario usuario   = (Usuario)Session["zezion"];
            string idTurnoStr = Request.QueryString["id"];
            if (string.IsNullOrEmpty(idTurnoStr))
            {
                Response.Redirect("tInicio.aspx");
                return;
            }

            DataTable dt = _negTurnos.BuscarTurnoPorId(idTurnoStr);
            if (dt == null || dt.Rows.Count == 0)
            {
                Response.Redirect("tInicio.aspx");
                return;
            }

            DataRow fila   = dt.Rows[0];
            int idTurno    = Convert.ToInt32(fila["id_turno"]);
            int idMedico   = Convert.ToInt32(fila["id_medico"]);
            DateTime fechaHoraOriginal = Convert.ToDateTime(fila["fecha_hora"]);
            string estadoOriginal      = fila["estado"].ToString();

            // Determinar fecha/hora a guardar
            DateTime fechaHoraAGuardar;
            if (pnlFechaHorario.Visible)
            {
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
                string hora = ddlHorario.SelectedValue;
                int horas   = int.Parse(hora.Substring(0, 2));
                int minutos = int.Parse(hora.Substring(3, 2));
                fechaHoraAGuardar = new DateTime(fecha.Year, fecha.Month, fecha.Day, horas, minutos, 0);
            }
            else
            {
                // Medico o admin con turno bloqueado: conservar fecha original
                fechaHoraAGuardar = fechaHoraOriginal;
            }

            // Determinar estado/observacion a guardar
            string estadoAGuardar;
            string obsAGuardar;
            if (pnlEstado.Visible)
            {
                if (fechaHoraOriginal > DateTime.Now)
                {
                    MostrarAlerta("No se puede registrar el estado antes del horario del turno.");
                    return;
                }
                if (string.IsNullOrEmpty(ddlEstado.SelectedValue))
                {
                    MostrarAlerta("Seleccioná un estado para el turno.");
                    return;
                }
                estadoAGuardar = ddlEstado.SelectedValue;
                obsAGuardar    = txtObservacion.Text;
            }
            else
            {
                // Admin o turno futuro: conservar estado/observacion original
                estadoAGuardar = estadoOriginal;
                obsAGuardar    = fila["observacion"] == DBNull.Value ? null : fila["observacion"].ToString();
            }

            try
            {
                _negTurnos.ModificarTurno(idTurno, idMedico, fechaHoraAGuardar, estadoAGuardar, obsAGuardar);
                RetornarAlInicio();
            }
            catch (Exception ex)
            {
                pnlConflicto.Visible = true;
                lblConflicto.Text    = "⚠ " + ex.Message;
                MostrarAlerta(ex.Message);
                if (pnlFechaHorario.Visible)
                    CargarHorariosDisponibles(idMedico, fechaHoraAGuardar.Date, idTurno, fechaHoraAGuardar.ToString("HH:mm"));
            }
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            RetornarAlInicio();
        }

        private void RetornarAlInicio()
        {
            string bckInicio = Request.QueryString["bck_ini"];
            if (!string.IsNullOrEmpty(bckInicio) && bckInicio == "1")
                Response.Redirect("/Administracion/Inicio.aspx");
            Response.Redirect("tInicio.aspx");
        }

        private void MostrarAlerta(string texto)
        {
            lblMensaje.Text     = texto;
            lblMensaje.CssClass = "alerta-error";
            lblMensaje.Visible  = true;
        }
    }
}
