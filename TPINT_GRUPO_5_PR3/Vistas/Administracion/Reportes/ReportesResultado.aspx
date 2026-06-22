<%@ Page Title="" Language="C#" MasterPageFile="~/Administracion/Plantilla.Master" AutoEventWireup="true" CodeBehind="ReportesResultado.aspx.cs" Inherits="Vistas.Administracion.Reportes.ReportesResultado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

<style>

.contenedor{
    width:100%;
    max-width:1100px;
    padding:0;
}

.resumen-grid{
    display:grid;
    grid-template-columns:repeat(4,1fr);
    gap:15px;
    margin-bottom:20px;
}

.resumen-card{
    background:white;
    border:1px solid #ccc;
    border-radius:8px;
    padding:18px;
}

.resumen-label{
    font-size:12px;
    text-transform:uppercase;
    color:#888;
    margin-bottom:8px;
}

.resumen-valor{
    font-size:28px;
    font-weight:bold;
    color:#185FA5;
}

.reporte-card{
    background:white;
    border:1px solid #ccc;
    border-radius:8px;
    overflow:hidden;
}

.reporte-header{
    padding:15px 20px;
    border-bottom:1px solid #eee;
    font-size:14px;
    font-weight:500;
    color:#1a2332;
}

.reporte-body{
    padding:20px;
}

.grafico-placeholder{
    height:280px;
    border:2px dashed #ccc;
    border-radius:8px;
    display:flex;
    align-items:center;
    justify-content:center;
    color:#999;
    font-size:14px;
    margin-bottom:20px;
}

.conclusion{
    margin-top:20px;
    background:#f5f8fc;
    border-left:4px solid #185FA5;
    padding:15px;
    font-size:13px;
    color:#444;
}

</style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div class="contenedor">

    <div class="page-header">
        <div>
            <div class="page-title">
                Reporte: Asistencia a Turnos
            </div>

            <div class="page-subtitle">
                Desde 01/01/2025 hasta 31/12/2025
            </div>
        </div>

        <button class="btn-volver">
            ← Volver
        </button>
    </div>

    <div class="resumen-grid">

        <div class="resumen-card">
            <div class="resumen-label">Turnos Totales</div>
            <div class="resumen-valor">320</div>
        </div>

        <div class="resumen-card">
            <div class="resumen-label">Presentes</div>
            <div class="resumen-valor">245</div>
        </div>

        <div class="resumen-card">
            <div class="resumen-label">Ausentes</div>
            <div class="resumen-valor">75</div>
        </div>

        <div class="resumen-card">
            <div class="resumen-label">% Asistencia</div>
            <div class="resumen-valor">76%</div>
        </div>

    </div>

    <div class="reporte-card">

        <div class="reporte-header">
            Resultado del reporte
        </div>

        <div class="reporte-body">

            <div class="grafico-placeholder">
                Gráfico / Estadística del Reporte
            </div>

            <table class="gv-tabla">

                <thead>
                    <tr>
                        <th>Concepto</th>
                        <th>Cantidad</th>
                        <th>Porcentaje</th>
                    </tr>
                </thead>

                <tbody>
                    <tr>
                        <td>Presentes</td>
                        <td>245</td>
                        <td>76%</td>
                    </tr>

                    <tr>
                        <td>Ausentes</td>
                        <td>75</td>
                        <td>24%</td>
                    </tr>
                </tbody>

            </table>

            <div class="conclusion">
                Aquí se mostrará una conclusión automática del reporte o la información procesada obtenida desde la base de datos.
            </div>

        </div>

    </div>

</div>

</asp:Content>
