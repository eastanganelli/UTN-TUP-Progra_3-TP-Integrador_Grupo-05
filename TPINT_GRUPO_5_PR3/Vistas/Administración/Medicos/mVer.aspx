<%@ Page Title="Ver Medico" Language="C#" MasterPageFile="~/Administración/Plantilla.Master" AutoEventWireup="true" CodeBehind="mVer.aspx.cs" Inherits="Vistas.Administración.Medicos.VerMedico" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
        .perfil-wrapper {
            width: 100%;
            max-width: 860px;
            display: flex;
            flex-direction: column;
            gap: 24px;
        }

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
            background-color: #185FA5;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 32px;
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

        .perfil-header-info .especialidad-badge {
            display: inline-block;
            background-color: #e8f0fb;
            color: #185FA5;
            font-size: 12px;
            font-weight: bold;
            padding: 4px 10px;
            border-radius: 20px;
            margin-bottom: 10px;
            letter-spacing: 0.3px;
        }

        .perfil-header-info .matricula {
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

        .perfil-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 20px;
        }

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

        .tabla-horarios {
            width: 100%;
            border-collapse: collapse;
            font-size: 13px;
        }

        .tabla-horarios thead th {
            text-align: left;
            font-size: 11px;
            font-weight: bold;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            color: #888888;
            padding: 0 0 10px 0;
            border-bottom: 1px solid #eeeeee;
        }

        .tabla-horarios tbody td {
            padding: 10px 0;
            border-bottom: 1px solid #f0f0f0;
            color: #1a2332;
            vertical-align: middle;
        }

        .tabla-horarios tbody tr:last-child td {
            border-bottom: none;
        }

        .dia-tag {
            display: inline-block;
            background-color: #f0f4fa;
            color: #185FA5;
            font-size: 11px;
            font-weight: bold;
            padding: 3px 9px;
            border-radius: 4px;
            min-width: 60px;
            text-align: center;
        }

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

        .turno-detalle .paciente-nombre {
            font-weight: 600;
            color: #1a2332;
            margin-bottom: 2px;
        }

        .turno-detalle .motivo {
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
    </style>
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="perfil-wrapper">

        <!-- ============================
             CABECERA DEL PERFIL
        ============================= -->
        <div class="perfil-header">
            <div class="perfil-avatar">CM</div>

            <div class="perfil-header-info">
                <h1>Dr. Carlos Méndez</h1>
                <span class="especialidad-badge">Cardiología</span>
                <p class="matricula">Matrícula N° 42.381 &nbsp;|&nbsp; CABA, Argentina</p>
            </div>

            <div class="perfil-estado">
                <span class="badge-activo">Activo</span>
                <a href="~/Administración/Medicos/Medicos.aspx" class="btn-volver">← Volver al listado</a>
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
                    <span class="dato-valor"></span>
                </div>
                <div class="dato-fila">
                    <span class="dato-label">Fecha de nacimiento</span>
                    <span class="dato-valor">14/03/1978 (47 años)</span>
                </div>
                <div class="dato-fila">
                    <span class="dato-label">DNI</span>
                    <span class="dato-valor">22.481.903</span>
                </div>
                <div class="dato-fila">
                    <span class="dato-label">Género</span>
                    <span class="dato-valor">Masculino</span>
                </div>
                <div class="dato-fila">
                    <span class="dato-label">Nacionalidad</span>
                    <span class="dato-valor">Argentina</span>
                </div>
            </div>

            <!-- Datos de contacto -->
            <div class="info-card">
                <h2>Contacto</h2>
                <div class="dato-fila">
                    <span class="dato-label">Teléfono</span>
                    <span class="dato-valor">+54 11 4823-9901</span>
                </div>
                <div class="dato-fila">
                    <span class="dato-label">Celular</span>
                    <span class="dato-valor">+54 9 11 5542-1174</span>
                </div>
                <div class="dato-fila">
                    <span class="dato-label">Correo electrónico</span>
                    <span class="dato-valor">c.mendez@clinica.com.ar</span>
                </div>
                <div class="dato-fila">
                    <span class="dato-label">Dirección</span>
                    <span class="dato-valor">Av. Santa Fe 2340, CABA</span>
                </div>
                <div class="dato-fila">
                    <span class="dato-label">Consultorio</span>
                    <span class="dato-valor">Piso 3 – Box 7</span>
                </div>
            </div>

            <!-- Horarios de atención -->
            <div class="info-card">
                <h2>Horarios de Atención</h2>
                <table class="tabla-horarios">
                    <thead>
                        <tr>
                            <th>Día</th>
                            <th>Turno</th>
                            <th>Horario</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><span class="dia-tag">Lunes</span></td>
                            <td>Mañana</td>
                            <td>08:00 – 12:00</td>
                        </tr>
                        <tr>
                            <td><span class="dia-tag">Martes</span></td>
                            <td>Tarde</td>
                            <td>14:00 – 18:00</td>
                        </tr>
                        <tr>
                            <td><span class="dia-tag">Miércoles</span></td>
                            <td>Mañana</td>
                            <td>08:00 – 13:00</td>
                        </tr>
                        <tr>
                            <td><span class="dia-tag">Viernes</span></td>
                            <td>Mañana</td>
                            <td>09:00 – 12:00</td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <!-- Turnos recientes -->
            <div class="info-card full-width">
                <h2>Últimos Turnos Asignados</h2>

                <div class="turno-item">
                    <div class="turno-fecha">
                        <strong>16</strong>
                        Jun 2025
                    </div>
                    <div class="turno-detalle">
                        <div class="paciente-nombre">Laura Giménez</div>
                        <div class="motivo">Control post-operatorio</div>
                    </div>
                    <span class="turno-hora">09:00 hs</span>
                    <span class="badge-turno confirmado">Confirmado</span>
                </div>

                <div class="turno-item">
                    <div class="turno-fecha">
                        <strong>16</strong>
                        Jun 2025
                    </div>
                    <div class="turno-detalle">
                        <div class="paciente-nombre">Roberto Álvarez</div>
                        <div class="motivo">Primera consulta</div>
                    </div>
                    <span class="turno-hora">10:30 hs</span>
                    <span class="badge-turno pendiente">Pendiente</span>
                </div>

                <div class="turno-item">
                    <div class="turno-fecha">
                        <strong>14</strong>
                        Jun 2025
                    </div>
                    <div class="turno-detalle">
                        <div class="paciente-nombre">María Fernández</div>
                        <div class="motivo">Seguimiento hipertensión</div>
                    </div>
                    <span class="turno-hora">08:00 hs</span>
                    <span class="badge-turno confirmado">Confirmado</span>
                </div>

                <div class="turno-item">
                    <div class="turno-fecha">
                        <strong>12</strong>
                        Jun 2025
                    </div>
                    <div class="turno-detalle">
                        <div class="paciente-nombre">Jorge Pereira</div>
                        <div class="motivo">Ecocardiograma</div>
                    </div>
                    <span class="turno-hora">11:00 hs</span>
                    <span class="badge-turno cancelado">Cancelado</span>
                </div>

                <div class="turno-item">
                    <div class="turno-fecha">
                        <strong>10</strong>
                        Jun 2025
                    </div>
                    <div class="turno-detalle">
                        <div class="paciente-nombre">Ana Ramírez</div>
                        <div class="motivo">Consulta dolor de pecho</div>
                    </div>
                    <span class="turno-hora">09:30 hs</span>
                    <span class="badge-turno confirmado">Confirmado</span>
                </div>

            </div>
            <!-- /turnos recientes -->

        </div>
        <!-- /perfil-grid -->

    </div>
    <!-- /perfil-wrapper -->

</asp:Content>
