<%@ Page Title="Inicio" Language="C#" MasterPageFile="~/Administracion/Plantilla.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Vistas.Administracion.Inicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
<style>
    .stats-grid { display: flex; gap: 16px; margin-bottom: 24px; flex-wrap: wrap; }
    .stat-card { background: #fff; border: 1px solid #ccc; border-radius: 8px; padding: 16px 20px; flex: 1; min-width: 160px; }
    .stat-label { font-size: 11px; color: #888; text-transform: uppercase; letter-spacing: 0.4px; margin-bottom: 6px; }
    .stat-number { font-size: 28px; font-weight: 500; color: #1a2332; }
    .stat-number.pendiente { color: #854F0B; }
    .stat-number.presente { color: #3B6D11; }
    .stat-number.ausente { color: #A32D2D; }

    .section-title { font-size: 15px; font-weight: 500; color: #1a2332; margin-bottom: 12px; display: flex; align-items: center; gap: 8px; }
    .today-badge { background: #e6f1fb; color: #0C447C; font-size: 11px; font-weight: 500; padding: 3px 9px; border-radius: 4px; }

    .badge-presente { background: #eaf3de; color: #3B6D11; }
    .badge-ausente { background: #fcebeb; color: #A32D2D; }
    .badge-pendiente { background: #faeeda; color: #633806; }
    .badge-esp { background: #e6f1fb; color: #0C447C; }
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="contenedor listado">

        <div class="page-title">Bienvenido, <asp:Label ID="lblRol" runat="server" Text=""></asp:Label></div>
        <div class="page-subtitle">Resumen del día — martes 16 de junio de 2026</div>

        <!-- TARJETAS SOLO ADMIN -->
        <asp:Panel ID="pnlStatsAdmin" runat="server">
            <div class="stats-grid">
                <div class="stat-card">
                    <div class="stat-label">Turnos hoy</div>
                    <div class="stat-number">8</div>
                </div>
                <div class="stat-card">
                    <div class="stat-label">Pendientes</div>
                    <div class="stat-number pendiente">5</div>
                </div>
                <div class="stat-card">
                    <div class="stat-label">Presentes</div>
                    <div class="stat-number presente">2</div>
                </div>
                <div class="stat-card">
                    <div class="stat-label">Ausentes</div>
                    <div class="stat-number ausente">1</div>
                </div>
                <div class="stat-card">
                    <div class="stat-label">Médicos activos</div>
                    <div class="stat-number">7</div>
                </div>
                <div class="stat-card">
                    <div class="stat-label">Pacientes registrados</div>
                    <div class="stat-number">8</div>
                </div>
            </div>
        </asp:Panel>

        <!-- TARJETAS SOLO MÉDICO -->
        <asp:Panel ID="pnlStatsMedico" runat="server">
            <div class="stats-grid">
                <div class="stat-card">
                    <div class="stat-label">Mis turnos hoy</div>
                    <div class="stat-number">8</div>
                </div>
                <div class="stat-card">
                    <div class="stat-label">Pendientes</div>
                    <div class="stat-number pendiente">5</div>
                </div>
                <div class="stat-card">
                    <div class="stat-label">Presentes</div>
                    <div class="stat-number presente">2</div>
                </div>
                <div class="stat-card">
                    <div class="stat-label">Ausentes</div>
                    <div class="stat-number ausente">1</div>
                </div>
            </div>
        </asp:Panel>

        <!-- TABLA TURNOS SOLO MÉDICO -->
        <asp:Panel ID="pnlTurnos" runat="server">
            <div class="section-title">
                Mis turnos de hoy
                <span class="today-badge">16/06/2026</span>
            </div>

            <div class="table-card">
                <table class="gv-tabla">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Paciente</th>
                            <th>Especialidad</th>
                            <th>Horario</th>
                            <th>Estado</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><strong>T-001</strong></td>
                            <td>Gómez, Carlos</td>
                            <td><span class="badge badge-esp">Cardiología</span></td>
                            <td>08:00 – 09:00</td>
                            <td><span class="badge badge-presente">Presente</span></td>
                            <td><button class="btn-icon" title="Ver">👁</button></td>
                        </tr>
                        <tr>
                            <td><strong>T-002</strong></td>
                            <td>Sánchez, Ana</td>
                            <td><span class="badge badge-esp">Pediatría</span></td>
                            <td>09:00 – 10:00</td>
                            <td><span class="badge badge-ausente">Ausente</span></td>
                            <td><button class="btn-icon" title="Ver">👁</button></td>
                        </tr>
                        <tr>
                            <td><strong>T-003</strong></td>
                            <td>Díaz, Lucía</td>
                            <td><span class="badge badge-esp">Traumatología</span></td>
                            <td>10:00 – 11:00</td>
                            <td><span class="badge badge-pendiente">Pendiente</span></td>
                            <td><button class="btn-icon" title="Ver">👁</button></td>
                        </tr>
                        <tr>
                            <td><strong>T-004</strong></td>
                            <td>Herrera, Miguel</td>
                            <td><span class="badge badge-esp">Neurología</span></td>
                            <td>11:00 – 12:00</td>
                            <td><span class="badge badge-pendiente">Pendiente</span></td>
                            <td><button class="btn-icon" title="Ver">👁</button></td>
                        </tr>
                        <tr>
                            <td><strong>T-005</strong></td>
                            <td>Romero, Florencia</td>
                            <td><span class="badge badge-esp">Clínica Médica</span></td>
                            <td>12:00 – 13:00</td>
                            <td><span class="badge badge-pendiente">Pendiente</span></td>
                            <td><button class="btn-icon" title="Ver">👁</button></td>
                        </tr>
                        <tr>
                            <td><strong>T-006</strong></td>
                            <td>Alvarez, Diego</td>
                            <td><span class="badge badge-esp">Cardiología</span></td>
                            <td>13:00 – 14:00</td>
                            <td><span class="badge badge-pendiente">Pendiente</span></td>
                            <td><button class="btn-icon" title="Ver">👁</button></td>
                        </tr>
                        <tr>
                            <td><strong>T-007</strong></td>
                            <td>Vega, Camila</td>
                            <td><span class="badge badge-esp">Pediatría</span></td>
                            <td>14:00 – 15:00</td>
                            <td><span class="badge badge-pendiente">Pendiente</span></td>
                            <td><button class="btn-icon" title="Ver">👁</button></td>
                        </tr>
                        <tr>
                            <td><strong>T-008</strong></td>
                            <td>Morales, Pablo</td>
                            <td><span class="badge badge-esp">Traumatología</span></td>
                            <td>15:00 – 16:00</td>
                            <td><span class="badge badge-pendiente">Pendiente</span></td>
                            <td><button class="btn-icon" title="Ver">👁</button></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </asp:Panel>

    </div>

</asp:Content>