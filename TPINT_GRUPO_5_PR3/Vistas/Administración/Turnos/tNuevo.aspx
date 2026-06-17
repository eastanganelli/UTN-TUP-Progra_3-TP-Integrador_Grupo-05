<%@ Page Title="Nuevo Turno" Language="C#" MasterPageFile="~/Administración/Plantilla.Master" AutoEventWireup="true" CodeBehind="tNuevo.aspx.cs" Inherits="Vistas.Administración.Pacientes.Pacientes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

<style>

    .form-wrapper{
        width:100%;
        max-width:950px;
    }

    .page-header{
        display:flex;
        justify-content:space-between;
        align-items:center;
        margin-bottom:20px;
    }

    .page-title{
        font-size:22px;
        color:#1a2332;
        font-weight:500;
    }

    .page-subtitle{
        font-size:13px;
        color:#888;
        margin-top:2px;
    }

    .form-card{
        background:#fff;
        border:1px solid #ccc;
        border-radius:8px;
        padding:25px;
    }

    .section-title{
        font-size:13px;
        text-transform:uppercase;
        letter-spacing:.5px;
        color:#185FA5;
        margin-bottom:18px;
        padding-bottom:10px;
        border-bottom:1px solid #eee;
        font-weight:bold;
    }

    .form-grid{
        display:grid;
        grid-template-columns:1fr 1fr;
        gap:18px;
        margin-bottom:30px;
    }

    .campo{
        display:flex;
        flex-direction:column;
        gap:5px;
    }

    .campo label{
        font-size:12px;
        color:#666;
        font-weight:500;
        text-transform:uppercase;
    }

    .campo input,
    .campo select{
        height:38px;
        padding:0 10px;
        border:1px solid #ccc;
        border-radius:5px;
        background:#fafafa;
        color:#1a2332;
        font-size:13px;
    }

    .campo input:focus,
    .campo select:focus{
        outline:none;
        border-color:#185FA5;
        background:#fff;
    }

    .full-width{
        grid-column:1 / -1;
    }

    .acciones{
        display:flex;
        justify-content:flex-end;
        gap:10px;
        margin-top:25px;
    }

    .btn-primary{
        background:#185FA5;
        color:#fff;
        border:none;
        border-radius:5px;
        padding:10px 18px;
        font-size:13px;
        cursor:pointer;
    }

    .btn-primary:hover{
        background:#0C447C;
    }

    .btn-secondary{
        background:#fff;
        border:1px solid #ccc;
        color:#666;
        border-radius:5px;
        padding:10px 18px;
        font-size:13px;
        cursor:pointer;
    }

    .btn-secondary:hover{
        border-color:#185FA5;
        color:#185FA5;
    }

</style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div class="form-wrapper">

<div class="page-header">
    <div>
        <div class="page-title">Nuevo Paciente</div>
        <div class="page-subtitle">
            Complete los datos para registrar un paciente
        </div>
    </div>
</div>

<div class="form-card">

    <div class="section-title">
        Datos Personales
    </div>

    <div class="form-grid">

        <div class="campo">
            <label>DNI</label>
            <asp:TextBox ID="txtDni" runat="server"></asp:TextBox>
        </div>

        <div class="campo">
            <label>Sexo</label>
            <asp:DropDownList ID="ddlSexo" runat="server">
                <asp:ListItem>Seleccione...</asp:ListItem>
                <asp:ListItem>Masculino</asp:ListItem>
                <asp:ListItem>Femenino</asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class="campo">
            <label>Nombre</label>
            <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
        </div>

        <div class="campo">
            <label>Apellido</label>
            <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
        </div>

        <div class="campo">
            <label>Fecha de Nacimiento</label>
            <asp:TextBox ID="txtFechaNacimiento" runat="server" TextMode="Date"></asp:TextBox>
        </div>

        <div class="campo">
            <label>Nacionalidad</label>
            <asp:TextBox ID="txtNacionalidad" runat="server"></asp:TextBox>
        </div>

    </div>

    <div class="section-title">
        Información de Contacto
    </div>

    <div class="form-grid">

        <div class="campo full-width">
            <label>Dirección</label>
            <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
        </div>

        <div class="campo">
            <label>Provincia</label>
            <asp:DropDownList ID="ddlProvincia" runat="server">
                <asp:ListItem>Buenos Aires</asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class="campo">
            <label>Localidad</label>
            <asp:DropDownList ID="ddlLocalidad" runat="server">
                <asp:ListItem>Tigre</asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class="campo">
            <label>Correo Electrónico</label>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        </div>

        <div class="campo">
            <label>Teléfono</label>
            <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
        </div>

    </div>

    <div class="acciones">
        <button type="button" class="btn-secondary">
            Cancelar
        </button>

        <button type="submit" class="btn-primary">
            Guardar Paciente
        </button>
    </div>

</div>
```

</div>

</asp:Content>
