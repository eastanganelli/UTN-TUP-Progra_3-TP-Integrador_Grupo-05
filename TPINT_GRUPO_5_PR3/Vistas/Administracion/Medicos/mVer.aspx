<%@ Page Title="Ver Medico" Language="C#" MasterPageFile="~/Administracion/Plantilla.Master" AutoEventWireup="true" CodeBehind="mVer.aspx.cs" Inherits="Vistas.Administracion.Medicos.VerMedico" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
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
                <h1>Dr. <%= persona.Nombre %> <%= persona.Apellido %></h1>
                <span class="especialidad-badge"><%= especialidad.Nombre %></span>
                <p class="matricula">Matrícula N° <%= medico.Legajo %></p>
                <%--<p class="matricula">Matrícula N° <%= medico.Legajo %> &nbsp;|&nbsp; CABA, Argentina</p>--%>
            </div>

            <div class="perfil-estado">
                <span class='<%# Convert.ToBoolean(medico.Estado) ? "badge badge-active" : "badge badge-inactive" %>'><%# Convert.ToBoolean(medico.Estado) ? "Activo" : "Inactivo" %></span>
                <a href="/Administracion/Medicos/mInicio.aspx" class="btn-volver">← Volver al listado</a>
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
                    <span class="dato-valor"><%= persona.Apellido %>,<%= persona.Nombre %></span>
                </div>
                <div class="dato-fila">
                    <span class="dato-label">Fecha de nacimiento</span>
                    <span class="dato-valor"><%= persona.FechaNacimiento %></span>
                </div>
                <div class="dato-fila">
                    <span class="dato-label">DNI</span>
                    <span class="dato-valor"><%= persona.DNI %></span>
                </div>
                <div class="dato-fila">
                    <span class="dato-label">Género</span>
                    <span class="dato-valor"><%= persona.Sexo %></span>
                </div>
                <div class="dato-fila">
                    <span class="dato-label">Nacionalidad</span>
                    <span class="dato-valor"><%= persona.Nacionalidad %></span>
                </div>
            </div>

            <!-- Datos de contacto -->
            <div class="info-card">
                <h2>Contacto</h2>
                <div class="dato-fila">
                    <span class="dato-label">Teléfono</span>
                    <span class="dato-valor"><%= persona.Telefono %></span>
                </div>
                <div class="dato-fila">
                    <span class="dato-label">Correo electrónico</span>
                    <span class="dato-valor"><%= persona.Email %></span>
                </div>
                <div class="dato-fila">
                    <span class="dato-label">Dirección</span>
                    <span class="dato-valor"><%= persona.Direccion %></span>
                </div>
            </div>

            <!-- Horarios de atención -->
            <div class="info-card">
                <h2>Horarios de Atención</h2>
                <table class="tabla-horarios">
                    <thead>
                        <tr>
                            <th>Día</th>
                            <th>Horario</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rptHorarios" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><span class="dia-tag"><%# Eval("NombreDia") %></span></td>
                                    <td><%# Eval("HoraInicio") %> – <%# Eval("HoraFin") %></td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
                <asp:Label ID="lblSinHorarios" runat="server" Text="No hay horarios cargados." Visible="false" />
            </div>

            <!-- Turnos recientes -->
            <div class="info-card full-width">
                <h2>Últimos Turnos Asignados</h2>

                <asp:Repeater ID="rptTurnos" runat="server">
                    <ItemTemplate>
                        <div class="turno-item">
                            <div class="turno-fecha">
                                <strong><%# Convert.ToDateTime(Eval("Fecha")).Day %></strong>
                                <%# Convert.ToDateTime(Eval("Fecha")).ToString("MMM yyyy", new System.Globalization.CultureInfo("es-AR")) %>
                            </div>
                            <div class="turno-detalle">
                                <div class="paciente-nombre"><%# Eval("Paciente") %></div>
                                <div class="motivo"><%# Eval("Observacion") %></div>
                            </div>
                            <span class="turno-hora"><%# Eval("Hora") %> hs</span>
                            <span class='<%# "badge-turno " + Eval("Estado").ToString().ToLower() %>'>
                                <%# Eval("Estado") %>
                            </span>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
                <asp:Label ID="lblSinTurnos" runat="server" Text="No hay turnos asignados." Visible="false" />
            </div>
            <!-- /turnos recientes -->
        </div>
        <!-- /perfil-grid -->
    </div>
    <!-- /perfil-wrapper -->
</asp:Content>