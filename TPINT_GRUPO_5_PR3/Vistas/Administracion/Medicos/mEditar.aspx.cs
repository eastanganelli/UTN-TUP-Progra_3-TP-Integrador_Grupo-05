using Entidades;
using Negocio;
using System;
using System.Data;

namespace Vistas.Administracion.Medicos
{
    public partial class EditarMedico : System.Web.UI.Page
    {
        private MedicosNegocio conexionMedicos = new MedicosNegocio();
        private PersonasNegocio conexionPersonas = new PersonasNegocio();
        private EspecialidadesNegocio conexionEspecialidades = new EspecialidadesNegocio();
        private LocalidadesNegocio conexionLocalidades = new LocalidadesNegocio();
        private ProvinciasNegocio conexionProvincias = new ProvinciasNegocio();
        private HorariosMedicosNegocio conexionHorariosMedicos = new HorariosMedicosNegocio();

        private Medico medico { get; set; }
        private Persona persona { get; set; }

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

            string iniciales = "";
            if (persona.Nombre.Length > 0) iniciales += persona.Nombre[0];
            if (persona.Apellido.Length > 0) iniciales += persona.Apellido[0];
            lblIniciales.Text = iniciales.ToUpper();
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
                txtFechaNac.Text = fecha.ToString("yyyy-MM-dd");
        }
        protected void ddlProvincia_SelectedIndexChanged(object sender, EventArgs e) {
            int idProvincia = int.Parse(ddlProvincia.SelectedValue);
            CargarLocalidadesDeProvincia(idProvincia);
        }
    }
}