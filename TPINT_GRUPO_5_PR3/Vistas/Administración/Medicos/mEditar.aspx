<%@ Page Title="Editar Medico" Language="C#" MasterPageFile="~/Administración/Plantilla.Master" AutoEventWireup="true" CodeBehind="mEditar.aspx.cs" Inherits="Vistas.Administración.Medicos.Medicos" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
        .form-wrapper {
            width: 100%;
            max-width: 860px;
            display: flex;
            flex-direction: column;
            gap: 24px;
        }

        .page-header { display: flex; justify-content: space-between; align-items: flex-start; }
        .page-header h1 { font-size: 22px; color: #1a2332; margin: 0 0 4px 0; font-weight: bold; }
        .page-header p  { font-size: 13px; color: #888888; margin: 0; }

        .btn-volver {
            font-size: 12px; color: #185FA5; text-decoration: none;
            border: 1px solid #185FA5; padding: 7px 14px;
            border-radius: 5px; transition: all 0.2s ease; flex-shrink: 0;
        }
        .btn-volver:hover { background-color: #185FA5; color: #ffffff; }

        .banner-editando {
            background-color: #f0f4fa;
            border: 1px solid #c5d8f0;
            border-radius: 8px;
            padding: 14px 20px;
            display: flex; align-items: center; gap: 14px;
            font-size: 13px; color: #1a2332;
        }
        .banner-editando .avatar-sm {
            width: 38px; height: 38px; border-radius: 50%;
            background-color: #185FA5;
            display: flex; align-items: center; justify-content: center;
            font-size: 13px; font-weight: bold; color: #ffffff; flex-shrink: 0;
        }
        .banner-editando strong { font-weight: bold; }
        .banner-editando small  { color: #666666; font-size: 12px; }

        .form-card {
            background-color: #ffffff;
            border: 1px solid #cccccc;
            border-radius: 8px;
            padding: 24px;
        }

        .form-card h2 {
            font-size: 13px; font-weight: bold; color: #185FA5;
            text-transform: uppercase; letter-spacing: 0.8px;
            margin: 0 0 20px 0; padding-bottom: 10px;
            border-bottom: 1px solid #eeeeee;
        }

        .form-grid { display: grid; grid-template-columns: 1fr 1fr; gap: 16px; }

        .campo { display: flex; flex-direction: column; gap: 5px; }
        .campo.full-width { grid-column: 1 / -1; }

        .campo label { font-size: 12px; font-weight: bold; color: #333333; }
        .campo label .req { color: #c0392b; margin-left: 2px; }

        .campo input[type="text"],
        .campo input[type="password"],
        .campo select {
            height: 36px; padding: 0 10px; font-size: 13px;
            border: 1px solid #cccccc; border-radius: 5px;
            color: #1a2332; background-color: #fafafa;
            box-sizing: border-box; width: 100%;
            font-family: Arial, sans-serif;
        }

        .campo input[readonly],
        .campo-readonly input {
            background-color: #f0f0f0; color: #888888; cursor: not-allowed;
        }

        .campo input:focus, .campo select:focus {
            outline: none; border-color: #185FA5; background-color: #ffffff;
        }

        .grilla-horarios { width: 100%; border-collapse: collapse; font-size: 13px; }
        .grilla-horarios th {
            text-align: left; font-size: 11px; font-weight: bold;
            text-transform: uppercase; letter-spacing: 0.5px;
            color: #888888; padding: 0 0 10px 0; border-bottom: 1px solid #eeeeee;
        }
        .grilla-horarios td { padding: 10px 0; border-bottom: 1px solid #f0f0f0; }
        .grilla-horarios tr:last-child td { border-bottom: none; }
        .grilla-horarios select,
        .grilla-horarios input[type="text"] {
            height: 34px; padding: 0 8px; font-size: 12px;
            border: 1px solid #cccccc; border-radius: 4px;
            color: #1a2332; background-color: #fafafa;
            box-sizing: border-box; width: 100%; font-family: Arial, sans-serif;
        }

        .horarios-header {
            display: flex; justify-content: space-between;
            align-items: center; margin-bottom: 16px;
        }
        .horarios-header h2 { margin: 0; border: none; padding: 0; }

        .seccion-nota {
            font-size: 11px; color: #888888;
            background-color: #f5f8fc; border: 1px solid #dde8f5;
            border-radius: 5px; padding: 8px 12px; margin-bottom: 16px;
        }

        .validador { font-size: 11px; color: #c0392b; display: block; }

        .form-acciones { display: flex; justify-content: flex-end; gap: 12px; }

        .btn-guardar {
            height: 38px; padding: 0 28px;
            background-color: #185FA5; color: #ffffff;
            border: none; border-radius: 5px;
            font-size: 14px; font-weight: bold; cursor: pointer;
            transition: background-color 0.2s ease;
        }
        .btn-guardar:hover { background-color: #0C447C; }

        .btn-cancelar {
            height: 38px; padding: 0 20px;
            background-color: transparent; color: #185FA5;
            border: 1px solid #185FA5; border-radius: 5px;
            font-size: 13px; cursor: pointer; transition: all 0.2s ease;
        }
        .btn-cancelar:hover { background-color: #185FA5; color: #ffffff; }

        .btn-agregar {
            height: 34px; padding: 0 14px;
            background-color: transparent; color: #185FA5;
            border: 1px solid #185FA5; border-radius: 5px;
            font-size: 12px; font-weight: bold; cursor: pointer;
            transition: all 0.2s ease;
        }
        .btn-agregar:hover { background-color: #185FA5; color: #ffffff; }

        .btn-eliminar-fila {
            height: 34px; padding: 0 12px;
            background-color: #fdecea; color: #c0392b;
            border: none; border-radius: 5px;
            font-size: 13px; font-weight: bold; cursor: pointer;
        }
        .btn-eliminar-fila:hover { background-color: #c0392b; color: #ffffff; }
    </style>
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="form-wrapper">

        <div class="page-header">
            <div>
                <h1>Editar Médico</h1>
                <p>Modificá los datos. El DNI y el legajo no se pueden editar.</p>
            </div>
            <a href="~/Administración/Medicos/Medicos.aspx" class="btn-volver">← Volver al listado</a>
        </div>

        <asp:Label ID="lblMensaje" runat="server" Visible="false" />

        <div class="banner-editando">
            <div class="avatar-sm">
                <asp:Label ID="lblIniciales" runat="server" Text="CM" />
            </div>
            <div>
                <strong><asp:Label ID="lblNombreCompleto" runat="server" Text="Dr. Carlos Méndez" /></strong>
                &nbsp;—&nbsp; Legajo: <asp:Label ID="lblLegajoBanner" runat="server" Text="MED-0012" />
                <br />
                <small>ID médico: <asp:Label ID="lblIdMedico" runat="server" Text="12" />
                &nbsp;·&nbsp; <asp:Label ID="lblEspecialidadBanner" runat="server" Text="Cardiología" /></small>
            </div>
        </div>

        <!-- ========================
             DATOS PERSONALES
        ========================= -->
        <div class="form-card">
            <h2>Datos Personales</h2>
            <div class="form-grid">

                <div class="campo campo-readonly">
                    <label>DNI <small style="color:#888;font-weight:normal;">(no editable)</small></label>
                    <asp:TextBox ID="txtDni" runat="server" ReadOnly="true" Text="22481903" />
                </div>

                <div class="campo campo-readonly">
                    <label>Legajo <small style="color:#888;font-weight:normal;">(no editable)</small></label>
                    <asp:TextBox ID="txtLegajo" runat="server" ReadOnly="true" Text="MED-0012" />
                </div>

                <div class="campo">
                    <label>Nombre <span class="req">*</span></label>
                    <asp:TextBox ID="txtNombre" runat="server" MaxLength="100" Text="Carlos" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtNombre"
                        CssClass="validador" ErrorMessage="El nombre es requerido." Display="Dynamic" />
                </div>

                <div class="campo">
                    <label>Apellido <span class="req">*</span></label>
                    <asp:TextBox ID="txtApellido" runat="server" MaxLength="100" Text="Méndez" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtApellido"
                        CssClass="validador" ErrorMessage="El apellido es requerido." Display="Dynamic" />
                </div>

                <div class="campo">
                    <label>Sexo <span class="req">*</span></label>
                    <asp:DropDownList ID="ddlSexo" runat="server">
                        <asp:ListItem Value="">-- Seleccioná --</asp:ListItem>
                        <asp:ListItem Value="M" Selected="True">Masculino</asp:ListItem>
                        <asp:ListItem Value="F">Femenino</asp:ListItem>
                        <asp:ListItem Value="X">No binario</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlSexo"
                        InitialValue="" CssClass="validador"
                        ErrorMessage="El sexo es requerido." Display="Dynamic" />
                </div>

                <div class="campo">
                    <label>Fecha de Nacimiento <span class="req">*</span></label>
                    <asp:TextBox ID="txtFechaNac" runat="server" TextMode="Date" Text="1978-03-14" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtFechaNac"
                        CssClass="validador" ErrorMessage="La fecha es requerida." Display="Dynamic" />
                </div>

                <div class="campo full-width">
                    <label>Nacionalidad <span class="req">*</span></label>
                    <asp:TextBox ID="txtNacionalidad" runat="server" MaxLength="100" Text="Argentina" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtNacionalidad"
                        CssClass="validador" ErrorMessage="La nacionalidad es requerida." Display="Dynamic" />
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
                    <asp:TextBox ID="txtDireccion" runat="server" MaxLength="200" Text="Av. Santa Fe 2340, CABA" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtDireccion"
                        CssClass="validador" ErrorMessage="La dirección es requerida." Display="Dynamic" />
                </div>

                <div class="campo">
                    <label>Provincia <span class="req">*</span></label>
                    <asp:DropDownList ID="ddlProvincia" runat="server" AutoPostBack="true"
                        OnSelectedIndexChanged="ddlProvincia_SelectedIndexChanged">
                        <asp:ListItem Value="">-- Seleccioná --</asp:ListItem>
                        <asp:ListItem Value="1" Selected="True">Buenos Aires</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlProvincia"
                        InitialValue="" CssClass="validador"
                        ErrorMessage="La provincia es requerida." Display="Dynamic" />
                </div>

                <div class="campo">
                    <label>Localidad <span class="req">*</span></label>
                    <asp:DropDownList ID="ddlLocalidad" runat="server">
                        <asp:ListItem Value="1" Selected="True">CABA</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlLocalidad"
                        InitialValue="" CssClass="validador"
                        ErrorMessage="La localidad es requerida." Display="Dynamic" />
                </div>

                <div class="campo">
                    <label>Teléfono <span class="req">*</span></label>
                    <asp:TextBox ID="txtTelefono" runat="server" MaxLength="20" Text="+54 11 4823-9901" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtTelefono"
                        CssClass="validador" ErrorMessage="El teléfono es requerido." Display="Dynamic" />
                </div>

                <div class="campo">
                    <label>Correo Electrónico <span class="req">*</span></label>
                    <asp:TextBox ID="txtEmail" runat="server" MaxLength="200" Text="c.mendez@clinica.com.ar" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmail"
                        CssClass="validador" ErrorMessage="El correo es requerido." Display="Dynamic" />
                    <asp:RegularExpressionValidator runat="server" ControlToValidate="txtEmail"
                        CssClass="validador" ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"
                        ErrorMessage="Formato de correo inválido." Display="Dynamic" />
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
                    <asp:DropDownList ID="ddlEspecialidad" runat="server">
                        <asp:ListItem Value="">-- Seleccioná --</asp:ListItem>
                        <asp:ListItem Value="1" Selected="True">Cardiología</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlEspecialidad"
                        InitialValue="" CssClass="validador"
                        ErrorMessage="La especialidad es requerida." Display="Dynamic" />
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
            <p class="seccion-nota">
                Los cambios en horarios reemplazarán los bloques actuales del médico.
            </p>

            <asp:GridView ID="gvHorarios" runat="server"
                AutoGenerateColumns="false"
                CssClass="grilla-horarios"
                ShowHeader="true"
                GridLines="None"
                OnRowDeleting="gvHorarios_RowDeleting">
                <Columns>

                    <asp:TemplateField HeaderText="Día de la semana">
                        <ItemTemplate>
                            <asp:DropDownList ID="ddlDia" runat="server"
                                SelectedValue='<%# Bind("DiaSemana") %>'>
                                <asp:ListItem Value="1">Lunes</asp:ListItem>
                                <asp:ListItem Value="2">Martes</asp:ListItem>
                                <asp:ListItem Value="3">Miércoles</asp:ListItem>
                                <asp:ListItem Value="4">Jueves</asp:ListItem>
                                <asp:ListItem Value="5">Viernes</asp:ListItem>
                                <asp:ListItem Value="6">Sábado</asp:ListItem>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Hora inicio">
                        <ItemTemplate>
                            <asp:TextBox ID="txtHoraInicio" runat="server"
                                Text='<%# Bind("HoraInicio") %>'
                                MaxLength="5" placeholder="08:00" />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Hora fin">
                        <ItemTemplate>
                            <asp:TextBox ID="txtHoraFin" runat="server"
                                Text='<%# Bind("HoraFin") %>'
                                MaxLength="5" placeholder="12:00" />
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

        <!-- ========================
             ACCESO AL SISTEMA
        ========================= -->
        <div class="form-card">
            <h2>Acceso al Sistema</h2>
            <p class="seccion-nota">
                Dejá los campos de contraseña vacíos si no querés modificarla.
            </p>
            <div class="form-grid">

                <div class="campo full-width">
                    <label>Nombre de usuario</label>
                    <asp:TextBox ID="txtUsername" runat="server" MaxLength="100" Text="cmendez" />
                </div>

                <div class="campo">
                    <label>Nueva contraseña</label>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" MaxLength="200" />
                </div>

                <div class="campo">
                    <label>Repetir nueva contraseña</label>
                    <asp:TextBox ID="txtPasswordConfirm" runat="server" TextMode="Password" MaxLength="200" />
                    <asp:CompareValidator runat="server"
                        ControlToValidate="txtPasswordConfirm"
                        ControlToCompare="txtPassword"
                        CssClass="validador"
                        ErrorMessage="Las contraseñas no coinciden." Display="Dynamic" />
                </div>

            </div>
        </div>

        <div class="form-acciones">
            <asp:Button ID="btnCancelar" runat="server" Text="Cancelar"
                CssClass="btn-cancelar" CausesValidation="false"
                OnClick="btnCancelar_Click" />
            <asp:Button ID="btnGuardar" runat="server" Text="Guardar cambios"
                CssClass="btn-guardar" OnClick="btnGuardar_Click" />
        </div>

    </div>

</asp:Content>