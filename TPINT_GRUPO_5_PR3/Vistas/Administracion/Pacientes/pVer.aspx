<%@ Page Title="Ver Paciente" Language="C#" MasterPageFile="~/Administración/Plantilla.Master" AutoEventWireup="true" CodeBehind="pVer.aspx.cs" Inherits="Vistas.Administración.Pacientes.pVer" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
        /* =====================
           LAYOUT DE PERFIL PACIENTE
        ===================== */
        .perfil-wrapper {
            width: 100%;
            max-width: 860px;
            display: flex;
            flex-direction: column;
            gap: 24px;
        }

        /* -- CABECERA DE PERFIL -- */
        .perfil-header {
            background-color: #ffffff;
            border: 1px solid #cccccc;
            border-radius: 8px;
            padding: 28px 32px;
            display: flex;
            align-items: center;
            gap: 28px;
        }

        .perfil-avatar {
            width: 80px;
            height: 80px;
            border-radius: 50%;
            background-color: #1a2332;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 30px;
            color: #ffffff;
            font-weight: bold;
            flex-shrink: 0;
            letter-spacing: 1px;
        }

        .perfil-header-info {
            flex-grow: 1;
        }

        .perfil-header-info h1 {
            font-size: 22px;
            color: #1a2332;
            margin: 0 0 4px 0;
            font-weight: bold;
        }

        .perfil-header-info .nro-paciente {
            display: inline-block;
            background-color: #f0f4fa;
            color: #185FA5;
            font-size: 12px;
            font-weight: bold;
            padding: 4px 10px;
            border-radius: 20px;
            margin-bottom: 10px;
            letter-spacing: 0.3px;
        }

        .perfil-header-info .sub-info {
            font-size: 12px;
            color: #888888;
            margin: 0;
        }

        .perfil-estado {
            display: flex;
            flex-direction: column;
            align-items: flex-end;
            gap: 8px;
        }

        .badge-activo {
            display: flex;
            align-items: center;
            gap: 6px;
            font-size: 12px;
            font-weight: bold;
            color: #1a7a4a;
            background-color: #e6f5ee;
            padding: 5px 12px;
            border-radius: 20px;
        }

        .badge-activo::before {
            content: '';
            width: 7px;
            height: 7px;
            border-radius: 50%;
            background-color: #1a7a4a;
            display: inline-block;
        }

        .btn-volver {
            font-size: 12px;
            color: #185FA5;
            text-decoration: none;
            border: 1px solid #185FA5;
            padding: 5px 12px;
            border-radius: 5px;
            transition: all 0.2s ease;
        }

        .btn-volver:hover {
            background-color: #185FA5;
            color: #ffffff;
        }

        /* -- GRID DE SECCIONES -- */
        .perfil-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 20px;
        }

        /* -- CARD GENÉRICA -- */
        .info-card {
            background-color: #ffffff;
            border: 1px solid #cccccc;
            border-radius: 8px;
            padding: 24px;
        }

        .info-card.full-width {
            grid-column: 1 / -1;
        }

        .info-card h2 {
            font-size: 13px;
            font-weight: bold;
            color: #185FA5;
            text-transform: uppercase;
            letter-spacing: 0.8px;
            margin: 0 0 18px 0;
            padding-bottom: 10px;
            border-bottom: 1px solid #eeeeee;
        }

        /* -- FILAS DE DATOS -- */
        .dato-fila {
            display: flex;
            justify-content: space-between;
            align-items: baseline;
            padding: 9px 0;
            border-bottom: 1px solid #f0f0f0;
            font-size: 13px;
        }

        .dato-fila:last-child {
            border-bottom: none;
        }

        .dato-label {
            color: #888888;
            font-size: 12px;
            flex-shrink: 0;
            margin-right: 12px;
        }

        .dato-valor {
            color: #1a2332;
            font-weight: 500;
            text-align: right;
        }

        /* -- ALERTA MÉDICA -- */
        .alerta-medica {
            background-color: #fff7e6;
            border: 1px solid #f5c842;
            border-radius: 6px;
            padding: 10px 14px;
            font-size: 12px;
            color: #7a5500;
            display: flex;
            align-items: flex-start;
            gap: 8px;
            margin-bottom: 14px;
        }

        .alerta-medica .alerta-icono {
            font-size: 14px;
            flex-shrink: 0;
            margin-top: 1px;
        }

        /* -- TABLA DE HISTORIAL -- */
        .tabla-historial {
            width: 100%;
            border-collapse: collapse;
            font-size: 13px;
        }

        .tabla-historial thead th {
            text-align: left;
            font-size: 11px;
            font-weight: bold;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            color: #888888;
            padding: 0 12px 10px 0;
            border-bottom: 1px solid #eeeeee;
        }

        .tabla-historial tbody td {
            padding: 10px 12px 10px 0;
            border-bottom: 1px solid #f0f0f0;
            color: #1a2332;
            vertical-align: middle;
        }

        .tabla-historial tbody tr:last-child td {
            border-bottom: none;
        }

        .medico-ref {
            font-size: 11px;
            color: #185FA5;
        }

        /* -- TURNOS PRÓXIMOS -- */
        .turno-item {
            display: flex;
            align-items: center;
            gap: 14px;
            padding: 11px 0;
            border-bottom: 1px solid #f0f0f0;
            font-size: 13px;
        }

        .turno-item:last-child {
            border-bottom: none;
        }

        .turno-fecha {
            flex-shrink: 0;
            width: 70px;
            font-size: 11px;
            color: #888888;
            text-align: center;
            line-height: 1.4;
        }

        .turno-fecha strong {
            display: block;
            font-size: 18px;
            color: #1a2332;
            font-weight: bold;
            line-height: 1;
        }

        .turno-detalle {
            flex-grow: 1;
        }

        .turno-detalle .medico-nombre {
            font-weight: 600;
            color: #1a2332;
            margin-bottom: 2px;
        }

        .turno-detalle .especialidad {
            font-size: 11px;
            color: #888888;
        }

        .turno-hora {
            font-size: 12px;
            color: #555555;
            flex-shrink: 0;
        }

        .badge-turno {
            font-size: 11px;
            font-weight: bold;
            padding: 3px 9px;
            border-radius: 20px;
            flex-shrink: 0;
        }

        .badge-turno.confirmado {
            background-color: #e6f5ee;
            color: #1a7a4a;
        }

        .badge-turno.pendiente {
            background-color: #fff7e6;
            color: #b07a00;
        }

        .badge-turno.cancelado {
            background-color: #fdecea;
            color: #c0392b;
        }

        /* -- TAGS DE ALERGIAS / CONDICIONES -- */
        .tags-wrapper {
            display: flex;
            flex-wrap: wrap;
            gap: 8px;
            margin-top: 4px;
        }

        .tag {
            font-size: 12px;
            font-weight: bold;
            padding: 4px 10px;
            border-radius: 4px;
        }

        .tag.alergia {
            background-color: #fdecea;
            color: #c0392b;
        }

        .tag.condicion {
            background-color: #e8f0fb;
            color: #185FA5;
        }
    </style>
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="perfil-wrapper">

        <!-- ============================
             CABECERA DEL PERFIL
        ============================= -->
        <div class="perfil-header">
            <div class="perfil-avatar">LR</div>

            <div class="perfil-header-info">
                <h1>Laura Beatriz Ramírez</h1>
                <span class="nro-paciente">Paciente N° 00847</span>
                <p class="sub-info">DNI 30.112.458 &nbsp;|&nbsp; 38 años &nbsp;|&nbsp; Femenino</p>
            </div>

            <div class="perfil-estado">
                <span class="badge-activo">Activa</span>
                <a href="~/Administracion/Pacientes/Pacientes.aspx" class="btn-volver">← Volver al listado</a>
            </div>
        </div>

        <!-- ============================
             GRID DE INFORMACIÓN
        ============================= -->
        <div class="perfil-grid">

            <!-- Datos personales -->
            <div class="info-card">
                <h2>Datos Personales</h2>
                <div class="dato-fila">
                    <span class="dato-label">Nombre completo</span>
                    <span class="dato-valor">Laura Beatriz Ramírez</span>
                </div>
                <div class="dato-fila">
                    <span class="dato-label">Fecha de nacimiento</span>
                    <span class="dato-valor">22/09/1986</span>
                </div>
                <div class="dato-fila">
                    <span class="dato-label">DNI</span>
                    <span class="dato-valor">30.112.458</span>
                </div>
                <div class="dato-fila">
                    <span class="dato-label">Género</span>
                    <span class="dato-valor">Femenino</span>
                </div>
            </div>

            <!-- Datos de contacto -->
            <div class="info-card">
                <h2>Contacto</h2>
                <div class="dato-fila">
                    <span class="dato-label">Teléfono</span>
                    <span class="dato-valor">+54 11 4710-2284</span>
                </div>
                <div class="dato-fila">
                    <span class="dato-label">Celular</span>
                    <span class="dato-valor">+54 9 11 6631-5509</span>
                </div>
                <div class="dato-fila">
                    <span class="dato-label">Correo electrónico</span>
                    <span class="dato-valor">l.ramirez@gmail.com</span>
                </div>
                <div class="dato-fila">
                    <span class="dato-label">Dirección</span>
                    <span class="dato-valor">Av. Corrientes 4820, CABA</span>
                </div>
            </div>

            <!-- Historial de consultas -->
            <div class="info-card full-width">
                <h2>Historial de Consultas</h2>
                <table class="tabla-historial">
                    <thead>
                        <tr>
                            <th>Fecha</th>
                            <th>Especialidad</th>
                            <th>Médico</th>
                            <th>Diagnóstico / Motivo</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>10/06/2025</td>
                            <td>Cardiología</td>
                            <td><span class="medico-ref">Dr. Méndez</span></td>
                            <td>Seguimiento hipertensión leve</td>
                        </tr>
                        <tr>
                            <td>22/04/2025</td>
                            <td>Endocrinología</td>
                            <td><span class="medico-ref">Dra. Torres</span></td>
                            <td>Control hipotiroidismo – ajuste dosis levotiroxina</td>
                        </tr>
                        <tr>
                            <td>05/02/2025</td>
                            <td>Clínica Médica</td>
                            <td><span class="medico-ref">Dr. Gutiérrez</span></td>
                            <td>Chequeo anual – sin novedades</td>
                        </tr>
                        <tr>
                            <td>18/11/2024</td>
                            <td>Cardiología</td>
                            <td><span class="medico-ref">Dr. Méndez</span></td>
                            <td>Electrocardiograma de rutina</td>
                        </tr>
                        <tr>
                            <td>03/08/2024</td>
                            <td>Ginecología</td>
                            <td><span class="medico-ref">Dra. Ibáñez</span></td>
                            <td>Control anual ginecológico</td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <!-- Próximos turnos -->
            <div class="info-card full-width">
                <h2>Próximos Turnos</h2>

                <div class="turno-item">
                    <div class="turno-fecha">
                        <strong>16</strong>
                        Jun 2025
                    </div>
                    <div class="turno-detalle">
                        <div class="medico-nombre">Dr. Carlos Méndez</div>
                        <div class="especialidad">Cardiología – Control post-operatorio</div>
                    </div>
                    <span class="turno-hora">09:00 hs</span>
                    <span class="badge-turno confirmado">Confirmado</span>
                </div>

                <div class="turno-item">
                    <div class="turno-fecha">
                        <strong>24</strong>
                        Jun 2025
                    </div>
                    <div class="turno-detalle">
                        <div class="medico-nombre">Dra. Valeria Torres</div>
                        <div class="especialidad">Endocrinología – Control mensual</div>
                    </div>
                    <span class="turno-hora">11:30 hs</span>
                    <span class="badge-turno pendiente">Pendiente</span>
                </div>

                <div class="turno-item">
                    <div class="turno-fecha">
                        <strong>08</strong>
                        Jul 2025
                    </div>
                    <div class="turno-detalle">
                        <div class="medico-nombre">Dra. Claudia Ibáñez</div>
                        <div class="especialidad">Ginecología – Control anual</div>
                    </div>
                    <span class="turno-hora">10:00 hs</span>
                    <span class="badge-turno pendiente">Pendiente</span>
                </div>
            </div>
        </div>
    </div>
</asp:Content>