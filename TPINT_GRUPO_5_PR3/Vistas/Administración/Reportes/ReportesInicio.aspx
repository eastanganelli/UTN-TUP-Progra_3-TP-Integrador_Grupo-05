<%@ Page Title="" Language="C#" MasterPageFile="~/Administración/Plantilla.Master" AutoEventWireup="true" CodeBehind="ReportesInicio.aspx.cs" Inherits="Vistas.Administración.Reportes.ReportesInicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

<style>

.contenedor{
    width:100%;
    max-width:800px;
    padding:0;
}

.page-header{
    margin-bottom:20px;
}

.page-title{
    font-size:22px;
    font-weight:500;
    color:#1a2332;
}

.page-subtitle{
    font-size:13px;
    color:#888;
    margin-top:3px;
}

.form-card{
    background:#fff;
    border:1px solid #ccc;
    border-radius:8px;
    padding:25px;
}

.form-grid{
    display:grid;
    grid-template-columns:1fr 1fr;
    gap:18px;
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
    border:1px solid #ccc;
    border-radius:5px;
    padding:0 10px;
    font-size:13px;
    background:#fafafa;
}

.full-width{
    grid-column:1 / -1;
}

.acciones{
    margin-top:25px;
    display:flex;
    justify-content:flex-end;
    gap:10px;
}

.btn-primary{
    background:#185FA5;
    color:white;
    border:none;
    border-radius:5px;
    padding:10px 18px;
    cursor:pointer;
    font-size:13px;
}

.btn-primary:hover{
    background:#0C447C;
}

.btn-secondary{
    background:white;
    border:1px solid #ccc;
    color:#666;
    border-radius:5px;
    padding:10px 18px;
    cursor:pointer;
    font-size:13px;
}

</style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div class="contenedor">

<div class="page-header">
    <div class="page-title">Reportes</div>
    <div class="page-subtitle">
        Seleccione los parámetros para generar el informe
    </div>
</div>

<div class="form-card">

    <div class="form-grid">

        <div class="campo full-width">
            <label>Tipo de Reporte</label>
            <asp:DropDownList ID="ddlReporte" runat="server">
                <asp:ListItem Text="Seleccione un reporte" />
                <asp:ListItem Text="Asistencia a Turnos" />
                <asp:ListItem Text="Turnos por Especialidad" />
                <asp:ListItem Text="Médicos con más Turnos" />
                <asp:ListItem Text="Pacientes con más Ausencias" />
            </asp:DropDownList>
        </div>

        <div class="campo">
            <label>Fecha Desde</label>
            <asp:TextBox ID="txtDesde" runat="server" TextMode="Date"></asp:TextBox>
        </div>

        <div class="campo">
            <label>Fecha Hasta</label>
            <asp:TextBox ID="txtHasta" runat="server" TextMode="Date"></asp:TextBox>
        </div>

        <div class="campo">
            <label>Especialidad</label>
            <asp:DropDownList ID="ddlEspecialidad" runat="server">
                <asp:ListItem Text="Todas" />
                <asp:ListItem Text="Cardiología" />
                <asp:ListItem Text="Clínica Médica" />
                <asp:ListItem Text="Pediatría" />
                <asp:ListItem Text="Dermatología" />
            </asp:DropDownList>
        </div>

        <div class="campo">
            <label>Médico</label>
            <asp:DropDownList ID="ddlMedico" runat="server">
                <asp:ListItem Text="Todos" />
                <asp:ListItem Text="Dr. Pérez" />
                <asp:ListItem Text="Dra. Gómez" />
                <asp:ListItem Text="Dr. Rodríguez" />
            </asp:DropDownList>
        </div>

    </div>

    <div class="acciones">

        <button type="button" class="btn-secondary">
            Limpiar
        </button>

        <button type="button" class="btn-primary">
            Generar Reporte
        </button>

    </div>

</div>

</div>

</asp:Content>
