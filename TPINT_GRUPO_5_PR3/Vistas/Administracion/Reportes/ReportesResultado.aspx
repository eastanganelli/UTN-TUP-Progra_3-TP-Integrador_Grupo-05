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
.grafico-card {
    background: white;
    border: 1px solid #ccc;
    border-radius: 8px;
    overflow: hidden;
    margin-bottom: 20px;
}
.grafico-body {
    padding: 20px;
}
.grafico-columnas {
    display: flex;
    gap: 15px;
    align-items: flex-end;
    overflow-x: auto;
    padding-top: 10px;
}
.grafico-columna {
    display: flex;
    flex-direction: column;
    align-items: center;
    min-width: 40px;
    flex: 1;
}
.grafico-barras {
    width: 28px;
    height: 160px;
    display: flex;
    flex-direction: column-reverse;
    background: #f5f5f5;
    border-radius: 4px;
    overflow: hidden;
}
.barra-segmento {
    width: 100%;
}
.barra-pendiente {
    background: #f0ad4e;
}
.barra-presente {
    background: #5cb85c;
}
.barra-ausente {
    background: #d9534f;
}
.grafico-mes {
    font-size: 11px;
    color: #666;
    margin-top: 6px;
}
.grafico-total {
    font-size: 12px;
    font-weight: bold;
    color: #1a2332;
}
.grafico-referencias {
    display: flex;
    gap: 15px;
    margin-top: 15px;
    font-size: 12px;
    color: #444;
}
.ref-color {
    display: inline-block;
    width: 10px;
    height: 10px;
    border-radius: 2px;
    margin-right: 5px;
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

    <div class="grafico-card" id="pnlGrafico" runat="server" visible="false">
        <div class="reporte-header">
            Turnos por mes
        </div>
        <div class="grafico-body">
            <div class="grafico-columnas">
                <asp:Repeater ID="rptGrafico" runat="server">
                    <ItemTemplate>
                        <div class="grafico-columna">
                            <div class="grafico-barras">
                                <div class="barra-segmento barra-pendiente" style='flex-grow:<%# Eval("Pendiente") %>'></div>
                                <div class="barra-segmento barra-presente" style='flex-grow:<%# Eval("Presente") %>'></div>
                                <div class="barra-segmento barra-ausente" style='flex-grow:<%# Eval("Ausente") %>'></div>
                            </div>
                            <div class="grafico-mes"><%# Eval("NombreMes") %></div>
                            <div class="grafico-total"><%# Eval("Total") %></div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <div class="grafico-referencias">
                <span><span class="ref-color barra-pendiente"></span>Pendiente</span>
                <span><span class="ref-color barra-presente"></span>Presente</span>
                <span><span class="ref-color barra-ausente"></span>Ausente</span>
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
                GridLines="None">
                <EmptyDataTemplate>
                    <p style="color:#888; font-size:13px; padding:20px 0;">Sin resultados para los filtros seleccionados.</p>
                </EmptyDataTemplate>
            </asp:GridView>
            <div class="conclusion">
                <asp:Label ID="lblConclusion" runat="server" Text="" />
            </div>
        </div>
    </div>

</div>
</asp:Content>