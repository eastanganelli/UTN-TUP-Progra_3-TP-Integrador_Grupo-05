<%@ Page Title="Ver Turno" Language="C#" MasterPageFile="~/Administracion/Plantilla.Master" AutoEventWireup="true" CodeBehind="tVer.aspx.cs" Inherits="Vistas.Administracion.Pacientes.Pacientes" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
        .turno-wrapper {
            width: 100%;
            max-width: 860px;
            display: flex;
            flex-direction: column;
            gap: 24px;
        }

        .page-header-left h1 {
            font-size: 22px;
            color: #1a2332;
            margin: 0 0 6px 0;
            font-weight: bold;
        }

        .page-header-left .header-meta {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .badge-turno {
            font-size: 12px;
            font-weight: bold;
            padding: 4px 12px;
            border-radius: 20px;
        }

        .badge-turno.confirmado { background-color: #e6f5ee; color: #1a7a4a; }
        .badge-turno.pendiente  { background-color: #fff7e6;  color: #b07a00; }
        .badge-turno.cancelado  { background-color: #fdecea;  color: #c0392b; }

        .nro-turno {
            font-size: 13px;
            color: #888888;
        }

        .page-header-actions {
            display: flex;
            gap: 10px;
            flex-shrink: 0;
        }

        .btn-cancelar-turno {
            font-size: 12px;
            font-weight: bold;
            color: #c0392b;
            text-decoration: none;
            border: 1px solid #c0392b;
            padding: 7px 14px;
            border-radius: 5px;
            cursor: pointer;
            background: transparent;
            transition: all 0.2s ease;
        }

        .btn-cancelar-turno:hover {
            background-color: #c0392b;
            color: #ffffff;
        }

        .banner-fecha {
            background-color: #1a2332;
            border-radius: 8px;
            padding: 22px 32px;
            display: flex;
            align-items: center;
            gap: 40px;
        }

        .banner-fecha .bloque {
            display: flex;
            flex-direction: column;
            gap: 3px;
        }

        .banner-fecha .bloque-label {
            font-size: 11px;
            font-weight: bold;
            text-transform: uppercase;
            letter-spacing: 0.7px;
            color: #7a8fa8;
        }

        .banner-fecha .bloque-valor {
            font-size: 20px;
            font-weight: bold;
            color: #ffffff;
        }

        .banner-fecha .bloque-sub {
            font-size: 12px;
            color: #7a8fa8;
        }

        .banner-fecha .separador {
            width: 1px;
            height: 40px;
            background-color: #2e4060;
        }

        .detalle-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 20px;
        }

        .mini-perfil {
            display: flex;
            align-items: center;
            gap: 16px;
            margin-bottom: 18px;
            padding-bottom: 16px;
            border-bottom: 1px solid #f0f0f0;
        }

        .mini-avatar {
            width: 48px;
            height: 48px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 16px;
            font-weight: bold;
            color: #ffffff;
            flex-shrink: 0;
        }

        .mini-avatar.paciente  { background-color: #1a2332; }
        .mini-avatar.medico    { background-color: #185FA5; }

        .mini-info .mini-nombre {
            font-size: 15px;
            font-weight: bold;
            color: #1a2332;
            margin-bottom: 2px;
        }

        .mini-info .mini-sub {
            font-size: 12px;
            color: #888888;
        }

        .mini-info .mini-link {
            font-size: 11px;
            color: #185FA5;
            text-decoration: none;
        }

        .mini-info .mini-link:hover { text-decoration: underline; }

        .observaciones-box {
            width: 100%;
            min-height: 80px;
            padding: 12px;
            font-size: 13px;
            color: #1a2332;
            background-color: #fafafa;
            border: 1px solid #cccccc;
            border-radius: 5px;
            box-sizing: border-box;
            resize: none;
            font-family: Arial, sans-serif;
            line-height: 1.5;
        }

        .timeline {
            display: flex;
            flex-direction: column;
            gap: 0;
        }

        .timeline-item {
            display: flex;
            gap: 14px;
            align-items: flex-start;
        }

        .timeline-indicador {
            display: flex;
            flex-direction: column;
            align-items: center;
            flex-shrink: 0;
            width: 28px;
        }

        .timeline-dot {
            width: 12px;
            height: 12px;
            border-radius: 50%;
            background-color: #cccccc;
            margin-top: 3px;
            flex-shrink: 0;
        }

        .timeline-dot.activo   { background-color: #185FA5; }
        .timeline-dot.exito    { background-color: #1a7a4a; }
        .timeline-dot.cancelado { background-color: #c0392b; }

        .timeline-linea {
            width: 2px;
            flex-grow: 1;
            background-color: #eeeeee;
            min-height: 22px;
            margin: 2px 0;
        }

        .timeline-contenido {
            padding-bottom: 20px;
            flex-grow: 1;
        }

        .timeline-contenido .tl-accion {
            font-size: 13px;
            font-weight: 600;
            color: #1a2332;
            margin-bottom: 2px;
        }

        .timeline-contenido .tl-meta {
            font-size: 11px;
            color: #888888;
        }

        .timeline-item:last-child .timeline-contenido {
            padding-bottom: 0;
        }
    </style>
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="turno-wrapper">

        <!-- ============================
             ENCABEZADO
        ============================= -->
        <div class="page-header">
            <div class="page-header-left">
                <h1>Detalle del Turno</h1>
                <div class="header-meta">
                    <span class="nro-turno">#0148</span>
                    <%--<span class="badge-turno confirmado">Confirmado</span>--%>
                </div>
            </div>
            <div class="page-header-actions">
                <a href="~/Administracion/Turnos/Turnos.aspx" class="btn-volver">← Volver al listado</a>
                <button class="btn-cancelar-turno">Cancelar turno</button>
            </div>
        </div>

        <!-- ============================
             BANNER FECHA Y HORA
        ============================= -->
        <div class="banner-fecha">
            <div class="bloque">
                <span class="bloque-label">Fecha</span>
                <span class="bloque-valor">Lunes 16 de junio</span>
                <span class="bloque-sub">2025</span>
            </div>
            <div class="separador"></div>
            <div class="bloque">
                <span class="bloque-label">Hora</span>
                <span class="bloque-valor">09:00 hs</span>
                <span class="bloque-sub">Duración estimada: 30 min</span>
            </div>
            <div class="separador"></div>
            <div class="bloque">
                <span class="bloque-label">Consultorio</span>
                <span class="bloque-valor">Dirección</span>
            </div>
        </div>

        <!-- ============================
             GRID DE DETALLES
        ============================= -->
        <div class="detalle-grid">

            <!-- Paciente -->
            <div class="info-card">
                <h2>Paciente</h2>
                <div class="mini-perfil">
                    <div class="mini-avatar paciente">LR</div>
                    <div class="mini-info">
                        <div class="mini-nombre">Laura Beatriz Ramírez</div>
                        <div class="mini-sub">DNI 30.112.458 &nbsp;·&nbsp; 38 años</div>
                        <a href="~/Administracion/Pacientes/DetallePaciente.aspx?id=847" class="mini-link">Ver ficha completa →</a>
                    </div>
                </div>
                <div class="dato-fila">
                    <span class="dato-label">N° de paciente</span>
                    <span class="dato-valor">00847</span>
                </div>
                <div class="dato-fila">
                    <span class="dato-label">Teléfono</span>
                    <span class="dato-valor">+54 9 11 6631-5509</span>
                </div>
            </div>

            <!-- Médico -->
            <div class="info-card">
                <h2>Médico</h2>
                <div class="mini-perfil">
                    <div class="mini-avatar medico">CM</div>
                    <div class="mini-info">
                        <div class="mini-nombre">Dr. Carlos Méndez</div>
                        <div class="mini-sub">Cardiología &nbsp;·&nbsp; Mat. 42.381</div>
                        <%--<a href="~/Administracion/Medicos/DetalleMedico.aspx?id=12" class="mini-link">Ver ficha completa →</a>--%>
                    </div>
                </div>
                <div class="dato-fila">
                    <span class="dato-label">Especialidad</span>
                    <span class="dato-valor">Cardiología Clínica</span>
                </div>
                <div class="dato-fila">
                    <span class="dato-label">Correo</span>
                    <span class="dato-valor">c.mendez@clinica.com.ar</span>
                </div>
            </div>

            <!-- Motivo y observaciones -->
            <div class="info-card full-width">
                <h2>Motivo y Observaciones</h2>
                <div class="dato-fila" style="align-items: flex-start; padding-top: 14px;">
                    <span class="dato-label">Observaciones</span>
                </div>
                <textarea class="observaciones-box" readonly>Paciente con antecedente de bypass coronario (marzo 2025). Presenta leve disnea de esfuerzo en los últimos días. Se solicita ECG y perfil lipídico completo previo a la consulta.</textarea>
            </div>
        </div>
    </div>
</asp:Content>