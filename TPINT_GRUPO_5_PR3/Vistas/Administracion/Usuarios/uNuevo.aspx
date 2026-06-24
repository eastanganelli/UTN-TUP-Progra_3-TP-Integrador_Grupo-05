<%@ Page Title="Usuario - Nuevo" Language="C#" MasterPageFile="~/Administracion/Plantilla.Master" AutoEventWireup="true" CodeBehind="uNuevo.aspx.cs" Inherits="Vistas.Administracion.Usuarios.NuevoUsuario" %>

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
                <h1>Nuevo Usuario</h1>
                <p>Creá un usuario con acceso al sistema</p>
            </div>
            <a href="uInicio.aspx" class="btn-volver"
               onclick="return confirm('¿Descartar los datos ingresados y volver al listado?');">← Volver al listado</a>
        </div>

        <asp:Label ID="lblMensaje" runat="server" Visible="false" />

        <!-- ========================
             DATOS DE ACCESO
        ========================= -->
        <div class="form-card">
            <h2>Datos de Acceso</h2>
            <div class="form-grid">

                <div class="campo full-width">
                    <label>Nombre de usuario <span class="req">*</span></label>
                    <asp:TextBox ID="txtUsername" runat="server" MaxLength="100" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtUsername"
                        CssClass="validador" ErrorMessage="El nombre de usuario es requerido." Display="Dynamic" />
                </div>

                <div class="campo">
                    <label>Contraseña <span class="req">*</span></label>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" MaxLength="200" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassword"
                        CssClass="validador" ErrorMessage="La contraseña es requerida." Display="Dynamic" />
                </div>

                <div class="campo">
                    <label>Repetir contraseña <span class="req">*</span></label>
                    <asp:TextBox ID="txtPasswordConfirm" runat="server" TextMode="Password" MaxLength="200" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPasswordConfirm"
                        CssClass="validador" ErrorMessage="Repetí la contraseña." Display="Dynamic" />
                    <asp:CompareValidator runat="server"
                        ControlToValidate="txtPasswordConfirm"
                        ControlToCompare="txtPassword"
                        CssClass="validador"
                        ErrorMessage="Las contraseñas no coinciden." Display="Dynamic" />
                </div>

                <div class="campo">
                    <label>Rol <span class="req">*</span></label>
                    <asp:DropDownList ID="ddlRol" runat="server">
                        <asp:ListItem Value="">-- Seleccioná --</asp:ListItem>
                        <asp:ListItem Value="admin">Administrador</asp:ListItem>
                        <asp:ListItem Value="medico">Médico</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlRol"
                        InitialValue="" CssClass="validador"
                        ErrorMessage="El rol es requerido." Display="Dynamic" />
                </div>

            </div>
        </div>

        <!-- ========================
             MÉDICO ASOCIADO
        ========================= -->
        <div class="form-card">
            <h2>Médico Asociado <small style="color:#888; font-size:11px; text-transform:none; letter-spacing:0;">(solo para rol Médico)</small></h2>
            <p class="seccion-nota">
                Si el rol es Médico, seleccioná el médico del sistema que corresponde a este usuario.
                Para administradores, dejar en blanco.
            </p>
            <div class="form-grid">
                <div class="campo full-width">
                    <label>Médico</label>
                    <asp:DropDownList ID="ddlMedico" runat="server">
                        <asp:ListItem Value="">— Sin médico asociado —</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
        </div>

        <!-- ACCIONES -->
        <div class="form-acciones">
            <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar"
                CssClass="btn-limpiar" CausesValidation="false"
                OnClick="btnLimpiar_Click" />
            <asp:Button ID="btnGuardar" runat="server" Text="Crear usuario"
                CssClass="btn-guardar" OnClick="btnGuardar_Click" />
        </div>

    </div>

</asp:Content>
