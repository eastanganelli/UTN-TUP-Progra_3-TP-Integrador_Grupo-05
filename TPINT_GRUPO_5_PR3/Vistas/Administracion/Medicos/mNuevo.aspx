<%@ Page Title="Medico - Nuevo" Language="C#" MasterPageFile="~/Administracion/Plantilla.Master" AutoEventWireup="true" CodeBehind="mNuevo.aspx.cs" Inherits="Vistas.Administracion.Medicos.NuevoMedico" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
        .form-grid.una-col { grid-template-columns: 1fr; }

        .grilla-horarios { width: 100%; border-collapse: collapse; font-size: 13px; }
        .grilla-horarios th {
            text-align: left; font-size: 11px; font-weight: bold;
            text-transform: uppercase; letter-spacing: 0.5px;
            color: #888888; padding: 0 0 10px 0;
            border-bottom: 1px solid #eeeeee;
        }
        .grilla-horarios td { padding: 10px 0; border-bottom: 1px solid #f0f0f0; }
        .grilla-horarios tr:last-child td { border-bottom: none; }

        .grilla-horarios select,
        .grilla-horarios input[type="text"] {
            height: 34px; padding: 0 8px; font-size: 12px;
            border: 1px solid #cccccc; border-radius: 4px;
            color: #1a2332; background-color: #fafafa;
            box-sizing: border-box; width: 100%;
            font-family: Arial, sans-serif;
        }

        .horarios-header {
            display: flex; justify-content: space-between;
            align-items: center; margin-bottom: 16px;
        }
        .horarios-header h2 { margin: 0; border: none; padding: 0; }

        .btn-limpiar {
            height: 38px; padding: 0 20px;
            background-color: transparent; color: #185FA5;
            border: 1px solid #185FA5; border-radius: 5px;
            font-size: 13px; cursor: pointer; transition: all 0.2s ease;
        }
        .btn-limpiar:hover { background-color: #185FA5; color: #ffffff; }

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
            transition: background-color 0.2s ease;
        }
        .btn-eliminar-fila:hover { background-color: #c0392b; color: #ffffff; }

        .msg-ok    { background-color: #e6f5ee; color: #1a7a4a; border: 1px solid #a9dfc4; border-radius: 5px; padding: 10px; font-size: 13px; }
        .msg-error { background-color: #fdecea; color: #c0392b; border: 1px solid #f5b7b1; border-radius: 5px; padding: 10px; font-size: 13px; }
    </style>
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="form-wrapper">

        <!-- ENCABEZADO -->
        <div class="page-header">
            <div>
                <h1>Nuevo Médico</h1>
                <p>Completá los datos para registrar un nuevo médico en el sistema</p>
            </div>
            <a href="~/Administracion/Medicos/Medicos.aspx" class="btn-volver">← Volver al listado</a>
        </div>

        <!-- Mensaje resultado -->
        <asp:Label ID="lblMensaje" runat="server" Visible="false" />

        <!-- ========================
             DATOS PERSONALES
        ========================= -->
        <div class="form-card">
            <h2>Datos Personales</h2>
            <div class="form-grid">

                <div class="campo">
                    <label>Nombre <span class="req">*</span></label>
                    <asp:TextBox ID="txtNombre" runat="server" MaxLength="100" CssClass="" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtNombre"
                        CssClass="validador" ErrorMessage="El nombre es requerido." Display="Dynamic" />
                </div>

                <div class="campo">
                    <label>Apellido <span class="req">*</span></label>
                    <asp:TextBox ID="txtApellido" runat="server" MaxLength="100" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtApellido"
                        CssClass="validador" ErrorMessage="El apellido es requerido." Display="Dynamic" />
                </div>

                <div class="campo">
                    <label>DNI <span class="req">*</span></label>
                    <asp:TextBox ID="txtDni" runat="server" MaxLength="8" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtDni"
                        CssClass="validador" ErrorMessage="El DNI es requerido." Display="Dynamic" />
                    <asp:RegularExpressionValidator runat="server" ControlToValidate="txtDni"
                        CssClass="validador" ValidationExpression="^\d{7,8}$"
                        ErrorMessage="DNI inválido (7 u 8 dígitos numéricos)." Display="Dynamic" />
                </div>

                <div class="campo">
                    <label>Legajo <span class="req">*</span></label>
                    <asp:TextBox ID="txtLegajo" runat="server" MaxLength="20" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtLegajo"
                        CssClass="validador" ErrorMessage="El legajo es requerido." Display="Dynamic" />
                </div>

                <div class="campo">
                    <label>Sexo <span class="req">*</span></label>
                    <asp:DropDownList ID="ddlSexo" runat="server">
                        <asp:ListItem Value="">-- Seleccioná --</asp:ListItem>
                        <asp:ListItem Value="M">Masculino</asp:ListItem>
                        <asp:ListItem Value="F">Femenino</asp:ListItem>
                        <asp:ListItem Value="X">No binario</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlSexo"
                        InitialValue="" CssClass="validador"
                        ErrorMessage="El sexo es requerido." Display="Dynamic" />
                </div>

                <div class="campo">
                    <label>Fecha de Nacimiento <span class="req">*</span></label>
                    <asp:TextBox ID="txtFechaNac" runat="server" TextMode="Date" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtFechaNac"
                        CssClass="validador" ErrorMessage="La fecha de nacimiento es requerida." Display="Dynamic" />
                </div>

                <div class="campo full-width">
                    <label>Nacionalidad <span class="req">*</span></label>
                    <asp:TextBox ID="txtNacionalidad" runat="server" MaxLength="100" />
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
                    <asp:TextBox ID="txtDireccion" runat="server" MaxLength="200" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtDireccion"
                        CssClass="validador" ErrorMessage="La dirección es requerida." Display="Dynamic" />
                </div>

                <div class="campo">
                    <label>Provincia <span class="req">*</span></label>
                    <asp:DropDownList ID="ddlProvincia" runat="server" AutoPostBack="true"
                        OnSelectedIndexChanged="ddlProvincia_SelectedIndexChanged">
                        <asp:ListItem Value="">-- Seleccioná --</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlProvincia"
                        InitialValue="" CssClass="validador"
                        ErrorMessage="La provincia es requerida." Display="Dynamic" />
                </div>

                <div class="campo">
                    <label>Localidad <span class="req">*</span></label>
                    <asp:DropDownList ID="ddlLocalidad" runat="server">
                        <asp:ListItem Value="">-- Seleccioná provincia primero --</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlLocalidad"
                        InitialValue="" CssClass="validador"
                        ErrorMessage="La localidad es requerida." Display="Dynamic" />
                </div>

                <div class="campo">
                    <label>Teléfono <span class="req">*</span></label>
                    <asp:TextBox ID="txtTelefono" runat="server" MaxLength="20" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtTelefono"
                        CssClass="validador" ErrorMessage="El teléfono es requerido." Display="Dynamic" />
                </div>

                <div class="campo">
                    <label>Correo Electrónico <span class="req">*</span></label>
                    <asp:TextBox ID="txtEmail" runat="server" MaxLength="200" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmail"
                        CssClass="validador" ErrorMessage="El correo es requerido." Display="Dynamic" />
                    <asp:RegularExpressionValidator runat="server" ControlToValidate="txtEmail"
                        CssClass="validador" ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"
                        ErrorMessage="El formato del correo no es válido." Display="Dynamic" />
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
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlEspecialidad"
                        InitialValue="" CssClass="validador"
                        ErrorMessage="La especialidad es requerida." Display="Dynamic" />
                </div>
            </div>
        </div>

        <!-- ========================
             HORARIOS DE ATENCIÓN
             Se manejan con un GridView editable + botón Agregar (postback puro)
        ========================= -->
        <div class="form-card">
            <div class="horarios-header">
                <h2>Horarios de Atención</h2>
                <asp:Button ID="btnAgregarHorario" runat="server" Text="+ Agregar día"
                    CssClass="btn-agregar" CausesValidation="false"
                    OnClick="btnAgregarHorario_Click" />
            </div>
            <p class="seccion-nota">
                Cada fila representa un bloque semanal (día, hora inicio, hora fin).
                Usá el botón para agregar más días y "×" para eliminar una fila.
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
                                OnClientClick="return confirm('¿Eliminár este horario?');">×</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>
            </asp:GridView>
        </div>

        <!-- ========================
             ACCESO AL SISTEMA
        ========================= -->
        <div class="form-card">
            <h2>Acceso al Sistema <small style="color:#888;font-size:11px;text-transform:none;letter-spacing:0;">(opcional)</small></h2>
            <p class="seccion-nota">
                Si completás usuario y contraseña, el médico podrá acceder al sistema.
                Podés dejarlo en blanco y asignarlo más tarde desde Editar.
            </p>
            <div class="form-grid">

                <div class="campo full-width">
                    <label>Nombre de usuario</label>
                    <asp:TextBox ID="txtUsername" runat="server" MaxLength="100" />
                </div>

                <div class="campo">
                    <label>Contraseña</label>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" MaxLength="200" />
                </div>

                <div class="campo">
                    <label>Repetir contraseña</label>
                    <asp:TextBox ID="txtPasswordConfirm" runat="server" TextMode="Password" MaxLength="200" />
                    <asp:CompareValidator runat="server"
                        ControlToValidate="txtPasswordConfirm"
                        ControlToCompare="txtPassword"
                        CssClass="validador"
                        ErrorMessage="Las contraseñas no coinciden." Display="Dynamic" />
                </div>

            </div>
        </div>

        <!-- ACCIONES -->
        <div class="form-acciones">
            <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar"
                CssClass="btn-limpiar" CausesValidation="false"
                OnClick="btnLimpiar_Click" />
            <asp:Button ID="btnGuardar" runat="server" Text="Guardar médico"
                CssClass="btn-guardar" OnClick="btnGuardar_Click" />
        </div>

    </div>

</asp:Content>