using Entidades;
using Negocio;
using System;
using System.Data;
using System.Web.UI.WebControls;

namespace Vistas.Administracion.Medicos {
    public partial class EditarMedico : System.Web.UI.Page {
        private MedicosNegocio conexionMedicos = new MedicosNegocio();
        private PersonasNegocio conexionPersonas = new PersonasNegocio();
        private EspecialidadesNegocio conexionEspecialidades = new EspecialidadesNegocio();
        private LocalidadesNegocio conexionLocalidades = new LocalidadesNegocio();
        private ProvinciasNegocio conexionProvincias = new ProvinciasNegocio();
        private HorariosMedicosNegocio conexionHorariosMedicos = new HorariosMedicosNegocio();

        private Medico medico { get; set; }
        private Persona persona { get; set; }
        private DataTable HorariosVS { get => ViewState["Horarios"] as DataTable; set => ViewState["Horarios"] = value; }

        protected void Page_Load(object sender, EventArgs e) {
            if (Request.QueryString["id"] == null) return;

            int idMedico = Convert.ToInt32(Request.QueryString["id"]);
            medico = conexionMedicos.ObtenerMedico(idMedico);
            persona = conexionPersonas.ObtenerPersona(medico.IDPersona);

            if (!IsPostBack) {
                CargarEspecialidades();
                CargarProvinciasYLocalidades();
                Cargar_Banner();
                CargarFormulario();
                CargarHorarios(idMedico);
            }
        }
        private void CargarEspecialidades() {
            DataTable dt = conexionEspecialidades.ObtenerEspecialidades();

            ddlEspecialidadBanner.DataSource = dt;
            ddlEspecialidadBanner.DataValueField = "id_especialidad";
            ddlEspecialidadBanner.DataTextField = "nombre";
            ddlEspecialidadBanner.DataBind();
            ddlEspecialidadBanner.SelectedValue = medico.IDEspecialidad.ToString();

            ddlEspecialidad.DataSource = dt;
            ddlEspecialidad.DataValueField = "id_especialidad";
            ddlEspecialidad.DataTextField = "nombre";
            ddlEspecialidad.DataBind();
            ddlEspecialidad.SelectedValue = medico.IDEspecialidad.ToString();
        }
        private void CargarProvinciasYLocalidades() {
            DataTable dtProv = conexionProvincias.ObtenerProvincias();
            ddlProvincia.DataSource = dtProv;
            ddlProvincia.DataValueField = "id_provincia";
            ddlProvincia.DataTextField = "nombre";
            ddlProvincia.DataBind();

            Localidad localidadActual = conexionLocalidades.ObtenerLocalidad(persona.IDLocalidad);
            ddlProvincia.SelectedValue = localidadActual.IDProvincia.ToString();

            CargarLocalidadesDeProvincia(localidadActual.IDProvincia);
            ddlLocalidad.SelectedValue = persona.IDLocalidad.ToString();
        }
        private void CargarLocalidadesDeProvincia(int idProvincia) {
            DataTable dtLoc = conexionLocalidades.ObtenerLocalidadesPorProvincia(idProvincia);
            ddlLocalidad.DataSource = dtLoc;
            ddlLocalidad.DataValueField = "id_localidad";
            ddlLocalidad.DataTextField = "nombre";
            ddlLocalidad.DataBind();
        }
        private void Cargar_Banner() {
            string genero = persona.Sexo.ToString().ToUpper() == "M" ? "Dr. " : "Dra. ";
            lblDocGen.Text = genero;

            lblNombre.Text = persona.Nombre;
            lblApellido.Text = persona.Apellido;
            lblLegajoBanner.Text = medico.Legajo;
            lblIdMedico.Text = medico.IDMedico.ToString();
        }
        private void CargarFormulario()  {
            txtDni.Text = persona.DNI;
            txtLegajo.Text = medico.Legajo;
            txtNombreForm.Text = persona.Nombre;
            txtApellidoForm.Text = persona.Apellido;
            txtNacionalidad.Text = persona.Nacionalidad;
            txtDireccion.Text = persona.Direccion;
            txtTelefono.Text = persona.Telefono;
            txtEmail.Text = persona.Email;

            ddlSexo.SelectedValue = persona.Sexo.ToString().ToUpper();

            if (DateTime.TryParse(persona.FechaNacimiento, out DateTime fecha))
                txtFechaNac.Text = fecha.ToString("dd-MM-yyyy");
        }
        protected void ddlProvincia_SelectedIndexChanged(object sender, EventArgs e) {
            int idProvincia = int.Parse(ddlProvincia.SelectedValue);
            CargarLocalidadesDeProvincia(idProvincia);
        }
        protected void btnGuardar_Click(object sender, EventArgs e) {
            if (string.IsNullOrWhiteSpace(txtNombreForm.Text)    ||
                string.IsNullOrWhiteSpace(txtApellidoForm.Text)  ||
                string.IsNullOrWhiteSpace(ddlSexo.SelectedValue) ||
                string.IsNullOrWhiteSpace(txtFechaNac.Text)      ||
                string.IsNullOrWhiteSpace(txtNacionalidad.Text)  ||
                string.IsNullOrWhiteSpace(txtDireccion.Text)     ||
                string.IsNullOrWhiteSpace(ddlLocalidad.SelectedValue) ||
                string.IsNullOrWhiteSpace(txtTelefono.Text)      ||
                string.IsNullOrWhiteSpace(txtEmail.Text)         ||
                string.IsNullOrWhiteSpace(ddlEspecialidad.SelectedValue)) {
                MostrarMensaje("Completá todos los campos obligatorios.", esError: true);
                return;
            }

            Persona personaActualizada = new Persona {
                Nombre          = txtNombreForm.Text.Trim(),
                Apellido        = txtApellidoForm.Text.Trim(),
                Sexo            = ddlSexo.SelectedValue[0],
                FechaNacimiento = txtFechaNac.Text,
                Nacionalidad    = txtNacionalidad.Text.Trim(),
                Direccion       = txtDireccion.Text.Trim(),
                IDLocalidad     = int.Parse(ddlLocalidad.SelectedValue),
                Email           = txtEmail.Text.Trim(),
                Telefono        = txtTelefono.Text.Trim()
            };

            Medico medicoActualizado = new Medico {
                IDMedico       = int.Parse(lblIdMedico.Text),
                Legajo         = txtLegajo.Text.Trim(),
                IDEspecialidad = int.Parse(ddlEspecialidad.SelectedValue)
            };

            try {
                string mensaje = conexionMedicos.ActualizarMedico(personaActualizada, medicoActualizado);
                GuardarHorarios(medicoActualizado.IDMedico);
                medico  = conexionMedicos.ObtenerMedico(medicoActualizado.IDMedico);
                persona = conexionPersonas.ObtenerPersona(medico.IDPersona);
                Cargar_Banner();
                CargarHorarios(medicoActualizado.IDMedico);
                MostrarMensaje(string.IsNullOrWhiteSpace(mensaje) ? "Cambios guardados correctamente." : mensaje, esError: false);
            }
            catch (Exception ex) {
                MostrarMensaje(ex.Message, esError: true);
            }
        }
        protected void btnCancelar_Click(object sender, EventArgs e) {
            Response.Redirect("mInicio.aspx");
        }
        private void CargarHorarios(int idMedico) {
            DataTable db = conexionHorariosMedicos.ObtenerHorariosDeMedico(idMedico);
            DataTable dt = new DataTable();
            dt.Columns.Add("id_horario", typeof(int));
            dt.Columns.Add("DiaSemana",  typeof(int));
            dt.Columns.Add("HoraInicio", typeof(string));
            dt.Columns.Add("HoraFin",    typeof(string));
            foreach (DataRow r in db.Rows)
                dt.Rows.Add(Convert.ToInt32(r["id_horario"]), Convert.ToInt32(r["DiaSemana"]),
                    FormatHora(r["HoraInicio"]), FormatHora(r["HoraFin"]));
            HorariosVS = dt;
            gvHorarios.DataSource = dt;
            gvHorarios.DataBind();
        }
        private string FormatHora(object val) {
            if (val is TimeSpan ts) return $"{ts.Hours:00}:{ts.Minutes:00}";
            string s = val?.ToString() ?? string.Empty;
            return s.Length >= 5 ? s.Substring(0, 5) : s;
        }
        private void CapturarGrilla() {
            DataTable dt = HorariosVS;
            if (dt == null || gvHorarios.Rows.Count == 0) return;
            for (int i = 0; i < gvHorarios.Rows.Count; i++) {
                GridViewRow row = gvHorarios.Rows[i];
                dt.Rows[i]["DiaSemana"]  = int.Parse(((DropDownList)row.FindControl("ddlDia")).SelectedValue);
                dt.Rows[i]["HoraInicio"] = ((TextBox)row.FindControl("txtHoraInicio")).Text.Trim();
                dt.Rows[i]["HoraFin"]    = ((TextBox)row.FindControl("txtHoraFin")).Text.Trim();
            }
            HorariosVS = dt;
        }
        private void GuardarHorarios(int idMedico) {
            CapturarGrilla();
            DataTable dt = HorariosVS;
            if (dt == null) return;
            foreach (DataRow r in dt.Rows) {
                string hi = r["HoraInicio"].ToString();
                string hf = r["HoraFin"].ToString();
                if (string.IsNullOrEmpty(hi) || string.IsNullOrEmpty(hf)) continue;
                var h = new HorarioMedico {
                    IDHorario  = Convert.ToInt32(r["id_horario"]),
                    IDMedico   = idMedico,
                    DiaSemana  = Convert.ToInt32(r["DiaSemana"]),
                    HoraInicio = hi,
                    HoraFin    = hf
                };
                if (h.IDHorario == 0) conexionHorariosMedicos.AgregarHorario(h);
                else                  conexionHorariosMedicos.ActualizarHorario(h);
            }
        }
        protected void btnAgregarHorario_Click(object sender, EventArgs e) {
            CapturarGrilla();
            DataTable dt = HorariosVS ?? new DataTable();
            if (!dt.Columns.Contains("id_horario")) {
                dt.Columns.Add("id_horario", typeof(int));
                dt.Columns.Add("DiaSemana",  typeof(int));
                dt.Columns.Add("HoraInicio", typeof(string));
                dt.Columns.Add("HoraFin",    typeof(string));
            }
            dt.Rows.Add(0, 1, "08:00", "17:00");
            HorariosVS = dt;
            gvHorarios.DataSource = dt;
            gvHorarios.DataBind();
        }
        protected void gvHorarios_RowDeleting(object sender, GridViewDeleteEventArgs e) {
            CapturarGrilla();
            DataTable dt = HorariosVS;
            int idHorario = Convert.ToInt32(gvHorarios.DataKeys[e.RowIndex].Value);
            if (idHorario != 0)
                conexionHorariosMedicos.EliminarHorario(idHorario);
            dt.Rows.RemoveAt(e.RowIndex);
            HorariosVS = dt;
            gvHorarios.DataSource = dt;
            gvHorarios.DataBind();
            e.Cancel = true;
        }
        private void MostrarMensaje(string texto, bool esError) {
            lblMensaje.Text = texto;
            lblMensaje.Attributes["style"] = esError
                ? "display:block; padding:12px 16px; border-radius:6px; margin-bottom:16px; background:#fdecea; color:#c0392b; border:1px solid #e6b3b3;"
                : "display:block; padding:12px 16px; border-radius:6px; margin-bottom:16px; background:#eafaf1; color:#1e8449; border:1px solid #a9dfbf;";
            lblMensaje.Visible = true;
        }
    }
}