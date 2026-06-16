<%@ Page Title="Pacientes" Language="C#" MasterPageFile="~/Administración/Plantilla.Master" AutoEventWireup="true" CodeBehind="Pacientes.aspx.cs" Inherits="Vistas.Administración.Pacientes.Pacientes" %>

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
    .badge-active { background: #eaf3de; color: #3B6D11; }
    .badge-inactive { background: #fcebeb; color: #A32D2D; }

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
                <div class="page-title">Pacientes</div>
                <div class="page-subtitle">Gestión de pacientes registrados en el sistema</div>
            </div>
            <button class="btn-primary">+ Nuevo paciente</button>
        </div>

        <div class="filters-bar">
            <div class="filter-group">
                <label>Buscar</label>
                <asp:TextBox ID="txtBuscar" runat="server" placeholder="Nombre, apellido o DNI..." style="height:34px; padding:0 10px; font-size:13px; border:1px solid #ccc; border-radius:5px; background:#fafafa; color:#1a2332; min-width:200px;" />
            </div>
            <div class="filter-group">
                <label>Sexo</label>
                <asp:DropDownList ID="ddlSexo" runat="server" style="height:34px; padding:0 10px; font-size:13px; border:1px solid #ccc; border-radius:5px; background:#fafafa; color:#1a2332; min-width:130px;">
                    <asp:ListItem Text="Todos" Value="" />
                    <asp:ListItem Text="Masculino" Value="M" />
                    <asp:ListItem Text="Femenino" Value="F" />
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
                <span>Se encontraron <strong>8</strong> pacientes</span>
                <span>Página 1 de 1</span>
            </div>

            <table class="gv-tabla">
                <thead>
                    <tr>
                        <th>DNI</th>
                        <th>Paciente</th>
                        <th>Sexo</th>
                        <th>Fecha de nacimiento</th>
                        <th>Teléfono</th>
                        <th>Localidad</th>
                        <th>Estado</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>32.456.789</td>
                        <td><strong>Gómez, Carlos</strong><br /><span style="font-size:11px;color:#888">c.gomez@gmail.com</span></td>
                        <td>Masculino</td>
                        <td>14/03/1990</td>
                        <td>11 4523-8891</td>
                        <td>San Martín</td>
                        <td><span class="badge badge-active">Activo</span></td>
                        <td>
                            <button class="btn-icon" title="Ver">👁</button>
                            <button class="btn-icon" title="Editar">✏️</button>
                            <button class="btn-icon danger" title="Dar de baja">🗑</button>
                        </td>
                    </tr>
                    <tr>
                        <td>28.114.003</td>
                        <td><strong>Sánchez, Ana</strong><br /><span style="font-size:11px;color:#888">a.sanchez@gmail.com</span></td>
                        <td>Femenino</td>
                        <td>22/07/1985</td>
                        <td>11 3377-4420</td>
                        <td>Tigre</td>
                        <td><span class="badge badge-active">Activo</span></td>
                        <td>
                            <button class="btn-icon" title="Ver">👁</button>
                            <button class="btn-icon" title="Editar">✏️</button>
                            <button class="btn-icon danger" title="Dar de baja">🗑</button>
                        </td>
                    </tr>
                    <tr>
                        <td>40.887.221</td>
                        <td><strong>Díaz, Lucía</strong><br /><span style="font-size:11px;color:#888">l.diaz@gmail.com</span></td>
                        <td>Femenino</td>
                        <td>05/11/2001</td>
                        <td>11 6612-9934</td>
                        <td>Pacheco</td>
                        <td><span class="badge badge-active">Activo</span></td>
                        <td>
                            <button class="btn-icon" title="Ver">👁</button>
                            <button class="btn-icon" title="Editar">✏️</button>
                            <button class="btn-icon danger" title="Dar de baja">🗑</button>
                        </td>
                    </tr>
                    <tr>
                        <td>25.003.441</td>
                        <td><strong>Herrera, Miguel</strong><br /><span style="font-size:11px;color:#888">m.herrera@gmail.com</span></td>
                        <td>Masculino</td>
                        <td>30/01/1978</td>
                        <td>11 4801-2256</td>
                        <td>Don Torcuato</td>
                        <td><span class="badge badge-inactive">Inactivo</span></td>
                        <td>
                            <button class="btn-icon" title="Ver">👁</button>
                            <button class="btn-icon" title="Editar">✏️</button>
                            <button class="btn-icon danger" title="Dar de baja">🗑</button>
                        </td>
                    </tr>
                    <tr>
                        <td>38.229.774</td>
                        <td><strong>Romero, Florencia</strong><br /><span style="font-size:11px;color:#888">f.romero@gmail.com</span></td>
                        <td>Femenino</td>
                        <td>18/06/1999</td>
                        <td>11 5544-1123</td>
                        <td>Benavídez</td>
                        <td><span class="badge badge-active">Activo</span></td>
                        <td>
                            <button class="btn-icon" title="Ver">👁</button>
                            <button class="btn-icon" title="Editar">✏️</button>
                            <button class="btn-icon danger" title="Dar de baja">🗑</button>
                        </td>
                    </tr>
                    <tr>
                        <td>30.667.009</td>
                        <td><strong>Alvarez, Diego</strong><br /><span style="font-size:11px;color:#888">d.alvarez@gmail.com</span></td>
                        <td>Masculino</td>
                        <td>09/09/1993</td>
                        <td>11 4209-8871</td>
                        <td>Zárate</td>
                        <td><span class="badge badge-active">Activo</span></td>
                        <td>
                            <button class="btn-icon" title="Ver">👁</button>
                            <button class="btn-icon" title="Editar">✏️</button>
                            <button class="btn-icon danger" title="Dar de baja">🗑</button>
                        </td>
                    </tr>
                    <tr>
                        <td>42.110.338</td>
                        <td><strong>Vega, Camila</strong><br /><span style="font-size:11px;color:#888">c.vega@gmail.com</span></td>
                        <td>Femenino</td>
                        <td>27/02/2003</td>
                        <td>11 7823-4490</td>
                        <td>San Isidro</td>
                        <td><span class="badge badge-active">Activo</span></td>
                        <td>
                            <button class="btn-icon" title="Ver">👁</button>
                            <button class="btn-icon" title="Editar">✏️</button>
                            <button class="btn-icon danger" title="Dar de baja">🗑</button>
                        </td>
                    </tr>
                    <tr>
                        <td>27.554.882</td>
                        <td><strong>Morales, Pablo</strong><br /><span style="font-size:11px;color:#888">p.morales@gmail.com</span></td>
                        <td>Masculino</td>
                        <td>11/12/1980</td>
                        <td>11 3901-6643</td>
                        <td>Escobar</td>
                        <td><span class="badge badge-inactive">Inactivo</span></td>
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