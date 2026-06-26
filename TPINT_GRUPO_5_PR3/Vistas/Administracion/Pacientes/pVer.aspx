<%@ Page Title="Ver Paciente" Language="C#" MasterPageFile="~/Administracion/Plantilla.Master" AutoEventWireup="True" CodeBehind="pVer.aspx.cs" Inherits="Vistas.Administracion.Pacientes.pVer" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
        .perfil-avatar {
            width: 80px;
            height: 80px;
            border-radius: 50%;
            background-color: #1a2332;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 30px;
            color: #ffffff;
            font-weight: bold;
            flex-shrink: 0;
            letter-spacing: 1px;
        }

        .perfil-header-info {
            flex-grow: 1;
        }

        .perfil-header-info h1 {
            font-size: 22px;
            color: #1a2332;
            margin: 0 0 4px 0;
            font-weight: bold;
        }

        .perfil-header-info .nro-paciente {
            display: inline-block;
            background-color: #f0f4fa;
            color: #185FA5;
            font-size: 12px;
            font-weight: bold;
            padding: 4px 10px;
            border-radius: 20px;
            margin-bottom: 10px;
            letter-spacing: 0.3px;
        }

        .perfil-header-info .sub-info {
            font-size: 12px;
            color: #888888;
            margin: 0;
        }

        .perfil-estado {
            display: flex;
            flex-direction: column;
            align-items: flex-end;
            gap: 8px;
        }

        .badge-activo {
            display: flex;
            align-items: center;
            gap: 6px;
            font-size: 12px;
            font-weight: bold;
            color: #1a7a4a;
            background-color: #e6f5ee;
            padding: 5px 12px;
            border-radius: 20px;
        }

        .badge-activo::before {
            content: '';
            width: 7px;
            height: 7px;
            border-radius: 50%;
            background-color: #1a7a4a;
            display: inline-block;
        }

        .badge-inactivo {
            display: flex;
            align-items: center;
            gap: 6px;
            font-size: 12px;
            font-weight: bold;
            color: #c0392b;
            background-color: #fdecea;
            padding: 5px 12px;
            border-radius: 20px;
        }

        .badge-inactivo::before {
            content: '';
            width: 7px;
            height: 7px;
            border-radius: 50%;
            background-color: #c0392b;
            display: inline-block;
        }

        .alerta-medica {
            background-color: #fff7e6;
            border: 1px solid #f5c842;
            border-radius: 6px;
            padding: 10px 14px;
            font-size: 12px;
            color: #7a5500;
            display: flex;
            align-items: flex-start;
            gap: 8px;
            margin-bottom: 14px;
        }

        .alerta-medica .alerta-icono {
            font-size: 14px;
            flex-shrink: 0;
            margin-top: 1px;
        }

        .tabla-historial {
            width: 100%;
            border-collapse: collapse;
            font-size: 13px;
        }

        .tabla-historial thead th {
            text-align: left;
            font-size: 11px;
            font-weight: bold;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            color: #888888;
            padding: 0 12px 10px 0;
            border-bottom: 1px solid #eeeeee;
        }

        .tabla-historial tbody td {
            padding: 10px 12px 10px 0;
            border-bottom: 1px solid #f0f0f0;
            color: #1a2332;
            vertical-align: middle;
        }

        .tabla-historial tbody tr:last-child td {
            border-bottom: none;
        }

        .medico-ref {
            font-size: 11px;
            color: #185FA5;
        }

        .turno-item {
            display: flex;
            align-items: center;
            gap: 14px;
            padding: 11px 0;
            border-bottom: 1px solid #f0f0f0;
            font-size: 13px;
        }

        .turno-item:last-child {
            border-bottom: none;
        }

        .turno-fecha {
            flex-shrink: 0;
            width: 70px;
            font-size: 11px;
            color: #888888;
            text-align: center;
            line-height: 1.4;
        }

        .turno-fecha strong {
            display: block;
            font-size: 18px;
            color: #1a2332;
            font-weight: bold;
            line-height: 1;
        }

        .turno-detalle {
            flex-grow: 1;
        }

        .turno-detalle .medico-nombre {
            font-weight: 600;
            color: #1a2332;
            margin-bottom: 2px;
        }

        .turno-detalle .especialidad {
            font-size: 11px;
            color: #888888;
        }

        .turno-hora {
            font-size: 12px;
            color: #555555;
            flex-shrink: 0;
        }

        .badge-turno {
            font-size: 11px;
            font-weight: bold;
            padding: 3px 9px;
            border-radius: 20px;
            flex-shrink: 0;
        }

        .badge-turno.confirmado {
            background-color: #e6f5ee;
            color: #1a7a4a;
        }

        .badge-turno.pendiente {
            background-color: #fff7e6;
            color: #b07a00;
        }

        .badge-turno.cancelado {
            background-color: #fdecea;
            color: #c0392b;
        }

        .tags-wrapper {
            display: flex;
            flex-wrap: wrap;
            gap: 8px;
            margin-top: 4px;
        }

        .tag {
            font-size: 12px;
            font-weight: bold;
            padding: 4px 10px;
            border-radius: 4px;
        }

        .tag.alergia {
            background-color: #fdecea;
            color: #c0392b;
        }

        .tag.condicion {
            background-color: #e8f0fb;
            color: #185FA5;
        }

        .tabla-historial{
    width:100%;
    border-collapse:collapse;
    font-size:13px;
    border:none;
}

