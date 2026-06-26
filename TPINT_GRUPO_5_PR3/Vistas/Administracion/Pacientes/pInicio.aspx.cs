using Entidades;
using Negocio;
using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas.Administracion.Pacientes
{
    public partial class Pacientes : System.Web.UI.Page
    {
        PacientesNegocio pacientesNegocio = new PacientesNegocio();

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                AccesoPagina acceso = new AccesoPagina();
                acceso.VerificarAcceso("admin");
                Usuario usuario = (Usuario)Session["zezion"];

                if (!IsPostBack)
                {
                    int cantidadPacientes = CargarPacientes();
                    lblCantidad.Text = cantidadPacientes.ToString();
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

        private int CargarPacientes()
        {
            DataTable tabla = pacientesNegocio.getTabla();
            gvPacientes.DataSource = tabla;
            gvPacientes.DataBind();
            return tabla.Rows.Count;
        }

        protected void BtnBuscar_Click(object sender, EventArgs e)
        {
            string texto = txtBuscar.Text.Trim();

            string estado = ddlEstado.SelectedValue;

            string sexo = ddlSexo.SelectedValue;


            DataTable tabla = pacientesNegocio.BuscarPacientes(texto, sexo, estado);

            gvPacientes.DataSource = tabla;
            gvPacientes.DataBind();
        }

        protected void gvPacientes_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvPacientes.PageIndex = e.NewPageIndex;
            CargarPacientes();
        }

        protected void BtnLimpiar_Click(object sender, EventArgs e)
        {
            txtBuscar.Text = string.Empty;
            ddlEstado.SelectedIndex = 0;
            ddlSexo.SelectedIndex = 0;

            CargarPacientes();
        }

        protected void gvPacientes_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                bool activo = Convert.ToBoolean(DataBinder.Eval(e.Row.DataItem, "Activo"));

                if (!activo)
                {
                    e.Row.CssClass = "inactivo";
                }
            }
        }

        protected void gvPacientes_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int idPaciente;
            switch (e.CommandName)
            {
                case "Ver":
                {
                        idPaciente = Convert.ToInt32(e.CommandArgument);

                        Response.Redirect("pVer.aspx?idPaciente=" + idPaciente);

                        break;
                }

                case "Edit":
                {
                        idPaciente = Convert.ToInt32(e.CommandArgument);
                        Response.Redirect("pEditar.aspx?idPaciente=" + idPaciente);
                        break;
                }

                case "ToggleEstado": //ELIMINAR/BAJA LOGICA
                {

                        idPaciente = Convert.ToInt32(e.CommandArgument);


                        bool activoActual = pacientesNegocio.ObtenerEstadoPaciente(idPaciente);


                        pacientesNegocio.CambiarEstado(idPaciente, !activoActual);

                        CargarPacientes();
                        break;
                }
            }

        }
    }
}