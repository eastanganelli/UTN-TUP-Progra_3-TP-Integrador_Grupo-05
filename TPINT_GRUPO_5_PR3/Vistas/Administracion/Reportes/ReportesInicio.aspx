<%@ Page Title="" Language="C#" MasterPageFile="~/Administracion/Plantilla.Master" AutoEventWireup="true" CodeBehind="ReportesInicio.aspx.cs" Inherits="Vistas.Administracion.Reportes.ReportesInicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

<style>

.contenedor{
    width:100%;
    max-width:800px;
    padding:0;
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
