<%@ Page Title="Medicos - Inicio" Language="C#" MasterPageFile="~/Administracion/Plantilla.Master" AutoEventWireup="true" CodeBehind="mInicio.aspx.cs" Inherits="Vistas.Administracion.Medicos.Medicos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="contenedor listado">

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