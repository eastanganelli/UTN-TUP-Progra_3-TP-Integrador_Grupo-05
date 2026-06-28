<%@ Page Title="" Language="C#" MasterPageFile="~/Administracion/Plantilla.Master" AutoEventWireup="true" CodeBehind="ReportesResultado.aspx.cs" Inherits="Vistas.Administracion.Reportes.ReportesResultado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
<style>
.contenedor {
    width: 100%;
    max-width: 1100px;
    padding: 0;
}
.resumen-grid {
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    gap: 15px;
    margin-bottom: 20px;
}
.resumen-card {
    background: white;
    border: 1px solid #ccc;
    border-radius: 8px;
    padding: 18px;
}
.resumen-label {
    font-size: 12px;
    text-transform: uppercase;
    color: #888;
    margin-bottom: 8px;
}
.resumen-valor {
    font-size: 28px;
    font-weight: bold;
    color: #185FA5;
}
.reporte-card {
    background: white;
    border: 1px solid #ccc;
    border-radius: 8px;
    overflow: hidden;
}
.reporte-header {
    padding: 15px 20px;
    border-bottom: 1px solid #eee;
    font-size: 14px;
    font-weight: 500;
    color: #1a2332;
}
.reporte-body {
    padding: 20px;
}
.conclusion {
    margin-top: 20px;
    background: #f5f8fc;
    border-left: 4px solid #185FA5;
    padding: 15px;
    font-size: 13px;
    color: #444;
}
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div class="contenedor">

    <div class="page-header">
        <div>
            <div class="page-title">
                <asp:Label ID="lblTitulo" runat="server" Text="" />
            </div>
            <div class="page-subtitle">
                <asp:Label ID="lblPeriodo" runat="server" Text="" />
            </div>
        </div>
        <a href="ReportesInicio.aspx" class="btn-volver">← Volver</a>
    </div>

    <div class="resumen-grid">
        <div class="resumen-card">
            <div class="resumen-label">Total registros</div>
            <div class="resumen-valor">
                <asp:Label ID="lblTotal" runat="server" Text="0" />
            </div>
        </div>
    </div>

    <div class="reporte-card">
        <div class="reporte-header">
            Resultado del reporte
        </div>
        <div class="reporte-body">
            <asp:GridView ID="gvResultado" runat="server"
                CssClass="gv-tabla" AutoGenerateColumns="true"
                GridLines="None" />
            <div class="conclusion">
                <asp:Label ID="lblConclusion" runat="server" Text="" />
            </div>
        </div>
    </div>

</div>
</asp:Content>