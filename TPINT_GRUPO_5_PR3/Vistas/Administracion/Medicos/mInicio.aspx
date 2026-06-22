<%@ Page Title="Medicos" Language="C#" MasterPageFile="~/Administracion/Plantilla.Master" AutoEventWireup="true" CodeBehind="mInicio.aspx.cs" Inherits="Vistas.Administracion.Medicos.Medicos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
<style>
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
    .pag-select { height: 30px; padding: 0 6px; font-size: 13px; border: 1px solid #ccc; border-radius: 5px; color: #555; background: #fff; cursor: pointer; min-width: 60px; }
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
            <%--<div class="filter-group">
                <label>Especialidad</label>
                <asp:DropDownList ID="ddlEspecialidad" runat="server" style="height:34px; padding:0 10px; font-size:13px; border:1px solid #ccc; border-radius:5px; background:#fafafa; color:#1a2332; min-width:160px;">
                    <asp:ListItem Text="Todas" Value="" />
                    <asp:ListItem Text="Cardiología" Value="1" />
                    <asp:ListItem Text="Pediatría" Value="2" />
                    <asp:ListItem Text="Traumatología" Value="3" />
                    <asp:ListItem Text="Clínica Médica" Value="4" />
                    <asp:ListItem Text="Neurología" Value="5" />
                </asp:DropDownList>
            </div>--%>
            <div class="filter-group">
                <label>Estado</label>
                <asp:DropDownList ID="ddlEstado" runat="server" style="height:34px; padding:0 10px; font-size:13px; border:1px solid #ccc; border-radius:5px; background:#fafafa; color:#1a2332; min-width:120px;">
                    <asp:ListItem Text="Todos" Value="" />
                    <asp:ListItem Text="Activo" Value="1" />
                    <asp:ListItem Text="Inactivo" Value="0" />
                </asp:DropDownList>
            </div>
            <asp:Button ID="btnBuscar"  runat="server" Text="Buscar"  CssClass="btn-search" OnClick="btnBuscar_Click"  />
            <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" CssClass="btn-clear"  OnClick="btnLimpiar_Click" />
        </div>

        <div class="table-card">
            <div class="table-meta">
                <span>Se encontraron <strong><asp:Label ID="lblTotalMedicos" runat="server" Text="0" /></strong> médicos</span>
                <asp:Label ID="lblPaginaInfo" runat="server" Text="Página 1 de 1" />
            </div>

            <asp:Repeater ID="rptMedicos" runat="server" OnItemCommand="rptMedicos_ItemCommand">
                <HeaderTemplate>
                    <table class="gv-medicos">
                        <thead>
                            <tr>
                                <th>Legajo</th>
                                <th>Médico</th>
                                <th>DNI</th>
                                <th>Especialidad</th>
                                <th>Estado</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><strong><%# Eval("Legajo") %></strong></td>
                        <td>
                            <strong><%# Eval("Apellido") %>, <%# Eval("Nombre") %></strong><br />
                            <span style="font-size:11px;color:#888"><%# Eval("Email") %></span>
                        </td>
                        <td><%# Eval("DNI") %></td>
                        <td><span class="badge badge-esp"><%# Eval("Especialidad") %></span></td>
                        <td>
                            <span class='<%# Convert.ToBoolean(Eval("Activo")) ? "badge badge-active" : "badge badge-inactive" %>'>
                                <%# Convert.ToBoolean(Eval("Activo")) ? "Activo" : "Inactivo" %>
                            </span>
                        </td>
                        <td>
                            <asp:HyperLink runat="server"
                                NavigateUrl='<%# "mVer.aspx?id=" + Eval("id_medico") %>'
                                CssClass="btn-icon" title="Ver">👁</asp:HyperLink>
                            <asp:HyperLink runat="server"
                                NavigateUrl='<%# "mEditar.aspx?id=" + Eval("id_medico") %>'
                                CssClass="btn-icon" title="Editar">✏️</asp:HyperLink>
                            <asp:LinkButton runat="server" CssClass="btn-icon danger"
                                CommandName="Baja" CommandArgument='<%# Eval("id_medico") %>'
                                title="Dar de baja"
                                OnClientClick="return confirm('¿Confirma dar de baja este médico?');">🗑</asp:LinkButton>
                        </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                        </tbody>
                    </table>
                </FooterTemplate>
            </asp:Repeater>

            <div class="paginador">
                <asp:LinkButton ID="lbtnAnterior"  runat="server" CssClass="pag-btn" OnClick="lbtnAnterior_Click">&#8249;</asp:LinkButton>
                <asp:DropDownList ID="ddlPagina" runat="server" CssClass="pag-select"
                    AutoPostBack="true"
                    OnSelectedIndexChanged="ddlPagina_SelectedIndexChanged" />
                <asp:LinkButton ID="lbtnSiguiente" runat="server" CssClass="pag-btn" OnClick="lbtnSiguiente_Click">&#8250;</asp:LinkButton>
            </div>
        </div>

    </div>

</asp:Content>