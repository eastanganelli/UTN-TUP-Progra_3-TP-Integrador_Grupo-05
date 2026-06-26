<%@ Page Title="Nuevo Paciente" Language="C#" MasterPageFile="~/Administracion/Plantilla.Master" AutoEventWireup="true" CodeBehind="pNuevo.aspx.cs" Inherits="Vistas.Administracion.Pacientes.pNuevo" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
        .btn-limpiar {
            height: 38px; padding: 0 20px;
            background-color: transparent; color: #185FA5;
            border: 1px solid #185FA5; border-radius: 5px;
            font-size: 13px; cursor: pointer; transition: all 0.2s ease;
        }
        .btn-limpiar:hover { background-color: #185FA5; color: #ffffff; }
    </style>
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="form-wrapper">

        <!-- ENCABEZADO -->
        <div class="page-header">
            <div>
                <h1>Nuevo Paciente</h1>
                <p>Completá los datos para registrar un nuevo paciente en el sistema</p>
            </div>
            <asp:HyperLink ID="hlVolver"  runat="server" NavigateUrl="~/Administracion/Pacientes/pInicio.aspx" CssClass="btn-volver">← Volver al listado</asp:HyperLink>
        </div>

        <!-- Mensaje resultado -->
        <asp:Label ID="lblMensaje" runat="server"></asp:Label>

        <!-- ========================
             DATOS PERSONALES
        ========================= -->
        <div class="form-card">
            <h2>Datos Personales</h2>
            <div class="form-grid">

                <div class="campo">
                    <label>Nombre <span class="req">*</span></label>
                    <asp:TextBox ID="txtNombre" runat="server" MaxLength="100" />
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
                    <label>Fecha de Nacimiento <span class="req">*</span></label>
                    <asp:TextBox ID="txtFechaNac" runat="server" TextMode="Date" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtFechaNac"
                        CssClass="validador" ErrorMessage="La fecha de nacimiento es requerida." Display="Dynamic" />
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
                    <asp:TextBox ID="txtNacionalidad" runat="server" MaxLength="100" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtNacionalidad"
                        CssClass="validador" ErrorMessage="La nacionalidad es requerida." Display="Dynamic" />
                    <asp:RegularExpressionValidator ID="revNacionalidad" runat="server" ControlToValidate="txtNacionalidad" ValidationExpression="^[A-Za-zÁÉÍÓÚáéíóúÑñÜü\s]{2,50}$"
                    ErrorMessage="Ingrese una nacionalidad válida." CssClass="validador" />
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
                        ErrorMessage="Formato de correo inválido." Display="Dynamic" />
                </div>

            </div>
        </div>

        <!-- ACCIONES -->
        <div class="form-acciones">
            <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar"
                CssClass="btn-limpiar" CausesValidation="false"
                OnClick="btnLimpiar_Click" />
            <asp:Button ID="btnGuardar" runat="server" Text="Guardar paciente"
                CssClass="btn-guardar" OnClick="btnGuardar_Click" />
        </div>

    </div>

</asp:Content>
