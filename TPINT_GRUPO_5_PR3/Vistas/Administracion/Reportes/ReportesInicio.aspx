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
            <asp:DropDownList ID="ddlReporte" runat="server"
                AutoPostBack="true" OnSelectedIndexChanged="ddlReporte_SelectedIndexChanged">
                <asp:ListItem Text="Seleccione un reporte" />
                <asp:ListItem Text="Asistencia a Turnos" />
                <asp:ListItem Text="Turnos por Especialidad" />
                <asp:ListItem Text="Médicos con más Turnos" />
                <asp:ListItem Text="Pacientes con más Ausencias" />
                <asp:ListItem Text="Estado de Turnos por Año" />
            </asp:DropDownList>
        </div>

        <div class="campo" id="pnlAnio" runat="server">
            <label>Año</label>
            <asp:TextBox ID="txtAnio" runat="server" TextMode="Number"></asp:TextBox>
        </div>

        <div class="campo" id="pnlFechaDesde" runat="server">
            <label>Fecha Desde</label>
            <asp:TextBox ID="txtDesde" runat="server" TextMode="Date"></asp:TextBox>
        </div>

        <div class="campo" id="pnlFechaHasta" runat="server">
            <label>Fecha Hasta</label>
            <asp:TextBox ID="txtHasta" runat="server" TextMode="Date"></asp:TextBox>
        </div>

        <div class="campo" id="pnlEspecialidad" runat="server">
            <label>Especialidad</label>
            <asp:DropDownList ID="ddlEspecialidad" runat="server"
                AutoPostBack="true" OnSelectedIndexChanged="ddlEspecialidad_SelectedIndexChanged">
            </asp:DropDownList>
        </div>

        <div class="campo" id="pnlMedico" runat="server">
            <label>Médico</label>
            <asp:DropDownList ID="ddlMedico" runat="server">
            </asp:DropDownList>
        </div>

    </div>

    <div class="acciones">

       <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar"
        CssClass="btn-secondary" CausesValidation="false"
        OnClick="btnLimpiar_Click" />
    <asp:Button ID="btnGenerar" runat="server" Text="Generar Reporte"
        CssClass="btn-primary" OnClick="btnGenerar_Click" />
    </div>

</div>

</div>

</asp:Content>
