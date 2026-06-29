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
    public partial class Turno_Ver : System.Web.UI.Page
    {
        private TurnosNegocio neg = new TurnosNegocio();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string idTurno = Request.QueryString["id"];

                if (!string.IsNullOrEmpty(idTurno))
                {
                    CargarDatosDelTurno(idTurno);
                }
                else
                {
                    Response.Redirect("tInicio.aspx");
                }
            }
        }

        private void CargarDatosDelTurno(string idTurno)
        {
            DataTable dt = neg.BuscarTurnoPorId(idTurno);

            if (dt != null && dt.Rows.Count > 0)
            {
                DataRow fila = dt.Rows[0];
                DateTime fechaHora = Convert.ToDateTime(fila["fecha_hora"]);

                lblNroTurno.Text = "#" + fila["id_turno"].ToString();
                lblFecha.Text = fechaHora.ToString("dd/MM/yyyy");
                lblHora.Text = fechaHora.ToString("HH:mm") + " hs";

                lblDNI.Text = fila["DNI"].ToString();
                lblNroPaciente.Text = fila["NroPaciente"].ToString();
                lblTelefono.Text = fila["Telefono"].ToString();
                lblPaciente.Text = fila["PacienteApellido"].ToString() + ", " + fila["PacienteNombre"].ToString();
                lblInicialesPaciente.Text = fila["InicialesPac"].ToString().ToUpper();

                lblEspecialidad.Text = fila["Especialidad"].ToString();
                lblCorreo.Text = fila["Correo"].ToString();
                lblMedico.Text = fila["MedicoApellido"].ToString() + ", " + fila["MedicoNombre"].ToString();
                lblInicialesMedico.Text = fila["InicialesMed"].ToString().ToUpper();

                string obs = fila["observacion"].ToString().Trim();
                if (string.IsNullOrEmpty(obs))
                {
                    txtObservaciones.Value = "El turno no posee observaciones registradas.";
                }
                else
                {
                    txtObservaciones.Value = obs;
                }

                lnkFichaPaciente.HRef = "../Pacientes/pVer.aspx?idPaciente=" + fila["id_paciente"].ToString();
                lnkFichaMedico.HRef = "../Medicos/mVer.aspx?id=" + fila["id_medico"].ToString();
            }
        }

        protected void btnCancelarTurno_Click(object sender, EventArgs e)
        {
            string idTurnoStr = Request.QueryString["id"];

            if (!string.IsNullOrEmpty(idTurnoStr))
            {
                int idTurno = int.Parse(idTurnoStr);
                neg.EliminarTurno(idTurno);
                Response.Redirect("tInicio.aspx");
            }
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("tInicio.aspx");
        }
    }
}