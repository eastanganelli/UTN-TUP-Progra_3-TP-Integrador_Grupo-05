<%@ Page Title="Turnos" Language="C#" MasterPageFile="~/Administración/Plantilla.Master" AutoEventWireup="true" CodeBehind="tInicio.aspx.cs" Inherits="Vistas.Administración.Turnos.Turnos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
<style>
    .contenedor { max-width: 100% !important; width: 100%; padding: 0; }

    .page-header { display: flex; align-items: center; justify-content: space-between; margin-bottom: 20px; }
    .page-title { font-size: 22px; font-weight: 500; color: #1a2332; }
    .page-subtitle { font-size: 13px; color: #888; margin-top: 2px; }
    .btn-primary { background: #185FA5; color: #fff; border: none; border-radius: 5px; padding: 9px 18px; font-size: 13px; cursor: pointer; display: inline-flex; align-items: center; gap: 6px; }
    .btn-primary:hover { background: #0C447C; }
    .btn-search { background: #185FA5; color: #fff; border: none; border-radius: 5px; padding: 0 16px; height: 34px; font-size: 13px; cursor: pointer; }
    .btn-clear { background: #fff; color: #666; border: 1px solid #ccc; border-radius: 5px; padding: 0 14px; height: 34px; font-size: 13px; cursor: pointer; }

    .filters-bar { background: #fff; border: 1px solid #ccc; border-radius: 8px; padding: 14px 18px; margin-bottom: 16px; display: flex; flex-wrap: wrap; gap: 12px; align-items: flex-end; }
    .filter-group { display: flex; flex-direction: column; gap: 4px; }
    .filter-group label { font-size: 11px; color: #666; font-weight: 500; text-transform: uppercase; letter-spacing: 0.4px; }
    .filter-group input, .filter-group select { height: 34px; padding: 0 10px; font-size: 13px; border: 1px solid #ccc; border-radius: 5px; background: #fafafa; color: #1a2332; min-width: 140px; }

    .table-card { background: #fff; border: 1px solid #ccc; border-radius: 8px; overflow: hidden; }
    .table-meta { display: flex; align-items: center; justify-content: space-between; padding: 12px 18px; border-bottom: 1px solid #eee; font-size: 13px; color: #666; }

    .gv-tabla { width: 100%; border-collapse: collapse; font-size: 13px; }
    .gv-tabla th { background: #1a2332; color: #fff; padding: 11px 14px; text-align: left; font-weight: 500; font-size: 12px; text-transform: uppercase; letter-spacing: 0.4px; }
    .gv-tabla td { padding: 11px 14px; color: #333; border-bottom: 1px solid #f0f0f0; vertical-align: middle; }
    .gv-tabla tr:last-child td { border-bottom: none; }
    .gv-tabla tr:hover td { background: #f5f8fc; }

    .badge { display: inline-block; padding: 3px 9px; border-radius: 4px; font-size: 11px; font-weight: 500; }
    .badge-presente { background: #eaf3de; color: #3B6D11; }
    .badge-ausente { background: #fcebeb; color: #A32D2D; }
    .badge-pendiente { background: #faeeda; color: #633806; }
    .badge-esp { background: #e6f1fb; color: #0C447C; }

    .btn-icon { border: 1px solid #ccc; background: #fff; border-radius: 5px; width: 30px; height: 30px; display: inline-flex; align-items: center; justify-content: center; cursor: pointer; color: #555; font-size: 13px; }
    .btn-icon:hover { border-color: #185FA5; color: #185FA5; background: #f0f6ff; }
    .btn-icon.danger:hover { border-color: #cc0000; color: #cc0000; background: #fff5f5; }

    .paginador { padding: 12px 18px; border-top: 1px solid #eee; display: flex; justify-content: flex-end; gap: 4px; }
    .pag-btn { display: inline-flex; align-items: center; justify-content: center; width: 30px; height: 30px; border: 1px solid #ccc; border-radius: 5px; font-size: 13px; color: #555; cursor: pointer; background: #fff; }
    .pag-btn.active { background: #185FA5; border-color: #185FA5; color: #fff; }
    .pag-btn:hover:not(.active) { border-color: #185FA5; color: #185FA5; }
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="contenedor">

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