.tabla-historial th{
    text-align:left;
    font-size:11px;
    font-weight:700;
    text-transform:uppercase;
    color:#8a8a8a;
    letter-spacing:.5px;
    padding:12px 8px;
    border-bottom:1px solid #e8e8e8;
    background:#fff;
}

.tabla-historial td{
    padding:14px 8px;
    border-bottom:1px solid #efefef;
    color:#1a2332;
    vertical-align:middle;
}

.tabla-historial tr:last-child td{
    border-bottom:none;
}

.tabla-historial tr:hover td{
    background:#fafcff;
}
    </style>
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="perfil-wrapper">

        <!-- ============================
             CABECERA DEL PERFIL
        ============================= -->
        <div class="perfil-header">
            <div class="perfil-avatar">
                <asp:Label ID="lblIniciales" runat="server"></asp:Label>
            </div>

            <div class="perfil-header-info">
                <h1>
                    <asp:Label ID="lblNombreBanner" runat="server"></asp:Label>
                </h1>
                <span class="nro-paciente">
                <asp:Label ID="lblPaciente" runat="server"></asp:Label>
                </span>
                <p class="sub-info">DNI&nbsp;
                    <asp:Label ID="lblDNIBanner" runat="server"></asp:Label>
                    &nbsp;|&nbsp;
                    <asp:Label ID="lblEdadBanner" runat="server"></asp:Label>
