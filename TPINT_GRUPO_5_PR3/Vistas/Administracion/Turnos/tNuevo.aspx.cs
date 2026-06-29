using Entidades;
using Negocio;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas.Administracion.Turnos
{
    public partial class Turno_Nuevo : System.Web.UI.Page
    {

        private TurnosNegocio negTurnos = new TurnosNegocio();
        private EspecialidadesNegocio negEspecialidad = new EspecialidadesNegocio();
        private PacientesNegocio negPaciente = new PacientesNegocio();
        private MedicosNegocio negMedico = new MedicosNegocio();
        private HorariosMedicosNegocio negHorario = new HorariosMedicosNegocio();

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                AccesoPagina acceso = new AccesoPagina();
                acceso.VerificarAcceso("admin", "medico");
                Usuario usuario = (Usuario)Session["zezion"];

                if (!IsPostBack)
                {
                    CargarEspecialidades();
                    CargarPacientes();
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
            ddlEspecialidad.DataSource = negEspecialidad.ObtenerEspecialidades();
            ddlEspecialidad.DataTextField = "nombre"; 
            ddlEspecialidad.DataValueField = "id_especialidad";
            ddlEspecialidad.DataBind();
            ddlEspecialidad.Items.Insert(0, new ListItem("-- Seleccioná --", ""));
        }

        private void CargarPacientes()
        {
            ddlPaciente.DataSource = negPaciente.ObtenerPacientesActivos();
            ddlPaciente.DataTextField = "PacienteCompleto";
            ddlPaciente.DataValueField = "id_paciente";
            ddlPaciente.DataBind();
            ddlPaciente.Items.Insert(0, new ListItem("-- Seleccioná un paciente --", ""));
        }

        
        protected void ddlEspecialidad_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlMedico.Items.Clear();
            ddlHorario.Items.Clear();
            ddlHorario.Items.Insert(0, new ListItem("-- Seleccioná médico y fecha primero --", ""));

            string idEspecialidad = ddlEspecialidad.SelectedValue;

            if (!string.IsNullOrEmpty(idEspecialidad))
            {
                DataTable dtMedicos = negMedico.ObtenerMedicosPorEspecialidad(idEspecialidad);
                ddlMedico.DataSource = dtMedicos;
                ddlMedico.DataTextField = "MedicoCompleto";
                ddlMedico.DataValueField = "id_medico";
                ddlMedico.DataBind();
            }

            ddlMedico.Items.Insert(0, new ListItem("-- Seleccioná --", ""));
        }


        private void CargarHorarios()
        {
            
        }

        protected void ddlMedico_SelectedIndexChanged(object sender, EventArgs e)
        {
            CargarHorarios();
        }

        protected void txtFecha_TextChanged(object sender, EventArgs e)
        {
            CargarHorarios();
        }

        protected void ddlPaciente_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                bool seGuardoCorrectamente = false;

                try
                {
                    string idMed = ddlMedico.SelectedValue;
                    string idPac = ddlPaciente.SelectedValue;
                    string fecha = txtFecha.Text;
                    string hora = ddlHorario.SelectedValue;

                    string fechaHoraCombinada = fecha + " " + hora;

                    string mensajeResultado = negTurnos.InsertarNuevoTurno(idMed, idPac, fechaHoraCombinada);

                    seGuardoCorrectamente = true;
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('No se pudo registrar el turno. El horario ya se encuentra ocupado.');</script>");
                }

                if (seGuardoCorrectamente)
                {
                    Response.Write("<script>alert('¡Turno asignado exitosamente!'); window.location='tInicio.aspx';</script>");
                }
            }
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            ddlEspecialidad.SelectedIndex = 0;
            ddlMedico.Items.Clear();
            ddlMedico.Items.Insert(0, new ListItem("-- Seleccioná especialidad primero --", ""));
            txtFecha.Text = "";
            ddlHorario.Items.Clear();
            ddlHorario.Items.Insert(0, new ListItem("-- Seleccioná médico y fecha primero --", ""));
            ddlPaciente.SelectedIndex = 0;
            txtObservacion.Text = "";
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("tInicio.aspx");
        }
    }
}