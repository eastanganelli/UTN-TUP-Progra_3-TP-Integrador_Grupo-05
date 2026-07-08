<%@ Page Title="Inicio" Language="C#" MasterPageFile="~/Administracion/Plantilla.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Vistas.Administracion.Inicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
        .stats-grid {
            display: flex;
            gap: 16px;
            margin-bottom: 24px;
            flex-wrap: wrap;
        }

        .stat-card {
            background: #fff;
            border: 1px solid #ccc;
            border-radius: 8px;
            padding: 16px 20px;
            flex: 1;
            min-width: 160px;
        }

        .stat-label {
            font-size: 11px;
            color: #888;
            text-transform: uppercase;
            letter-spacing: 0.4px;
            margin-bottom: 6px;
        }

        .stat-number {
            font-size: 28px;
            font-weight: 500;
            color: #1a2332;
        }

            .stat-number.pendiente {
                color: #854F0B;
            }

            .stat-number.presente {
                color: #3B6D11;
            }

            .stat-number.ausente {
                color: #A32D2D;
            }

        .section-title {
            font-size: 15px;
            font-weight: 500;
            color: #1a2332;
            margin-bottom: 12px;
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .today-badge {
            background: #e6f1fb;
            color: #0C447C;
            font-size: 11px;
            font-weight: 500;
            padding: 3px 9px;
            border-radius: 4px;
        }

        .badge-presente {
            background: #eaf3de;
            color: #3B6D11;
        }

        .badge-ausente {
            background: #fcebeb;
            color: #A32D2D;
        }

        .badge-pendiente {
            background: #faeeda;
            color: #633806;
        }

        .badge-esp {
            background: #e6f1fb;
            color: #0C447C;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="contenedor listado">

        <div class="page-title">
            Bienvenido,
            <asp:Label ID="lblRol" runat="server" Text=""></asp:Label>
        </div>
        <div class="page-subtitle">Resumen del día — <%= fechaActual %></div>

        <!-- TARJETAS SOLO ADMIN -->
        <asp:Panel ID="pnlStatsAdmin" runat="server" Visible="false">
            <div class="stats-grid">
                <div class="stat-card">
                    <div class="stat-label">Turnos hoy</div>
                    <div class="stat-number"><%= statsHoyAdmin.total %></div>
                </div>
                <div class="stat-card">
                    <div class="stat-label">Pendientes</div>
                    <div class="stat-number pendiente"><%= statsHoyAdmin.pendientes %></div>
                </div>
                <div class="stat-card">
                    <div class="stat-label">Presentes</div>
                    <div class="stat-number presente"><%= statsHoyAdmin.atendidos %></div>
                </div>
                <div class="stat-card">
                    <div class="stat-label">Ausentes</div>
                    <div class="stat-number ausente"><%= statsHoyAdmin.ausentes %></div>
                </div>
            </div>
        </asp:Panel>

        <!-- TARJETAS SOLO MÉDICO -->
        <asp:Panel ID="pnlStatsMedico" runat="server" Visible="false">
            <div class="stats-grid">
                <div class="stat-card">
                    <div class="stat-label">Mis turnos hoy</div>
                    <div class="stat-number"><%= turnosDelDia.total %></div>
                </div>
                <div class="stat-card">
                    <div class="stat-label">Pendientes</div>
                    <div class="stat-number pendiente"><%= turnosDelDia.pendientes %></div>
                </div>
                <div class="stat-card">
                    <div class="stat-label">Presentes</div>
                    <div class="stat-number presente"><%= turnosDelDia.atendidos %></div>
                </div>
                <div class="stat-card">
                    <div class="stat-label">Ausentes</div>
                    <div class="stat-number ausente"><%= turnosDelDia.ausentes %></div>
                </div>
            </div>
        </asp:Panel>

        <!-- TABLA TURNOS ADMIN -->
        <asp:Panel ID="pnlTurnosAdmin" runat="server" Visible="false">
            <div class="section-title">
                Turnos de hoy
                <span class="today-badge"><%= fechaActual %></span>
            </div>
            <div class="table-card">
                <asp:Repeater ID="rptTurnosAdmin" runat="server">
                    <HeaderTemplate>
                        <table class="gv-tabla">
                            <thead>
                                <tr>
                                    <th>Paciente</th>
                                    <th>Médico</th>
                                    <th>Horario</th>
                                    <th>Especialidad</th>
                                    <th>Estado</th>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td><strong><%# Eval("Paciente") %></strong></td>
                            <td><%# Eval("Medico") %></td>
                            <td><%# Eval("Horario") %></td>
                            <td><span class="badge-esp" style="padding:2px 8px;border-radius:4px;font-size:11px;font-weight:500;"><%# Eval("Especialidad") %></span></td>
                            <td>
                                <span class='badge-<%# Eval("Estado") %>' style="padding:2px 8px;border-radius:4px;font-size:11px;font-weight:500;">
                                    <%# Eval("Estado") %>
                                </span>
                            </td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </tbody>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
            </div>
        </asp:Panel>

        <!-- TABLA TURNOS SOLO MÉDICO -->
        <asp:Panel ID="pnlTurnos" runat="server" Visible="false">
            <div class="section-title">Mis turnos de hoy</div>
            <div class="table-card">
                <%--<asp:Repeater ID="rptTurnosHoy" runat="server" OnItemCommand="rptTurnosHoy_ItemCommand">--%>
                <asp:Repeater ID="rptTurnosHoy" runat="server">
                    <HeaderTemplate>
                        <table class="gv-tabla">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Paciente</th>
                                    <th>Horario</th>
                                    <th>Estado</th>
                                    <th>Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td><strong><%# Eval("Indice") %></strong></td>
                            <td><strong><%# Eval("Paciente") %></strong></td>
                            <td><%# Eval("Hora") %></td>
                            <td><%# Eval("estado") %></td>
                            <td>
                                <asp:HyperLink runat="server"
                                    NavigateUrl='<%# "Turnos/tVer.aspx?id=" + Eval("id_turno") + "&bck_ini=1" %>'
                                    CssClass="btn-icon" title="Ver">👁</asp:HyperLink>
                                <asp:HyperLink runat="server"
                                    NavigateUrl='<%# "Turnos/tEditar.aspx?id=" + Eval("id_turno") + "&bck_ini=1" %>'
                                    CssClass="btn-icon" title="Editar">✏️</asp:HyperLink>
                            </td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </tbody>
          </table>
                    </FooterTemplate>
                </asp:Repeater>
            </div>
        </asp:Panel>

    </div>

</asp:Content>
