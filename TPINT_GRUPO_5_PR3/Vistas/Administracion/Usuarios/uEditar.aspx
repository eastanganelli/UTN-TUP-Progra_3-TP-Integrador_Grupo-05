<%@ Page Title="Usuario - Editar" Language="C#" MasterPageFile="~/Administracion/Plantilla.Master" AutoEventWireup="true" CodeBehind="uEditar.aspx.cs" Inherits="Vistas.Administracion.Usuarios.EditarUsuario" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
        .campo input[type="date"],
        .campo input[type="email"] {
            height: 36px; padding: 0 10px; font-size: 13px;
            border: 1px solid #cccccc; border-radius: 5px;
            color: #1a2332; background-color: #fafafa;
            box-sizing: border-box; width: 100%;
        }
        .aviso-password {
            font-size: 11px; color: #888; margin-top: 4px;
        }
    </style>
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="form-wrapper">

        <!-- ENCABEZADO -->
        <div class="page-header">
            <div>
                <h1>Editar Usuario</h1>
                <p>Modificá los datos de acceso del usuario.</p>
            </div>
            <a href="uInicio.aspx" class="btn-volver"
               onclick="return confirm('¿Descartás los cambios y volvés al listado?');">← Volver al listado</a>
        </div>

        <asp:Label ID="lblMensaje" runat="server" Visible="false" />

        <!-- BANNER -->
        <div class="banner-editando">
            <div>
                <strong>Usuario: <asp:Label ID="lblUsernameBanner" runat="server" Text="" /></strong>
                <br />
                <small>
                    ID: <asp:Label ID="lblIdUsuario" runat="server" Text="" />
                    &nbsp;·&nbsp; Rol actual:
                    <asp:Label ID="lblRolActual" runat="server" Text="" />
                </small>
            </div>
        </div>

        <!-- ========================
             DATOS DE ACCESO
        ========================= -->
        <div class="form-card">
            <h2>Datos de Acceso</h2>
            <div class="form-grid">

                <div class="campo campo-readonly">
                    <label>Nombre de usuario <small style="color:#888; font-weight:normal;">(no editable)</small></label>
                    <asp:TextBox ID="txtUsername" runat="server" ReadOnly="true" />
                </div>

                <div class="campo">
                    <label>Rol <span class="req">*</span></label>
                    <asp:DropDownList ID="ddlRol" runat="server">
                        <asp:ListItem Value="">-- Seleccioná --</asp:ListItem>
                        <asp:ListItem Value="admin">Administrador</asp:ListItem>
                        <asp:ListItem Value="medico">Médico</asp:ListItem>
                    </asp:DropDownList>
                </div>

                <div class="campo">
                    <label>Nueva contraseña <small style="color:#888; font-weight:normal;">(dejar vacío para no cambiar)</small></label>
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

        <!-- ========================
             ESTADO
        ========================= -->
        <div class="form-card">
            <h2>Estado de la cuenta</h2>
            <div class="form-grid">
                <div class="campo full-width">
                    <label>Estado</label>
                    <asp:DropDownList ID="ddlActivo" runat="server">
                        <asp:ListItem Value="1">Activo</asp:ListItem>
                        <asp:ListItem Value="0">Inactivo (bloqueado)</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
        </div>

        <!-- ACCIONES -->
        <div class="form-acciones">
            <asp:Button ID="btnCancelar" runat="server" Text="Cancelar"
                CssClass="btn-cancelar" CausesValidation="false"
                OnClientClick="return confirm('¿Descartás los cambios y volvés al listado?');"
                OnClick="btnCancelar_Click" />
            <asp:Button ID="btnGuardar" runat="server" Text="Guardar cambios"
                CssClass="btn-guardar" OnClick="btnGuardar_Click" />
        </div>

    </div>

</asp:Content>
