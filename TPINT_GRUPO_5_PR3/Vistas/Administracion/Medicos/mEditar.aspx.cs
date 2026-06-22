using Entidades;
using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas.Administracion.Medicos {
    public partial class EditarMedico : System.Web.UI.Page {
        private MedicosNegocio conexionMedicos = new MedicosNegocio();
        private PersonasNegocio conexionPersonas = new PersonasNegocio();
        private EspecialidadesNegocio conexionEspecialidades = new EspecialidadesNegocio();
        private LocalidadesNegocio conexionLocalidades = new LocalidadesNegocio();
        private ProvinciasNegocio conexionProvincias = new ProvinciasNegocio();
        private HorariosMedicosNegocio conexionHorariosMedicos = new HorariosMedicosNegocio();
        private TurnosNegocio conexionTurnos = new TurnosNegocio();

        public Medico medico { get; set; }
        public Usuario usuario { get; set; }
        public Persona persona { get; set; }
        public Especialidad especialidad { get; set; }
        public Localidad localidad { get; set; }
        public Provincia provincia { get; set; }
        protected void Page_Load(object sender, EventArgs e) {
            if (Request.QueryString["id"] != null) {
                string id_medico = Request.QueryString["id"];
                //this.medico = conexionMedicos.ObtenerMedico(Convert.ToInt32(id_medico));
                //this.persona = conexionPersonas.ObtenerPersona(this.medico.IDPersona);
                //this.especialidad = conexionEspecialidades.ObtenerEspecialidad(this.medico.IDEspecialidad);
                //this.localidad = conexionLocalidades.ObtenerLocalidad(this.persona.IDLocalidad);
                //this.provincia = conexionProvincias.ObtenerProvincia(this.localidad.IDProvincia);
                //rptHorarios.DataSource = conexionHorariosMedicos.ObtenerHorariosDeMedico(Convert.ToInt32(id_medico));
                //rptHorarios.DataBind();
            }
        }
    }
}