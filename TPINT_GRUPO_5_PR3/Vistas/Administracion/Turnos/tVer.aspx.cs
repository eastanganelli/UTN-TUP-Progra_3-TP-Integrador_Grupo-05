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
        private bool bckInicio = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                AccesoPagina acceso = new AccesoPagina();
                acceso.VerificarAcceso("admin", "medico");
                Usuario usuario = (Usuario)Session["zezion"];

                if (!IsPostBack)
                {
                    string idTurno = Request.QueryString["id"];

                    if (string.IsNullOrEmpty(idTurno))
                    {
                        Response.Redirect("tInicio.aspx");
                        return;
                    }

                    DataTable dt = neg.BuscarTurnoPorId(idTurno);
                    if (dt == null || dt.Rows.Count == 0)
                    {
                        Response.Redirect("tInicio.aspx");
                        return;
                    }

                    // Médico solo puede ver sus propios turnos
                    if (usuario.Rol == "medico")
                    {
                        int idMedicoTurno = Convert.ToInt32(dt.Rows[0]["id_medico"]);
                        if (usuario.IDMedico != idMedicoTurno)
                        {
                            Response.Redirect("tInicio.aspx");
                            return;
                        }
                        btnCancelarTurno.Visible = false;
                        btnCancelarTurno.Enabled = false;
                    }

                    CargarDatosDelTurno(dt);
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

        private void CargarDatosDelTurno(DataTable dt)
        {
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

            }
        }

        protected void btnCancelarTurno_Click(object sender, EventArgs e)
        {
            string idTurnoStr = Request.QueryString["id"];

            if (!string.IsNullOrEmpty(idTurnoStr))
            {
                int idTurno = int.Parse(idTurnoStr);
                neg.EliminarTurno(idTurno);
                string bckInicio_ = Request.QueryString["bck_ini"];
                RetornarAlInicio();
            }
        }

        protected void btnVolver_Click(object sender, EventArgs e) { RetornarAlInicio(); }
        private void RetornarAlInicio() {
            string bckInicio_ = Request.QueryString["bck_ini"];
            if (!string.IsNullOrEmpty(bckInicio_) && bckInicio_ == "1")
            {
                Response.Redirect("/Administracion/Inicio.aspx");
            }
            Response.Redirect("tInicio.aspx");
        }
    }
}