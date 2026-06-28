<%@ Page Title="Medico - Editar" Language="C#" MasterPageFile="~/Administracion/Plantilla.Master" AutoEventWireup="true" CodeBehind="mEditar.aspx.cs" Inherits="Vistas.Administracion.Medicos.EditarMedico" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
        .grilla-horarios {
            width: 100%;
            border-collapse: collapse;
            font-size: 13px;
        }

            .grilla-horarios th {
                text-align: left;
                font-size: 11px;
                font-weight: bold;
                text-transform: uppercase;
                letter-spacing: 0.5px;
                color: #888888;
                padding: 0 0 10px 0;
                border-bottom: 1px solid #eeeeee;
            }

            .grilla-horarios td {
                padding: 10px 0;
                border-bottom: 1px solid #f0f0f0;
            }

            .grilla-horarios tr:last-child td {
                border-bottom: none;
            }

            .grilla-horarios select,
            .grilla-horarios input[type="text"],
            .grilla-horarios input[type="time"] {
                height: 34px;
                padding: 0 8px;
                font-size: 12px;
                border: 1px solid #cccccc;
                border-radius: 4px;
                color: #1a2332;
                background-color: #fafafa;
                box-sizing: border-box;
                width: 100%;
                font-family: Arial, sans-serif;
            }

        .horarios-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 16px;
        }

            .horarios-header h2 {
                margin: 0;
                border: none;
                padding: 0;
            }

        .btn-agregar {
            height: 34px;
            padding: 0 14px;
            background-color: transparent;
            color: #185FA5;
            border: 1px solid #185FA5;
            border-radius: 5px;
            font-size: 12px;
            font-weight: bold;
            cursor: pointer;
            transition: all 0.2s ease;
        }

            .btn-agregar:hover {
                background-color: #185FA5;
                color: #ffffff;
            }

        .btn-eliminar-fila {
            height: 34px;
            padding: 0 12px;
            background-color: #fdecea;
            color: #c0392b;
            border: none;
            border-radius: 5px;
            font-size: 13px;
            font-weight: bold;
            cursor: pointer;
        }

            .btn-eliminar-fila:hover {
                background-color: #c0392b;
                color: #ffffff;
            }
    </style>
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="form-wrapper">
        <div class="page-header">
            <div>
                <h1>Editar Médico</h1>
            </div>
            <a href="/Administracion/Medicos/mInicio.aspx" class="btn-volver"
                onclick="return confirm('¿Descartás los cambios y volvés al listado?');">← Volver al listado</a>
        </div>

        <asp:Label ID="lblMensaje" runat="server" Visible="false" />

        <div class="banner-editando">
            <div>
                <strong>
                    <asp:Label ID="lblDocGen" runat="server" Text="" />
                    <asp:Label ID="lblNombre" runat="server" Text="" />
                    <asp:Label ID="lblApellido" runat="server" Text="" />
                </strong>
                &nbsp;—&nbsp; Legajo:
                <asp:Label ID="lblLegajoBanner" runat="server" Text="" />
                <br />
                <small>ID médico:
                    <asp:Label ID="lblIdMedico" runat="server" Text="" />
                    &nbsp;·&nbsp;
                    <asp:DropDownList ID="ddlEspecialidadBanner" runat="server"
                        Style="height: 22px; padding: 0 4px; font-size: 12px; border: 1px solid #c5d8f0; border-radius: 4px; background: transparent; color: #1a2332;" Enabled="False" /></small>
            </div>
        </div>

        <!-- ========================
             DATOS PERSONALES
        ========================= -->
        <div class="form-card">
            <h2>Datos Personales</h2>
            <div class="form-grid">

                <div class="campo campo-readonly">
                    <label>DNI <small style="color: #888; font-weight: normal;">(no editable)</small></label>
                    <asp:TextBox ID="txtDni" runat="server" ReadOnly="true" />
                </div>

                <div class="campo campo-readonly">
                    <label>Legajo <small style="color: #888; font-weight: normal;">(no editable)</small></label>
                    <asp:TextBox ID="txtLegajo" runat="server" ReadOnly="true" />
                </div>

                <div class="campo">
                    <label>Nombre <span class="req">*</span></label>
                    <asp:TextBox ID="txtNombreForm" runat="server" MaxLength="100" />
                </div>

                <div class="campo">
                    <label>Apellido <span class="req">*</span></label>
                    <asp:TextBox ID="txtApellidoForm" runat="server" MaxLength="100" />
                </div>

                <div class="campo">
                    <label>Sexo <span class="req">*</span></label>
                    <asp:DropDownList ID="ddlSexo" runat="server">
                        <asp:ListItem Value="">-- Seleccioná --</asp:ListItem>
                        <asp:ListItem Value="M">Masculino</asp:ListItem>
                        <asp:ListItem Value="F">Femenino</asp:ListItem>
                        <asp:ListItem Value="X">No binario</asp:ListItem>
                    </asp:DropDownList>
                </div>

                <div class="campo">
                    <label>Fecha de Nacimiento <span class="req">*</span></label>
                    <asp:TextBox ID="txtFechaNac" runat="server" TextMode="Date" />
                </div>

                <div class="campo full-width">
                    <label>Nacionalidad <span class="req">*</span></label>
                    <asp:TextBox ID="txtNacionalidad" runat="server" MaxLength="100" />
                </div>
            </div>
        </div>

        <!-- ========================
             CONTACTO Y UBICACIÓN
        ========================= -->
        <div class="form-card">
            <h2>Contacto y Ubicación</h2>
            <div class="form-grid">

                <div class="campo full-width">
                    <label>Dirección <span class="req">*</span></label>
                    <asp:TextBox ID="txtDireccion" runat="server" MaxLength="200" />
                </div>

                <div class="campo">
                    <label>Provincia <span class="req">*</span></label>
                    <asp:DropDownList ID="ddlProvincia" runat="server" AutoPostBack="true"
                        OnSelectedIndexChanged="ddlProvincia_SelectedIndexChanged" />
                </div>

                <div class="campo">
                    <label>Localidad <span class="req">*</span></label>
                    <asp:DropDownList ID="ddlLocalidad" runat="server" />
                </div>

                <div class="campo">
                    <label>Teléfono <span class="req">*</span></label>
                    <asp:TextBox ID="txtTelefono" runat="server" MaxLength="20" />
                </div>

                <div class="campo">
                    <label>Correo Electrónico <span class="req">*</span></label>
                    <asp:TextBox ID="txtEmail" runat="server" MaxLength="200" />
                </div>

            </div>
        </div>

        <!-- ========================
             DATOS PROFESIONALES
        ========================= -->
        <div class="form-card">
            <h2>Datos Profesionales</h2>
            <div class="form-grid">
                <div class="campo full-width">
                    <label>Especialidad <span class="req">*</span></label>
                    <asp:DropDownList ID="ddlEspecialidad" runat="server" />
                </div>
            </div>
        </div>

        <!-- ========================
             HORARIOS DE ATENCIÓN
        ========================= -->
        <div class="form-card">
            <div class="horarios-header">
                <h2>Horarios de Atención</h2>
                <asp:Button ID="btnAgregarHorario" runat="server" Text="+ Agregar día"
                    CssClass="btn-agregar" CausesValidation="false"
                    OnClick="btnAgregarHorario_Click" />
            </div>

            <asp:GridView ID="gvHorarios" runat="server"
                AutoGenerateColumns="false"
                CssClass="grilla-horarios"
                ShowHeader="true"
                GridLines="None"
                DataKeyNames="id_horario"
                OnRowDeleting="gvHorarios_RowDeleting">
                <EmptyDataTemplate>
                    <p style="color: #888; font-size: 13px; margin: 8px 0;">Sin horarios registrados. Hacé clic en &ldquo;+ Agregar día&rdquo; para agregar uno.</p>
                </EmptyDataTemplate>
                <Columns>

                    <asp:TemplateField HeaderText="Día de la semana">
                        <ItemTemplate>
                            <asp:DropDownList ID="ddlDia" runat="server"
                                SelectedValue='<%# Eval("DiaSemana").ToString() %>'>
                                <asp:ListItem Value="1">Lunes</asp:ListItem>
                                <asp:ListItem Value="2">Martes</asp:ListItem>
                                <asp:ListItem Value="3">Miércoles</asp:ListItem>
                                <asp:ListItem Value="4">Jueves</asp:ListItem>
                                <asp:ListItem Value="5">Viernes</asp:ListItem>
                                <asp:ListItem Value="6">Sábado</asp:ListItem>
                                <asp:ListItem Value="7">Domingo</asp:ListItem>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Hora inicio">
                        <ItemTemplate>
                            <asp:TextBox ID="txtHoraInicio" runat="server"
                                Text='<%# Eval("HoraInicio") %>'
                                TextMode="Time" />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Hora fin">
                        <ItemTemplate>
                            <asp:TextBox ID="txtHoraFin" runat="server"
                                Text='<%# Eval("HoraFin") %>'
                                TextMode="Time" />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="">
                        <ItemTemplate>
                            <asp:LinkButton ID="btnEliminarFila" runat="server"
                                CommandName="Delete"
                                CssClass="btn-eliminar-fila"
                                CausesValidation="false"
                                OnClientClick="return confirm('¿Eliminar este horario?');">×</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>