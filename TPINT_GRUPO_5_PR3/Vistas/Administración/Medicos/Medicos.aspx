<%@ Page Title="Medicos" Language="C#" MasterPageFile="~/Administración/Plantilla.Master" AutoEventWireup="true" CodeBehind="Medicos.aspx.cs" Inherits="Vistas.Administración.Medicos.Medicos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
<style>
    /* Sobrescribe el max-width:380px del contenedor base */
    .contenedor {
        max-width: 100% !important;
        width: 100%;
        padding: 0;
    }

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

    .gv-medicos { width: 100%; border-collapse: collapse; font-size: 13px; }
    .gv-medicos th { background: #1a2332; color: #fff; padding: 11px 14px; text-align: left; font-weight: 500; font-size: 12px; text-transform: uppercase; letter-spacing: 0.4px; }
    .gv-medicos td { padding: 11px 14px; color: #333; border-bottom: 1px solid #f0f0f0; vertical-align: middle; }
    .gv-medicos tr:last-child td { border-bottom: none; }
    .gv-medicos tr:hover td { background: #f5f8fc; }

    .badge { display: inline-block; padding: 3px 9px; border-radius: 4px; font-size: 11px; font-weight: 500; }
    .badge-active { background: #eaf3de; color: #3B6D11; }
    .badge-inactive { background: #fcebeb; color: #A32D2D; }
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
                <div class="page-title">Médicos</div>
                <div class="page-subtitle">Gestión de médicos registrados en el sistema</div>
            </div>
            <button class="btn-primary">+ Nuevo médico</button>
        </div>

        <div class="filters-bar">
            <div class="filter-group">
                <label>Buscar</label>
                <asp:TextBox ID="txtBuscar" runat="server" placeholder="Nombre, apellido o DNI..." style="height:34px; padding:0 10px; font-size:13px; border:1px solid #ccc; border-radius:5px; background:#fafafa; color:#1a2332; min-width:200px;" />
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
                <label>Estado</label>
                <asp:DropDownList ID="ddlEstado" runat="server" style="height:34px; padding:0 10px; font-size:13px; border:1px solid #ccc; border-radius:5px; background:#fafafa; color:#1a2332; min-width:120px;">
                    <asp:ListItem Text="Todos" Value="" />
                    <asp:ListItem Text="Activo" Value="1" />
                    <asp:ListItem Text="Inactivo" Value="0" />
                </asp:DropDownList>
            </div>
            <button class="btn-search">Buscar</button>
            <button class="btn-clear">Limpiar</button>
        </div>

        <div class="table-card">
            <div class="table-meta">
                <span>Se encontraron <strong>8</strong> médicos</span>
                <span>Página 1 de 1</span>
            </div>

            <table class="gv-medicos">
                <thead>
                    <tr>
                        <th>Legajo</th>
                        <th>Médico</th>
                        <th>DNI</th>
                        <th>Especialidad</th>
                        <th>Días de atención</th>
                        <th>Horario</th>
                        <th>Estado</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><strong>MED-001</strong></td>
                        <td><strong>García, Laura</strong><br /><span style="font-size:11px;color:#888">l.garcia@clinica.com</span></td>
                        <td>28.541.003</td>
                        <td><span class="badge badge-esp">Cardiología</span></td>
                        <td>Lun / Mié / Vie</td>
                        <td>09:00 – 15:00</td>
                        <td><span class="badge badge-active">Activo</span></td>
                        <td>
                            <button class="btn-icon" title="Ver">👁</button>
                            <button class="btn-icon" title="Editar">✏️</button>
                            <button class="btn-icon danger" title="Dar de baja">🗑</button>
                        </td>
                    </tr>
                    <tr>
                        <td><strong>MED-002</strong></td>
                        <td><strong>Martínez, Roberto</strong><br /><span style="font-size:11px;color:#888">r.martinez@clinica.com</span></td>
                        <td>31.220.887</td>
                        <td><span class="badge badge-esp">Pediatría</span></td>
                        <td>Mar / Jue</td>
                        <td>08:00 – 14:00</td>
                        <td><span class="badge badge-active">Activo</span></td>
                        <td>
                            <button class="btn-icon" title="Ver">👁</button>
                            <button class="btn-icon" title="Editar">✏️</button>
                            <button class="btn-icon danger" title="Dar de baja">🗑</button>
                        </td>
                    </tr>
                    <tr>
                        <td><strong>MED-003</strong></td>
                        <td><strong>Peralta, Sofía</strong><br /><span style="font-size:11px;color:#888">s.peralta@clinica.com</span></td>
                        <td>35.109.442</td>
                        <td><span class="badge badge-esp">Traumatología</span></td>
                        <td>Lun / Mar / Jue / Vie</td>
                        <td>10:00 – 17:00</td>
                        <td><span class="badge badge-active">Activo</span></td>
                        <td>
                            <button class="btn-icon" title="Ver">👁</button>
                            <button class="btn-icon" title="Editar">✏️</button>
                            <button class="btn-icon danger" title="Dar de baja">🗑</button>
                        </td>
                    </tr>
                    <tr>
                        <td><strong>MED-004</strong></td>
                        <td><strong>Fernández, Juan</strong><br /><span style="font-size:11px;color:#888">j.fernandez@clinica.com</span></td>
                        <td>29.877.011</td>
                        <td><span class="badge badge-esp">Clínica Médica</span></td>
                        <td>Mié / Vie</td>
                        <td>13:00 – 19:00</td>
                        <td><span class="badge badge-inactive">Inactivo</span></td>
                        <td>
                            <button class="btn-icon" title="Ver">👁</button>
                            <button class="btn-icon" title="Editar">✏️</button>
                            <button class="btn-icon danger" title="Dar de baja">🗑</button>
                        </td>
                    </tr>
                    <tr>
                        <td><strong>MED-005</strong></td>
                        <td><strong>Ruiz, Valentina</strong><br /><span style="font-size:11px;color:#888">v.ruiz@clinica.com</span></td>
                        <td>33.654.229</td>
                        <td><span class="badge badge-esp">Neurología</span></td>
                        <td>Lun / Mié</td>
                        <td>07:00 – 12:00</td>
                        <td><span class="badge badge-active">Activo</span></td>
                        <td>
                            <button class="btn-icon" title="Ver">👁</button>
                            <button class="btn-icon" title="Editar">✏️</button>
                            <button class="btn-icon danger" title="Dar de baja">🗑</button>
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