&nbsp;años &nbsp;|&nbsp;
                    <asp:Label ID="lblSexoBanner" runat="server"></asp:Label>
                </p>
            </div>

            <div class="perfil-estado">
                <asp:Label ID="lblEstado" runat="server" CssClass="badge-activo"></asp:Label>
                            <asp:HyperLink ID="hlVolver"  runat="server" NavigateUrl="~/Administracion/Pacientes/pInicio.aspx" CssClass="btn-volver">← Volver al listado</asp:HyperLink>
            </div>
        </div>

        <!-- ============================
             GRID DE INFORMACIÓN
        ============================= -->
        <div class="perfil-grid">

            <!-- Datos personales -->
            <div class="info-card">
                <h2>Datos Personales</h2>
                <div class="dato-fila">
                    <span class="dato-label">Nombre completo</span>&nbsp;
                    <asp:Label ID="lblNombreCompleto" runat="server"></asp:Label>
                </div>
                <div class="dato-fila">
                    <span class="dato-label">Fecha de nacimiento</span>&nbsp;
                    <asp:Label ID="lblFecha" runat="server"></asp:Label>
                </div>
                <div class="dato-fila">
                    <span class="dato-label">DNI</span>&nbsp;
                    <asp:Label ID="lblDNI" runat="server"></asp:Label>
                </div>
                <div class="dato-fila">
                    <span class="dato-label">Género</span>&nbsp;
                    <asp:Label ID="lblGenero" runat="server"></asp:Label>
                </div>
            </div>

            <!-- Datos de contacto -->
            <div class="info-card">
                <h2>Contacto</h2>
                <div class="dato-fila">
                    <span class="dato-label">Teléfono</span>&nbsp;
                    <asp:Label ID="lblTelefono" runat="server"></asp:Label>
                </div>
                <div class="dato-fila">
                    <span class="dato-label">Correo electrónico</span>&nbsp;
                    <asp:Label ID="lblCorreo" runat="server"></asp:Label>
                </div>
                <div class="dato-fila">
                    <span class="dato-label">Dirección</span>&nbsp;
                    <asp:Label ID="lblDireccion" runat="server"></asp:Label>
                </div>
            </div>

            <!-- Historial de consultas -->
            <div class="info-card full-width">
                <h2>Historial de Consultas</h2>
                <asp:Label ID="lblConsultas" runat="server"></asp:Label>
                <asp:GridView ID="gvHistorial"
    runat="server"
    AutoGenerateColumns="False"
    CssClass="tabla-historial"
    GridLines="None"
    BorderStyle="None"
    BorderWidth="0"
    CellPadding="8"
    ShowHeader="True">

    <HeaderStyle CssClass="gv-header" />
    <RowStyle CssClass="gv-row" />

    <Columns>

        <asp:TemplateField HeaderText="FECHA">
            <ItemTemplate>
                <asp:Label ID="lblFecha" runat="server" Text='<%# Bind("Fecha") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="ESPECIALIDAD">
            <ItemTemplate>
                <asp:Label ID="lblEspecialidad" runat="server" Text='<%# Bind("Especialidad") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="MÉDICO">
    <ItemTemplate>
        <span class="medico-ref">
            <%# Eval("Medico") %>
        </span>
    </ItemTemplate>
</asp:TemplateField>

        <asp:TemplateField HeaderText="DIAGNÓSTICO / MOTIVO">
            <ItemTemplate>
                <asp:Label ID="lblDiagnostico" runat="server" Text='<%# Bind("observacion") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>

    </Columns>

</asp:GridView>
            </div>

            <!-- Próximos turnos -->
            <div class="info-card full-width">
                <h2>Próximos Turnos</h2>

                <div class="turno-item">
                    <div class="turno-fecha">
                        <strong>16</strong>
                        Jun 2025
                    </div>
                    <div class="turno-detalle">
                        <div class="medico-nombre">Dr. Carlos Méndez</div>
                        <div class="especialidad">Cardiología – Control post-operatorio</div>
                    </div>
                    <span class="turno-hora">09:00 hs</span>
                    <span class="badge-turno confirmado">Confirmado</span>
                </div>

                <div class="turno-item">
                    <div class="turno-fecha">
                        <strong>24</strong>
                        Jun 2025
                    </div>
                    <div class="turno-detalle">
                        <div class="medico-nombre">Dra. Valeria Torres</div>
                        <div class="especialidad">Endocrinología – Control mensual</div>
                    </div>
                    <span class="turno-hora">11:30 hs</span>
                    <span class="badge-turno pendiente">Pendiente</span>
                </div>

                <div class="turno-item">
                    <div class="turno-fecha">
                        <strong>08</strong>
                        Jul 2025
                    </div>
                    <div class="turno-detalle">
                        <div class="medico-nombre">Dra. Claudia Ibáñez</div>
                        <div class="especialidad">Ginecología – Control anual</div>
                    </div>
                    <span class="turno-hora">10:00 hs</span>
                    <span class="badge-turno pendiente">Pendiente</span>
                </div>
            </div>
        </div>
    </div>
</asp:Content>