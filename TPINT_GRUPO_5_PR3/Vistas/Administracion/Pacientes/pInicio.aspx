<%@ Page Title="Pacientes" Language="C#" MasterPageFile="~/Administracion/Plantilla.Master" AutoEventWireup="true" CodeBehind="pInicio.aspx.cs" Inherits="Vistas.Administracion.Pacientes.pInicio" %>

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
    .gv-tabla th { background: #1a2332; color: #fff; padding: 11px 14px; text-align: center; vertical-align:middle; font-weight: 500; font-size: 12px; text-transform: uppercase; letter-spacing: 0.4px;white-space: nowrap; }
    .gv-tabla td { padding: 11px 14px; color: #333; border-bottom: 1px solid #f0f0f0; vertical-align: middle; white-space:nowrap}
    .gv-tabla tr:last-child td { border-bottom: none; }
    .gv-tabla tr:hover td { background: #f5f8fc; }

    .gv-tabla tr.inactivo td {
    background: #f2f2f2 !important;
    color: #999 !important;
    }

    .gv-tabla tr.inactivo:hover td {
    background: #ececec !important;
    }

    .badge { display: inline-block; padding: 3px 9px; border-radius: 4px; font-size: 11px; font-weight: 500; }
    .badge-active { background: #eaf3de; color: #3B6D11; }
    .badge-inactive { background: #fcebeb; color: #A32D2D; }

    .grid-container {
    width: 100%;
    overflow-x: auto;}

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

</asp:Content>