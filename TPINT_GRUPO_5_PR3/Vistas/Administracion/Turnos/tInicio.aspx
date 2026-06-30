<%@ Page Title="Turnos" Language="C#" MasterPageFile="~/Administracion/Plantilla.Master" AutoEventWireup="true" CodeBehind="tInicio.aspx.cs" Inherits="Vistas.Administracion.Turnos.Turnos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
<style>
    .badge-presente { background: #eaf3de;
            color: #3B6D11; }
    .badge-ausente { background: #fcebeb; color: #A32D2D;
    }
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="contenedor listado">

        <div class="page-header">
            <div>
                <div class="page-title">Turnos</div>
                <div class="page-subtitle">Gestión de turnos asignados en el sistema</div>
            </div>
            <asp:Button ID="btnNuevoTurno" runat="server" Text="+ Nuevo turno" 
 CssClass="btn-primary" PostBackUrl="tNuevo.aspx" OnClick="btnNuevoTurno_Click" />
        </div>

        <div class="filters-bar">
            <div class="filter-group">
                <label>Buscar</label>
                <asp:TextBox ID="txtBuscar" runat="server" placeholder="Paciente o médico..." style="height:34px; padding:0 10px; font-size:13px; border:1px solid #ccc; border-radius:5px; background:#fafafa; color:#1a2332; min-width:200px;"
 />
            </div>
            <div class="filter-group">
                <label>Especialidad</label>
                <asp:DropDownList ID="ddlEspecialidad" runat="server" CssClass="tu-clase-css">
</asp:DropDownList>
            </div>
            <div class="filter-group">
               
                 <label>Desde</label>
                <asp:TextBox ID="txtDesde" runat="server" TextMode="Date" style="height:34px; padding:0 10px; font-size:13px; border:1px solid #ccc; border-radius:5px; background:#fafafa; color:#1a2332; min-width:140px;"
 />
            </div>
            <div class="filter-group">
                <label>Hasta</label>
                <asp:TextBox ID="txtHasta" runat="server" TextMode="Date" style="height:34px; padding:0 10px; font-size:13px; border:1px solid #ccc; border-radius:5px; background:#fafafa; color:#1a2332; min-width:140px;"
 />
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
          
             <asp:Button ID="btnBuscar" runat="server" Text="Buscar" CssClass="btn-search" OnClick="btnBuscar_Click" />
            <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" CssClass="btn-clear" OnClick="btnLimpiar_Click" />
        </div>

        <div class="table-meta">
            <span>Se encontraron <strong><asp:Label ID="lblContador" runat="server" /></strong> turnos</span>
            <span>Página <strong><asp:Label ID="lblPaginaActual" runat="server" /></strong> de <strong><asp:Label ID="lblTotalPaginas" runat="server"  /></strong></span>
        </div>

         
             <asp:GridView ID="dgvTurnos" runat="server" 
    AutoGenerateColumns="False" 
    CssClass="gv-tabla" 
    GridLines="None" 
    ShowHeaderWhenEmpty="true"
    AllowPaging="True"           
    PageSize="10"                
    OnPageIndexChanging="dgvTurnos_PageIndexChanging"
    OnRowCommand="dgvTurnos_RowCommand">
    <Columns>
        <asp:TemplateField HeaderText="#">
            <ItemTemplate>
       
                 <strong><%# Eval("id_turno") %></strong>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="paciente" HeaderText="Paciente" />
        <asp:BoundField DataField="medico" HeaderText="Médico" />
        <asp:TemplateField HeaderText="Especialidad">
            <ItemTemplate>
                <span class="badge badge-esp"><%# Eval("especialidad") %></span>
      
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="fecha" HeaderText="Fecha" DataFormatString="{0:dd/MM/yyyy}" />
        <asp:BoundField DataField="horario" HeaderText="Horario" />
        <asp:TemplateField HeaderText="Estado">
            <ItemTemplate>
                <span class='badge badge-<%# Eval("estado").ToString().ToLower() %>'>
                    <%# Eval("estado") 
 %>
                </span>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Acciones">
            <ItemTemplate>
                <asp:HyperLink runat="server"
                          
                NavigateUrl='<%# "tVer.aspx?id=" + Eval("id_turno") %>'
                                CssClass="btn-icon" title="Ver">👁</asp:HyperLink>

                <asp:HyperLink runat="server"
    NavigateUrl='<%# "tEditar.aspx?id=" + Eval("id_turno") %>'
    CssClass="btn-icon" title="Editar">✏️</asp:HyperLink>
                <asp:LinkButton runat="server" CssClass="btn-icon danger"
        
                    CommandName="Baja" CommandArgument='<%# Eval("id_turno") %>'
                    OnClientClick="return confirm('¿Está seguro de que desea eliminar este turno?');">
                    🗑
                </asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
 
     </Columns>
<PagerTemplate>
        <div class="paginador">
            <asp:LinkButton ID="btnAnt" runat="server" CommandName="Page" CommandArgument="Prev" CssClass="pag-btn">&#8249;</asp:LinkButton>
            
            <span class="pag-btn active">
                <asp:Label ID="lblNumPag" runat="server" Text='<%# dgvTurnos.PageIndex + 1 %>' />
            </span>
         
             
            <asp:LinkButton ID="btnSig" runat="server" CommandName="Page" CommandArgument="Next" CssClass="pag-btn">&#8250;</asp:LinkButton>
        </div>
    </PagerTemplate>
</asp:GridView>
        </div>

    </div>

</asp:Content>