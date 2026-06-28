using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;

namespace Vistas.Administracion.Pacientes
{
    public partial class pVer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                AccesoPagina acceso = new AccesoPagina();
                acceso.VerificarAcceso("admin");

                int idPaciente = int.Parse(Request.QueryString["idPaciente"]);

                if (!IsPostBack)
                {
                    lblConsultas.Visible = false;
                    lblSinTurnos.Visible = false;

                    CargarPaciente(idPaciente);
                    CargarConsultas(idPaciente);
                    CargarProximosTurnos(idPaciente);
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

        public void CargarConsultas(int idPaciente)
        {
            TurnosNegocio negocio = new TurnosNegocio();
            DataTable turnos = negocio.ObtenerTurnosPorPaciente(idPaciente);
            if (turnos.Rows.Count > 0)
            {
                gvHistorial.DataSource = turnos;
                gvHistorial.DataBind();
            }
            else
            {
                gvHistorial.Visible = false;
                lblConsultas.Text = "No se encontraron consultas para este paciente.";
                lblConsultas.CssClass = "alert alert-info";
                lblConsultas.Visible = true;
            }
        }
        public void CargarPaciente(int idPaciente)
        {
            PacientesNegocio negocio = new PacientesNegocio();
            Paciente paciente = negocio.ObtenerPacientePorId(idPaciente);

            lblNombreCompleto.Text = paciente.Nombre + " " + paciente.Apellido;
            lblDNI.Text = paciente.DNI.ToString();
            lblGenero.Text = paciente.Sexo.ToString();
            lblFecha.Text = paciente.FechaNacimiento.ToShortDateString();
            lblTelefono.Text = paciente.Telefono.ToString();
            lblCorreo.Text = paciente.Email.ToString();
            lblDireccion.Text = paciente.Direccion.ToString() + ", " + ObtenerLocalidad(paciente.IDLocalidad);

            lblNombreBanner.Text = paciente.Nombre + " " + paciente.Apellido;
            lblDNIBanner.Text = paciente.DNI.ToString();
            lblSexoBanner.Text = paciente.Sexo.ToString();
            lblEdadBanner.Text = CalcularEdad(paciente.FechaNacimiento).ToString();
            lblIniciales.Text = paciente.Nombre.Substring(0, 1) + paciente.Apellido.Substring(0, 1);
            if (paciente.Estado)
            {
                lblEstado.Text = "Activo";
                lblEstado.CssClass = "badge-activo";
            }
            else
            {
                lblEstado.Text = "Inactivo";
                lblEstado.CssClass = "badge-inactivo";
            }

        }

        public string ObtenerLocalidad(int idLocalidad)
        {
            LocalidadesNegocio negocio = new LocalidadesNegocio();
            Localidad localidad = negocio.ObtenerLocalidad(idLocalidad);
            return localidad.Nombre;
        }

        public int CalcularEdad(DateTime fechaNacimiento)
        {
            int edad = DateTime.Today.Year - fechaNacimiento.Year;

            if (fechaNacimiento.Date > DateTime.Today.AddYears(-edad))
            {
                edad--;
            }

            return edad;
        }

        public void CargarProximosTurnos(int idPaciente)
        {
            TurnosNegocio negocio = new TurnosNegocio();

            DataTable dt = negocio.ObtenerProximosTurnos(idPaciente);

            if (dt.Rows.Count > 0)
            {
                lvTurnos.DataSource = dt;
                lvTurnos.DataBind();

                lvTurnos.Visible = true;
                lblSinTurnos.Visible = false;
            }
            else
            {
                lvTurnos.Visible = false;

                lblSinTurnos.Text = "El paciente no tiene próximos turnos.";
                lblSinTurnos.Visible = true;
            }
        }
    }
}