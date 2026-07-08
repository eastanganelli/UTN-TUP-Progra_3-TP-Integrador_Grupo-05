using Entidades;
using Negocio;
using System;
using System.Data;
using System.Web.UI.WebControls;

namespace Vistas.Administracion.Turnos
{
    public partial class Turnos : System.Web.UI.Page
    {
        private TurnosNegocio _negocioTurnos = new TurnosNegocio();
        private EspecialidadesNegocio _negocioEspecialidad = new EspecialidadesNegocio();

        // Helper usado en ASPX data-binding para el botón de borrar
        protected bool EsAdmin()
        {
            return ((Usuario)Session["zezion"])?.Rol == "admin";
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                AccesoPagina acceso = new AccesoPagina();
                acceso.VerificarAcceso("admin", "medico");
                Usuario usuario = (Usuario)Session["zezion"];

                if (!IsPostBack)
                {
                    bool esMedico = usuario.Rol == "medico";

                    if (esMedico)
                    {
                        // Medico: ocultar filtros no aplicables y botón nuevo turno
                        btnNuevoTurno.Visible        = false;
                        pnlFiltroEspecialidad.Visible = false;
                        pnlFiltroDesde.Visible        = false;
                        pnlFiltroHasta.Visible        = false;
                        txtBuscar.Attributes["placeholder"] = "Buscar por paciente...";
                    }
                    else
                    {
                        CargarEspecialidades();
                    }

                    CargarListadoDeTurnos();
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

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            dgvTurnos.PageIndex = 0;
            CargarListadoDeTurnos();
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            txtBuscar.Text = "";
            if (ddlEspecialidad.Items.Count > 0) ddlEspecialidad.SelectedIndex = 0;
            txtDesde.Text = "";
            txtHasta.Text = "";
            ddlEstado.SelectedIndex = 0;
            CargarListadoDeTurnos();
        }

        protected void btnNuevoTurno_Click(object sender, EventArgs e)
        {
            Response.Redirect("tNuevo.aspx");
        }

        protected void dgvTurnos_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            dgvTurnos.PageIndex = e.NewPageIndex;
            CargarListadoDeTurnos();
        }

        protected void dgvTurnos_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Baja" && EsAdmin())
            {
                _negocioTurnos.EliminarTurnoPermanente(Convert.ToInt32(e.CommandArgument));
                CargarListadoDeTurnos();
            }
        }

        private void CargarListadoDeTurnos()
        {
            try
            {
                Usuario usuario = (Usuario)Session["zezion"];
                bool esMedico   = usuario.Rol == "medico";

                DataTable dtOriginal = esMedico
                    ? _negocioTurnos.ObtenerTurnosPorMedico((int)usuario.IDMedico)
                    : _negocioTurnos.ListarTurnos();

                DataTable dtFiltrado = dtOriginal.Clone();

                foreach (DataRow fila in dtOriginal.Rows)
                {
                    // Buscar: medico filtra solo por paciente; admin por paciente y medico
                    if (!string.IsNullOrWhiteSpace(txtBuscar.Text))
                    {
                        string busqueda = txtBuscar.Text.Trim().ToLower();
                        string paciente = fila["paciente"].ToString().ToLower();

                        bool coincide = paciente.Contains(busqueda);
                        if (!esMedico)
                            coincide = coincide || fila["medico"].ToString().ToLower().Contains(busqueda);

                        if (!coincide) continue;
                    }

                    // Filtros exclusivos de admin
                    if (!esMedico)
                    {
                        if (ddlEspecialidad.SelectedIndex > 0)
                        {
                            string espSeleccionada = ddlEspecialidad.SelectedItem.Text.Trim().ToLower();
                            if (fila["especialidad"].ToString().ToLower() != espSeleccionada) continue;
                        }

                        // fecha columna viene como "dd/MM/yyyy"
                        if (!string.IsNullOrWhiteSpace(txtDesde.Text) || !string.IsNullOrWhiteSpace(txtHasta.Text))
                        {
                            if (DateTime.TryParseExact(fila["fecha"].ToString(), "dd/MM/yyyy",
                                System.Globalization.CultureInfo.InvariantCulture,
                                System.Globalization.DateTimeStyles.None, out DateTime fechaFila))
                            {
                                if (!string.IsNullOrWhiteSpace(txtDesde.Text) &&
                                    DateTime.TryParse(txtDesde.Text, out DateTime desde) &&
                                    fechaFila.Date < desde.Date)
                                    continue;

                                if (!string.IsNullOrWhiteSpace(txtHasta.Text) &&
                                    DateTime.TryParse(txtHasta.Text, out DateTime hasta) &&
                                    fechaFila.Date > hasta.Date)
                                    continue;
                            }
                        }
                    }

                    // Estado: aplica a todos
                    if (ddlEstado.SelectedIndex > 0)
                    {
                        string estSeleccionado = ddlEstado.SelectedItem.Text.Trim().ToLower();
                        if (fila["estado"].ToString().ToLower() != estSeleccionado) continue;
                    }

                    dtFiltrado.ImportRow(fila);
                }

                dgvTurnos.DataSource = dtFiltrado;
                dgvTurnos.DataBind();

                lblContador.Text = dtFiltrado.Rows.Count.ToString();

                int porPagina    = dgvTurnos.PageSize;
                int totalPaginas = (int)Math.Ceiling((double)dtFiltrado.Rows.Count / porPagina);
                if (totalPaginas == 0) totalPaginas = 1;
                lblTotalPaginas.Text = totalPaginas.ToString();

                if (dgvTurnos.PageIndex >= totalPaginas)
                    dgvTurnos.PageIndex = totalPaginas - 1;
                lblPaginaActual.Text = (dgvTurnos.PageIndex + 1).ToString();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error al cargar turnos: " + ex.Message.Replace("'", "\\'") + "');</script>");
            }
        }

        private void CargarEspecialidades()
        {
            DataTable dt = _negocioEspecialidad.ObtenerEspecialidades();
            ddlEspecialidad.DataSource     = dt;
            ddlEspecialidad.DataValueField = "id_especialidad";
            ddlEspecialidad.DataTextField  = "nombre";
            ddlEspecialidad.DataBind();
            ddlEspecialidad.Items.Insert(0, new ListItem(" Seleccione Especialidad ", "0"));
        }
    }
}
