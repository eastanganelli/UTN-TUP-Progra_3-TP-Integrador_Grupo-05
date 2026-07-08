<%@ Page Title="Pacientes" Language="C#" MasterPageFile="~/Administracion/Plantilla.Master" AutoEventWireup="true" CodeBehind="pInicio.aspx.cs" Inherits="Vistas.Administracion.Pacientes.Pacientes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
<style>
    .grid-container {
    width: 100%;
    overflow-x: auto;
    overflow-y: hidden;
}

.gv-tabla {
    min-width: 1800px; 
    border-collapse: collapse;
}

.gv-tabla th,
.gv-tabla td {
    padding: 10px;
    white-space: nowrap;
    vertical-align: middle;
}
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="contenedor listado">

        <div class="page-header">
            <div>
                <div class="page-title">Pacientes</div>
                <div class="page-subtitle">Gestión de pacientes registrados en el sistema</div>
            </div>
            <asp:Button class="btn-primary" ID="btnAgregar" runat="server" Text="+ Agregar Paciente" OnClick="btnAgregar_Click" />
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
            <asp:Button ID="BtnBuscar" runat="server" Text="Buscar" CssClass="btn-search" OnClick="BtnBuscar_Click" />
            <asp:Button ID="BtnLimpiar" runat="server" Text="Limpiar" CssClass="btn-clear" OnClick="BtnLimpiar_Click" />
        </div>

        <div class="table-card">
            <div class="table-meta">
                <span>Se encontraron 
                <asp:Label ID="lblCantidad" runat="server"></asp:Label> pacientes</span>
                <span>Página 1 de 1</span>
            </div>

            

            
            <div class ="grid-container">
            <asp:GridView ID="gvPacientes" runat="server" CssClass="gv-tabla" GridLines="None" BorderWidth="0" AllowPaging="True" AutoGenerateColumns="False" OnPageIndexChanging="gvPacientes_PageIndexChanging" OnRowDataBound="gvPacientes_RowDataBound" PageSize="5" OnRowCommand="gvPacientes_RowCommand">
                <Columns>
                    <asp:TemplateField HeaderText="ID Paciente">
                        <EditItemTemplate>
                            <asp:Label ID="lbledit_id" runat="server" Text='<%# Bind("id_paciente") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblIdPaciente" runat="server" Text='<%# Bind("id_paciente") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Apellido ">
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_editApellido" runat="server" Text='<%# Bind("Apellido") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblApellido" runat="server" Text='<%# Bind("Apellido") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Nombre">
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_editNombre" runat="server" Text='<%# Bind("Nombre") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblNombre" runat="server" Text='<%# Bind("Nombre") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="DNI">
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_editDNI" runat="server" Text='<%# Bind("DNI") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblDNI" runat="server" Text='<%# Bind("DNI") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Sexo">
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_editSexo" runat="server" Text='<%# Bind("Sexo") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblSexo" runat="server" Text='<%# Bind("Sexo") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Nacionalidad">
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_editNacionalidad" runat="server" Text='<%# Bind("nacionalidad") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblNacionalidad" runat="server" Text='<%# Bind("Nacionalidad") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Fecha de Nacimiento">
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_editFecha" runat="server" Text='<%# Bind("fecha_nacimiento") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblFecha" runat="server" Text='<%# Bind("Fecha_Nacimiento", "{0:dd/MM/yyyy}") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Dirección">
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_editDireccion" runat="server" Text='<%# Bind("direccion") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblDireccion" runat="server" Text='<%# Bind("direccion") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Localidad">
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_editLocalidad" runat="server" Text='<%# Bind("Localidad") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblLocalidad" runat="server" Text='<%# Bind("Localidad") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Provincia">
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_editProvincia" runat="server" Text='<%# Bind("Provincia") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblProvincia" runat="server" Text='<%# Bind("Provincia") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Correo electrónico">
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_editCorreo" runat="server" Text='<%# Bind("email") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblCorreo" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Teléfono">
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_editTelefono" runat="server" Text='<%# Bind("Telefono") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblTelefono" runat="server" Text='<%# Bind("telefono") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Activo">
                        <EditItemTemplate>
                            <asp:CheckBox ID="chkbox_editActivo" runat="server" Checked='<%# Eval("Activo") %>' />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <span class='<%# Convert.ToBoolean(Eval("Activo")) ? "badge badge-active" : "badge badge-inactive" %>'>
                                 <%# Convert.ToBoolean(Eval("Activo")) ? "Activo" : "Inactivo" %>
                             </span>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Acciones">
                         <ItemTemplate>

                            <asp:LinkButton
                                    ID="btnVer"
                                    runat="server"
                                    CommandName="Ver"
                                    CommandArgument='<%# Bind("Id_Paciente") %>'
                                    CssClass="btn-icon"
                                    ToolTip="Ver">
                                    👁
                            </asp:LinkButton>

                            <asp:LinkButton
                                   ID="btnEditar"
                                   runat="server"
                                   CommandName="Edit"
                                  CommandArgument='<%# Bind("Id_Paciente") %>'
                                   CssClass="btn-icon"
                                   ToolTip="Editar">
                                    ✏️
                            </asp:LinkButton>

                            <asp:LinkButton
                                    ID="btnToggle"
                                    runat="server"
                                    CommandName="ToggleEstado"
                                    CommandArgument='<%# Bind("Id_Paciente") %>'
                                    CssClass="btn-icon"
                                    ToolTip='<%# Convert.ToBoolean(Eval("Activo")) ? "Dar de baja" : "Reactivar" %>'>
    
                                    <%# Convert.ToBoolean(Eval("Activo")) ? "🗑" : "✔️" %>
                            </asp:LinkButton>

                        </ItemTemplate>
                  </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>

            

            

    </div>
    </div>
</asp:Content>