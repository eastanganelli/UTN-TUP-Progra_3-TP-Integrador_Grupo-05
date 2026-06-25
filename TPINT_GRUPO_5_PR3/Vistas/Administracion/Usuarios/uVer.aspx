<%@ Page Title="Usuario - Detalles" Language="C#" MasterPageFile="~/Administracion/Plantilla.Master" AutoEventWireup="true" CodeBehind="uVer.aspx.cs" Inherits="Vistas.Administracion.Usuarios.VerUsuario" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
        .perfil-avatar {
            width: 80px; height: 80px; border-radius: 50%;
            background-color: #185FA5;
            display: flex; align-items: center; justify-content: center;
            font-size: 32px; color: #ffffff; font-weight: bold;
            flex-shrink: 0; letter-spacing: 1px;
        }
        .perfil-header-info { flex-grow: 1; }
        .perfil-header-info h1 { font-size: 22px; color: #1a2332; margin: 0 0 6px 0; font-weight: bold; }
        .perfil-header-info .rol-badge {
            display: inline-block; background-color: #e8f0fb; color: #185FA5;
            font-size: 12px; font-weight: bold; padding: 4px 10px;
            border-radius: 20px; margin-bottom: 8px; letter-spacing: 0.3px;
        }
        .perfil-estado { display: flex; flex-direction: column; align-items: flex-end; gap: 8px; }
    </style>
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="perfil-wrapper">

        <!-- CABECERA -->
        <div class="perfil-header">
            <div class="perfil-avatar">
                <asp:Label ID="lblIniciales" runat="server" Text="U" />
            </div>

            <div class="perfil-header-info">
                <h1><asp:Label ID="lblUsername" runat="server" Text="" /></h1>
                <span class="rol-badge"><asp:Label ID="lblRolBadge" runat="server" Text="" /></span>
            </div>

            <div class="perfil-estado">
                <asp:Label ID="lblEstado" runat="server" CssClass="badge badge-active" Text="Activo" />
                <a href="uInicio.aspx" class="btn-volver">← Volver al listado</a>
            </div>
        </div>

        <!-- GRID DE INFO -->
        <div class="perfil-grid">

            <div class="info-card">
                <h2>Datos de Acceso</h2>
                <div class="dato-fila">
                    <span class="dato-label">Nombre de usuario</span>
                    <span class="dato-valor"><asp:Label ID="lblUsernameDetalle" runat="server" Text="—" /></span>
                </div>
                <div class="dato-fila">
                    <span class="dato-label">Rol</span>
                    <span class="dato-valor"><asp:Label ID="lblRolDetalle" runat="server" Text="—" /></span>
                </div>
                <div class="dato-fila">
                    <span class="dato-label">Estado</span>
                    <span class="dato-valor"><asp:Label ID="lblEstadoDetalle" runat="server" Text="—" /></span>
                </div>
                <div class="dato-fila">
                    <span class="dato-label">ID usuario</span>
                    <span class="dato-valor"><asp:Label ID="lblIdUsuario" runat="server" Text="—" /></span>
                </div>
            </div>

            <div class="info-card">
                <h2>Médico Asociado</h2>
                <asp:Panel ID="pnlMedico" runat="server">
                    <div class="dato-fila">
                        <span class="dato-label">Nombre</span>
                        <span class="dato-valor"><asp:Label ID="lblNombreMedico" runat="server" Text="—" /></span>
                    </div>
                    <div class="dato-fila">
                        <span class="dato-label">Legajo</span>
                        <span class="dato-valor"><asp:Label ID="lblLegajoMedico" runat="server" Text="—" /></span>
                    </div>
                    <div class="dato-fila">
                        <span class="dato-label">Especialidad</span>
                        <span class="dato-valor"><asp:Label ID="lblEspecialidadMedico" runat="server" Text="—" /></span>
                    </div>
                </asp:Panel>
                <asp:Panel ID="pnlSinMedico" runat="server" Visible="false">
                    <p style="color:#999; font-size:13px; margin:8px 0;">
                        Este usuario no tiene un médico asociado (es administrador).
                    </p>
                </asp:Panel>
            </div>

        </div>

        <!-- ACCIONES -->
        <div class="form-acciones" style="justify-content:flex-start; gap:10px;">
            <asp:HyperLink ID="lnkEditar" runat="server" CssClass="btn-guardar"
                style="display:inline-flex; align-items:center; text-decoration:none; height:38px; padding:0 20px;">
                ✏️ Editar usuario
            </asp:HyperLink>
        </div>

    </div>

</asp:Content>
