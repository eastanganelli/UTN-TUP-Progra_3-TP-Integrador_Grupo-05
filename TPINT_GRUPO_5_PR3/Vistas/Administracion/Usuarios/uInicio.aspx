<%@ Page Title="Usuarios - Inicio" Language="C#" MasterPageFile="~/Administracion/Plantilla.Master" AutoEventWireup="true" CodeBehind="uInicio.aspx.cs" Inherits="Vistas.Administracion.Usuarios.Usuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="contenedor listado">

        <div class="page-header">
            <div>
                <div class="page-title">Usuarios</div>
                <div class="page-subtitle">Gestión de usuarios con acceso al sistema</div>
            </div>
            <asp:Button ID="btnNuevoUsuario" runat="server" Text="+ Nuevo usuario"
                CssClass="btn-primary" OnClick="btnNuevoUsuario_Click" />
        </div>

        <div class="filters-bar">
            <div class="filter-group">
                <label>Buscar</label>
                <asp:TextBox ID="txtBuscar" runat="server" placeholder="Nombre de usuario..."
                    style="height:34px; padding:0 10px; font-size:13px; border:1px solid #ccc; border-radius:5px; background:#fafafa; color:#1a2332; min-width:200px;" />
            </div>
            <div class="filter-group">
                <label>Rol</label>
                <asp:DropDownList ID="ddlRol" runat="server"
                    style="height:34px; padding:0 10px; font-size:13px; border:1px solid #ccc; border-radius:5px; background:#fafafa; color:#1a2332; min-width:130px;">
                    <asp:ListItem Text="Todos" Value="" />
                    <asp:ListItem Text="Administrador" Value="admin" />
                    <asp:ListItem Text="Médico" Value="medico" />
                </asp:DropDownList>
            </div>
            <div class="filter-group">
                <label>Estado</label>
                <asp:DropDownList ID="ddlEstado" runat="server"
                    style="height:34px; padding:0 10px; font-size:13px; border:1px solid #ccc; border-radius:5px; background:#fafafa; color:#1a2332; min-width:120px;">
                    <asp:ListItem Text="Todos"    Value="" />
                    <asp:ListItem Text="Activo"   Value="1" />
                    <asp:ListItem Text="Inactivo" Value="0" />
                </asp:DropDownList>
            </div>
            <asp:Button ID="btnBuscar"  runat="server" Text="Buscar"  CssClass="btn-search" OnClick="btnBuscar_Click" />
            <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" CssClass="btn-clear"  OnClick="btnLimpiar_Click" />
        </div>

        <div class="table-card">
            <div class="table-meta">
                <span>Se encontraron <strong><asp:Label ID="lblTotalUsuarios" runat="server" Text="0" /></strong> usuarios</span>
                <asp:Label ID="lblPaginaInfo" runat="server" Text="Página 1 de 1" />
            </div>

            <asp:Repeater ID="rptUsuarios" runat="server" OnItemCommand="rptUsuarios_ItemCommand">
                <HeaderTemplate>
                    <table class="gv-medicos">
                        <thead>
                            <tr>
                                <th>Usuario</th>
                                <th>Rol</th>
                                <th>Médico asociado</th>
                                <th>Estado</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><strong><%# Eval("username") %></strong></td>
                        <td>
                            <span class='<%# Eval("tipo").ToString() == "admin" ? "badge badge-esp" : "badge" %>'
                                  style='<%# Eval("tipo").ToString() != "admin" ? "background:#f0f4fa;color:#1a2332;" : "" %>'>
                                <%# Eval("tipo").ToString() == "admin" ? "Administrador" : "Médico" %>
                            </span>
                        </td>
                        <td><%# Eval("NombreMedico") ?? "<span style='color:#bbb'>—</span>" %></td>
                        <td>
                            <span class='<%# Convert.ToBoolean(Eval("activo")) ? "badge badge-active" : "badge badge-inactive" %>'>
                                <%# Convert.ToBoolean(Eval("activo")) ? "Activo" : "Inactivo" %>
                            </span>
                        </td>
                        <td>
                            <asp:HyperLink runat="server"
                                NavigateUrl='<%# "uVer.aspx?id=" + Eval("id_usuario") %>'
                                CssClass="btn-icon" title="Ver">👁</asp:HyperLink>
                            <asp:HyperLink runat="server"
                                NavigateUrl='<%# "uEditar.aspx?id=" + Eval("id_usuario") %>'
                                CssClass="btn-icon" title="Editar">✏️</asp:HyperLink>
                            <asp:LinkButton runat="server" CssClass="btn-icon danger"
                                CommandName="Baja" CommandArgument='<%# Eval("id_usuario") %>'
                                title="Dar de baja"
                                OnClientClick="return confirm('¿Confirma dar de baja este usuario?');">🗑</asp:LinkButton>
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
                    AutoPostBack="true" OnSelectedIndexChanged="ddlPagina_SelectedIndexChanged" />
                <asp:LinkButton ID="lbtnSiguiente" runat="server" CssClass="pag-btn" OnClick="lbtnSiguiente_Click">&#8250;</asp:LinkButton>
            </div>
        </div>

    </div>

</asp:Content>
