using Entidades;
using Negocio;
using System;
using System.Diagnostics;

namespace Vistas.Administración.Medicos {
    public partial class VerMedico : System.Web.UI.Page {
        private MedicosNegocio conexionMedicos = new MedicosNegocio();
        private UsuariosNegocio conexionUsuarios = new UsuariosNegocio();
        private PersonasNegocio conexionPersonas = new PersonasNegocio();
        private EspecialidadesNegocio conexionEspecialidades = new EspecialidadesNegocio();
        private LocalidadesNegocio conexionLocalidades = new LocalidadesNegocio();
        private ProvinciasNegocio conexionProvincias = new ProvinciasNegocio();

        public Medico medico { get; set; }
        public Usuario usuario { get; set; }
        public Persona persona { get; set; }
        public Especialidad especialidad { get; set; }
        public Localidad localidad { get; set; }
        public Provincia provincia { get; set; }
        protected void Page_Load(object sender, EventArgs e) {
            if (Request.QueryString["id"] != null) {
                string id_medico = Request.QueryString["id"];
                this.medico = conexionMedicos.ObtenerMedico(Convert.ToInt32(id_medico));
                //this.usuario = conexionUsuarios.ObtenerUsuario(this.medico.IDMedico);
                this.persona = conexionPersonas.ObtenerPersona(this.medico.IDPersona);
                this.especialidad = conexionEspecialidades.ObtenerEspecialidad(this.medico.IDEspecialidad);
                this.localidad = conexionLocalidades.ObtenerLocalidad(this.persona.IDLocalidad);
                this.provincia = conexionProvincias.ObtenerProvincia(this.localidad.IDProvincia);
            }
        }
    }
}