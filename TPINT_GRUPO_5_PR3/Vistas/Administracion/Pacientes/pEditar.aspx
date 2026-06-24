<%@ Page Title="Editar Paciente" Language="C#" MasterPageFile="~/Administracion/Plantilla.Master" AutoEventWireup="true" CodeBehind="pEditar.aspx.cs" Inherits="Vistas.Administracion.Pacientes.EditarPaciente" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">

</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="form-wrapper">

        <div class="page-header">
            <div>
                <h1>Editar Paciente</h1>
                <p>Modificá los datos del paciente. El DNI no se puede cambiar.</p>
            </div>
            <a href="~/Administracion/Pacientes/Pacientes.aspx" class="btn-volver">← Volver al listado</a>
        </div>

        <asp:Label ID="lblMensaje" runat="server" Visible="false" />

        <div class="banner-editando">
            <div class="avatar-sm">
                <asp:Label ID="lblIniciales" runat="server" Text="LR" />
            </div>
            <div>
                <strong><asp:Label ID="lblNombreCompleto" runat="server" Text="Laura Beatriz Ramírez" /></strong>
                &nbsp;—&nbsp; Paciente N° <asp:Label ID="lblNroPaciente" runat="server" Text="00847" />
                <br />
                <small>ID persona: <asp:Label ID="lblIdPersona" runat="server" Text="203" />
                &nbsp;·&nbsp; DNI: <asp:Label ID="lblDniBanner" runat="server" Text="30.112.458" /></small>
            </div>
        </div>

        <!-- ========================
             DATOS PERSONALES
        ========================= -->
        <div class="form-card">
            <h2>Datos Personales</h2>
            <div class="form-grid">

                <div class="campo">
                    <label>DNI <small style="color:#888;font-weight:normal;">(no editable)</small></label>
                    <asp:TextBox ID="txtDni" runat="server" ReadOnly="true" Text="30112458" />
                </div>

                <div class="campo">
                    <label>Fecha de Nacimiento <span class="req">*</span></label>
                    <asp:TextBox ID="txtFechaNac" runat="server" TextMode="Date" Text="1986-09-22" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtFechaNac"
                        CssClass="validador" ErrorMessage="La fecha es requerida." Display="Dynamic" />
                </div>

                <div class="campo">
                    <label>Nombre <span class="req">*</span></label>
                    <asp:TextBox ID="txtNombre" runat="server" MaxLength="100"  />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtNombre"
                        CssClass="validador" ErrorMessage="El nombre es requerido." Display="Dynamic" />
                </div>

                <div class="campo">
                    <label>Apellido <span class="req">*</span></label>
                    <asp:TextBox ID="txtApellido" runat="server" MaxLength="100"/>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtApellido"
                        CssClass="validador" ErrorMessage="El apellido es requerido." Display="Dynamic" />
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
                    <label>Nacionalidad <span class="req">*</span></label>
                    <asp:TextBox ID="txtNacionalidad" runat="server" MaxLength="100"  />
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
                    <asp:TextBox ID="txtDireccion" runat="server" MaxLength="200"  />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtDireccion"
                        CssClass="validador" ErrorMessage="La dirección es requerida." Display="Dynamic" />
                </div>

                <div class="campo">
                    <label>Provincia <span class="req">*</span></label>
                    <asp:DropDownList ID="ddlProvincia" runat="server" AutoPostBack="true"
                        OnSelectedIndexChanged="ddlProvincia_SelectedIndexChanged">
                        <asp:ListItem Value="0">-- Seleccioná --</asp:ListItem>
                        
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
                    <asp:TextBox ID="txtTelefono" runat="server" MaxLength="20" Text="+54 11 4710-2284" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtTelefono"
                        CssClass="validador" ErrorMessage="El teléfono es requerido." Display="Dynamic" />
                </div>

                <div class="campo">
                    <label>Correo Electrónico <span class="req">*</span></label>
                    <asp:TextBox ID="txtEmail" runat="server" MaxLength="200" Text="l.ramirez@gmail.com" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmail"
                        CssClass="validador" ErrorMessage="El correo es requerido." Display="Dynamic" />
                    <asp:RegularExpressionValidator runat="server" ControlToValidate="txtEmail"
                        CssClass="validador" ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"
                        ErrorMessage="Formato de correo inválido." Display="Dynamic" />
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