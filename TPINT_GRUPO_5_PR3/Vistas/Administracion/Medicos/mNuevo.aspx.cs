using Entidades;
using Negocio;
using System;
using System.Data;
using System.Web.UI.WebControls;

namespace Vistas.Administracion.Medicos {
    public partial class NuevoMedico : System.Web.UI.Page {
        private MedicosNegocio         conexionMedicos        = new MedicosNegocio();
        private EspecialidadesNegocio  conexionEspecialidades = new EspecialidadesNegocio();
        private LocalidadesNegocio     conexionLocalidades    = new LocalidadesNegocio();
        private ProvinciasNegocio      conexionProvincias     = new ProvinciasNegocio();
        private HorariosMedicosNegocio conexionHorarios       = new HorariosMedicosNegocio();
        private DataTable HorariosVS {
            get => ViewState["HorariosNuevo"] as DataTable;
            set => ViewState["HorariosNuevo"] = value;
        }
        protected void Page_Load(object sender, EventArgs e) {
            if (!IsPostBack) {
                CargarProvincias();
                CargarEspecialidades();
                InicializarHorarios();
            }
        }
        private void CargarProvincias() {
            DataTable dt = conexionProvincias.ObtenerProvincias();
            ddlProvincia.DataSource     = dt;
            ddlProvincia.DataValueField = "id_provincia";
            ddlProvincia.DataTextField  = "nombre";
            ddlProvincia.DataBind();
            ddlProvincia.Items.Insert(0, new ListItem("-- Seleccioná --", ""));
        }
        private void CargarEspecialidades() {
            DataTable dt = conexionEspecialidades.ObtenerEspecialidades();
            ddlEspecialidad.DataSource     = dt;
            ddlEspecialidad.DataValueField = "id_especialidad";
            ddlEspecialidad.DataTextField  = "nombre";
            ddlEspecialidad.DataBind();
            ddlEspecialidad.Items.Insert(0, new ListItem("-- Seleccioná --", ""));
        }
        protected void ddlProvincia_SelectedIndexChanged(object sender, EventArgs e) {
            if (!string.IsNullOrEmpty(ddlProvincia.SelectedValue))
                CargarLocalidades(int.Parse(ddlProvincia.SelectedValue));
        }
        private void CargarLocalidades(int idProvincia) {
            DataTable dt = conexionLocalidades.ObtenerLocalidadesPorProvincia(idProvincia);
            ddlLocalidad.DataSource     = dt;
            ddlLocalidad.DataValueField = "id_localidad";
            ddlLocalidad.DataTextField  = "nombre";
            ddlLocalidad.DataBind();
            ddlLocalidad.Items.Insert(0, new ListItem("-- Seleccioná --", ""));
        }
        private DataTable CrearDTHorarios() {
            DataTable dt = new DataTable();
            dt.Columns.Add("id_horario", typeof(int));
            dt.Columns.Add("DiaSemana",  typeof(int));
            dt.Columns.Add("HoraInicio", typeof(string));
            dt.Columns.Add("HoraFin",    typeof(string));
            return dt;
        }
        private void InicializarHorarios() {
            DataTable dt = CrearDTHorarios();
            HorariosVS = dt;
            gvHorarios.DataSource = dt;
            gvHorarios.DataBind();
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
        protected void btnAgregarHorario_Click(object sender, EventArgs e) {
            CapturarGrilla();
            DataTable dt = HorariosVS ?? CrearDTHorarios();
            dt.Rows.Add(0, 1, "08:00", "17:00");
            HorariosVS = dt;
            gvHorarios.DataSource = dt;
            gvHorarios.DataBind();
        }
        protected void gvHorarios_RowDeleting(object sender, GridViewDeleteEventArgs e) {
            CapturarGrilla();
            DataTable dt = HorariosVS;
            dt.Rows.RemoveAt(e.RowIndex);
            HorariosVS = dt;
            gvHorarios.DataSource = dt;
            gvHorarios.DataBind();
            e.Cancel = true;
        }
        protected void btnGuardar_Click(object sender, EventArgs e) {
            if (!Page.IsValid) return;

            if (string.IsNullOrEmpty(ddlLocalidad.SelectedValue)) {
                MostrarMensaje("Seleccioná una localidad.", esError: true);
                return;
            }

            Persona persona = new Persona {
                Nombre          = txtNombre.Text.Trim(),
                Apellido        = txtApellido.Text.Trim(),
                DNI             = txtDni.Text.Trim(),
                Sexo            = ddlSexo.SelectedValue[0],
                FechaNacimiento = DateTime.Parse(txtFechaNac.Text),
                Nacionalidad    = txtNacionalidad.Text.Trim(),
                Direccion       = txtDireccion.Text.Trim(),
                IDLocalidad     = int.Parse(ddlLocalidad.SelectedValue),
                Email           = txtEmail.Text.Trim(),
                Telefono        = txtTelefono.Text.Trim()
            };

            Medico medico = new Medico {
                Legajo         = txtLegajo.Text.Trim(),
                IDEspecialidad = int.Parse(ddlEspecialidad.SelectedValue)
            };

            try {
                int nuevoId = conexionMedicos.AgregarMedico(persona, medico, out string mensaje);
                if (nuevoId <= 0) {
                    MostrarMensaje(string.IsNullOrEmpty(mensaje) ? "Error al registrar el médico." : mensaje, esError: true);
                    return;
                }

                CapturarGrilla();
                DataTable dt = HorariosVS;
                if (dt != null) {
                    foreach (DataRow r in dt.Rows) {
                        string hi = r["HoraInicio"].ToString();
                        string hf = r["HoraFin"].ToString();
                        if (string.IsNullOrEmpty(hi) || string.IsNullOrEmpty(hf)) continue;
                        conexionHorarios.AgregarHorario(new HorarioMedico {
                            IDMedico   = nuevoId,
                            DiaSemana  = Convert.ToInt32(r["DiaSemana"]),
                            HoraInicio = hi,
                            HoraFin    = hf
                        });
                    }
                }

                MostrarMensaje(string.IsNullOrEmpty(mensaje) ? "Médico registrado correctamente." : mensaje, esError: false);
                LimpiarFormulario();
                Response.Redirect("mInicio.aspx");
            }
            catch (Exception ex) {
                MostrarMensaje(ex.Message, esError: true);
            }
        }
        protected void btnLimpiar_Click(object sender, EventArgs e) {
            LimpiarFormulario();
        }
        private void LimpiarFormulario() {
            txtNombre.Text = txtApellido.Text = txtDni.Text = txtLegajo.Text = string.Empty;
            txtFechaNac.Text = txtNacionalidad.Text = txtDireccion.Text = string.Empty;
            txtTelefono.Text = txtEmail.Text = /*txtUsername.Text =*/ string.Empty;
            //txtPassword.Text = txtPasswordConfirm.Text = string.Empty;
            ddlSexo.SelectedIndex      = 0;
            ddlProvincia.SelectedIndex = 0;
            ddlEspecialidad.SelectedIndex = 0;
            ddlLocalidad.Items.Clear();
            ddlLocalidad.Items.Add(new ListItem("-- Seleccioná provincia primero --", ""));
            InicializarHorarios();
            lblMensaje.Visible = false;
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
