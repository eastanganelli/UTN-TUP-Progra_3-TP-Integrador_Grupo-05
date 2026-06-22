<%@ Page Title="Turnos" Language="C#" MasterPageFile="~/Administracion/Plantilla.Master" AutoEventWireup="true" CodeBehind="tInicio.aspx.cs" Inherits="Vistas.Administracion.Turnos.Turnos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
<style>
    .badge-presente { background: #eaf3de; color: #3B6D11; }
    .badge-ausente { background: #fcebeb; color: #A32D2D; }
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="contenedor listado">

        <div class="page-header">
            <div>
                <div class="page-title">Turnos</div>
                <div class="page-subtitle">Gestión de turnos asignados en el sistema</div>
            </div>
            <button class="btn-primary">+ Nuevo turno</button>
        </div>

        <div class="filters-bar">
            <div class="filter-group">
                <label>Buscar</label>
                <asp:TextBox ID="txtBuscar" runat="server" placeholder="Paciente o médico..." style="height:34px; padding:0 10px; font-size:13px; border:1px solid #ccc; border-radius:5px; background:#fafafa; color:#1a2332; min-width:200px;" />
            </div>
            <div class="filter-group">
                <label>Especialidad</label>
                <asp:DropDownList ID="ddlEspecialidad" runat="server" style="height:34px; padding:0 10px; font-size:13px; border:1px solid #ccc; border-radius:5px; background:#fafafa; color:#1a2332; min-width:160px;">
                    <asp:ListItem Text="Todas" Value="" />
                    <asp:ListItem Text="Cardiología" Value="1" />
                    <asp:ListItem Text="Pediatría" Value="2" />
                    <asp:ListItem Text="Traumatología" Value="3" />
                    <asp:ListItem Text="Clínica Médica" Value="4" />
                    <asp:ListItem Text="Neurología" Value="5" />
                </asp:DropDownList>
            </div>
            <div class="filter-group">
                <label>Desde</label>
                <asp:TextBox ID="txtDesde" runat="server" TextMode="Date" style="height:34px; padding:0 10px; font-size:13px; border:1px solid #ccc; border-radius:5px; background:#fafafa; color:#1a2332; min-width:140px;" />
            </div>
            <div class="filter-group">
                <label>Hasta</label>
                <asp:TextBox ID="txtHasta" runat="server" TextMode="Date" style="height:34px; padding:0 10px; font-size:13px; border:1px solid #ccc; border-radius:5px; background:#fafafa; color:#1a2332; min-width:140px;" />
            </div>
            <div class="filter-group">
                <label>Estado</label>
                <asp:DropDownList ID="ddlEstado" runat="server" style="height:34px; padding:0 10px; font-size:13px; border:1px solid #ccc; border-radius:5px; background:#fafafa; color:#1a2332; min-width:130px;">
                    <asp:ListItem Text="Todos" Value="" />
                    <asp:ListItem Text="Pendiente" Value="0" />
                    <asp:ListItem Text="Presente" Value="1" />
                    <asp:ListItem Text="Ausente" Value="2" />
                </asp:DropDownList>
            </div>
            <button class="btn-search">Buscar</button>
            <button class="btn-clear">Limpiar</button>
        </div>

        <div class="table-card">
            <div class="table-meta">
                <span>Se encontraron <strong>8</strong> turnos</span>
                <span>Página 1 de 1</span>
            </div>

            <table class="gv-tabla">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Paciente</th>
                        <th>Médico</th>
                        <th>Especialidad</th>
                        <th>Fecha</th>
                        <th>Horario</th>
                        <th>Estado</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><strong>T-001</strong></td>
                        <td>Gómez, Carlos</td>
                        <td>García, Laura</td>
                        <td><span class="badge badge-esp">Cardiología</span></td>
                        <td>10/06/2026</td>
                        <td>09:00 – 10:00</td>
                        <td><span class="badge badge-presente">Presente</span></td>
                        <td>
                            <button class="btn-icon" title="Ver">👁</button>
                            <button class="btn-icon danger" title="Cancelar">🗑</button>
                        </td>
                    </tr>
                    <tr>
                        <td><strong>T-002</strong></td>
                        <td>Sánchez, Ana</td>
                        <td>Martínez, Roberto</td>
                        <td><span class="badge badge-esp">Pediatría</span></td>
                        <td>11/06/2026</td>
                        <td>08:00 – 09:00</td>
                        <td><span class="badge badge-ausente">Ausente</span></td>
                        <td>
                            <button class="btn-icon" title="Ver">👁</button>
                            <button class="btn-icon danger" title="Cancelar">🗑</button>
                        </td>
                    </tr>
                    <tr>
                        <td><strong>T-003</strong></td>
                        <td>Díaz, Lucía</td>
                        <td>Peralta, Sofía</td>
                        <td><span class="badge badge-esp">Traumatología</span></td>
                        <td>12/06/2026</td>
                        <td>10:00 – 11:00</td>
                        <td><span class="badge badge-pendiente">Pendiente</span></td>
                        <td>
                            <button class="btn-icon" title="Ver">👁</button>
                            <button class="btn-icon danger" title="Cancelar">🗑</button>
                        </td>
                    </tr>
                    <tr>
                        <td><strong>T-004</strong></td>
                        <td>Herrera, Miguel</td>
                        <td>Ruiz, Valentina</td>
                        <td><span class="badge badge-esp">Neurología</span></td>
                        <td>13/06/2026</td>
                        <td>07:00 – 08:00</td>
                        <td><span class="badge badge-presente">Presente</span></td>
                        <td>
                            <button class="btn-icon" title="Ver">👁</button>
                            <button class="btn-icon danger" title="Cancelar">🗑</button>
                        </td>
                    </tr>
                    <tr>
                        <td><strong>T-005</strong></td>
                        <td>Romero, Florencia</td>
                        <td>Fernández, Juan</td>
                        <td><span class="badge badge-esp">Clínica Médica</span></td>
                        <td>14/06/2026</td>
                        <td>13:00 – 14:00</td>
                        <td><span class="badge badge-pendiente">Pendiente</span></td>
                        <td>
                            <button class="btn-icon" title="Ver">👁</button>
                            <button class="btn-icon danger" title="Cancelar">🗑</button>
                        </td>
                    </tr>
                    <tr>
                        <td><strong>T-006</strong></td>
                        <td>Alvarez, Diego</td>
                        <td>García, Laura</td>
                        <td><span class="badge badge-esp">Cardiología</span></td>
                        <td>16/06/2026</td>
                        <td>11:00 – 12:00</td>
                        <td><span class="badge badge-pendiente">Pendiente</span></td>
                        <td>
                            <button class="btn-icon" title="Ver">👁</button>
                            <button class="btn-icon danger" title="Cancelar">🗑</button>
                        </td>
                    </tr>
                    <tr>
                        <td><strong>T-007</strong></td>
                        <td>Vega, Camila</td>
                        <td>Martínez, Roberto</td>
                        <td><span class="badge badge-esp">Pediatría</span></td>
                        <td>17/06/2026</td>
                        <td>08:00 – 09:00</td>
                        <td><span class="badge badge-ausente">Ausente</span></td>
                        <td>
                            <button class="btn-icon" title="Ver">👁</button>
                            <button class="btn-icon danger" title="Cancelar">🗑</button>
                        </td>
                    </tr>
                    <tr>
                        <td><strong>T-008</strong></td>
                        <td>Morales, Pablo</td>
                        <td>Peralta, Sofía</td>
                        <td><span class="badge badge-esp">Traumatología</span></td>
                        <td>18/06/2026</td>
                        <td>10:00 – 11:00</td>
                        <td><span class="badge badge-presente">Presente</span></td>
                        <td>
                            <button class="btn-icon" title="Ver">👁</button>
                            <button class="btn-icon danger" title="Cancelar">🗑</button>
                        </td>
                    </tr>
                </tbody>
            </table>

            <div class="paginador">
                <button class="pag-btn">&#8249;</button>
                <button class="pag-btn active">1</button>
                <button class="pag-btn">2</button>
                <button class="pag-btn">3</button>
                <button class="pag-btn">&#8250;</button>
            </div>
        </div>

    </div>

</asp:Content>