<%@ Page Title="Editar Turno" Language="C#" MasterPageFile="~/Administracion/Plantilla.Master" AutoEventWireup="true" CodeBehind="tEditar.aspx.cs" Inherits="Vistas.Administracion.Pacientes.EditarPaciente" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
        .page-header-actions { display: flex; gap: 10px; flex-shrink: 0; }

        .banner-turno {
            background-color: #1a2332;
            border-radius: 8px;
            padding: 18px 28px;
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
        }
        .banner-turno .bloque-label {
            font-size: 11px; font-weight: bold;
            text-transform: uppercase; letter-spacing: 0.7px;
            color: #7a8fa8; margin-bottom: 4px;
        }
        .banner-turno .bloque-valor {
            font-size: 15px; font-weight: bold; color: #ffffff;
        }
        .banner-turno .bloque-sub {
            font-size: 11px; color: #7a8fa8; margin-top: 2px;
        }

        .badge-estado {
            display: inline-block; font-size: 11px; font-weight: bold;
            padding: 4px 10px; border-radius: 20px; margin-top: 6px;
        }
        .badge-estado.confirmado { background-color: #e6f5ee; color: #1a7a4a; }
        .badge-estado.pendiente  { background-color: #fff7e6;  color: #b07a00; }
        .badge-estado.cancelado  { background-color: #fdecea;  color: #c0392b; }

        .campo textarea {
            height: auto; min-height: 80px; padding: 8px 10px; resize: none;
        }
    </style>
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="form-wrapper">

        <div class="page-header">
            <div>
                <h1>Editar Turno</h1>
                <p>Podés modificar la fecha, horario, paciente, estado y observaciones.</p>
            </div>
            <div class="page-header-actions">
                <a href="~/Administracion/Turnos/DetalleTurno.aspx" class="btn-volver">← Ver detalle</a>
                <a href="~/Administracion/Turnos/Turnos.aspx" class="btn-volver">← Listado</a>
            </div>
        </div>

        <asp:Label ID="lblMensaje" runat="server" Visible="false" />

        <div class="banner-turno">
            <div>
                <div class="bloque-label">N° Turno</div>
                <div class="bloque-valor">
                    <asp:Label ID="lblNroTurno" runat="server" Text="#0148" />
                </div>
            </div>
            <div>
                <div class="bloque-label">Médico</div>
                <div class="bloque-valor">
                    <asp:Label ID="lblMedico" runat="server" Text="Dr. Méndez" />
                </div>
                <div class="bloque-sub">
                    <asp:Label ID="lblEspecialidad" runat="server" Text="Cardiología" />
                </div>
            </div>
            <div>
                <div class="bloque-label">Paciente actual</div>
                <div class="bloque-valor">
                    <asp:Label ID="lblPaciente" runat="server" Text="Laura Ramírez" />
                </div>
                <div class="bloque-sub">
                    <asp:Label ID="lblDniPaciente" runat="server" Text="DNI 30.112.458" />
                </div>
            </div>
            <div>
                <div class="bloque-label">Estado actual</div>
                <asp:Label ID="lblEstadoBadge" runat="server"
                    CssClass="badge-estado confirmado" Text="Confirmado" />
            </div>
        </div>

        <!-- ========================
             FECHA Y HORARIO
        ========================= -->
        <div class="form-card">
            <h2>Fecha y Horario</h2>
            <p class="seccion-nota">
                El médico asignado no puede cambiarse. Al modificar la fecha, el sistema
                actualizará los horarios disponibles según sus bloques de atención.
            </p>
            <div class="form-grid">

                <div class="campo">
                    <label>Médico <small style="color:#888;font-weight:normal;">(no editable)</small></label>
                    <asp:TextBox ID="txtMedicoReadOnly" runat="server"
                        ReadOnly="true" Text="Dr. Carlos Méndez – Cardiología" />
                </div>

                <div class="campo">
                    <label>Especialidad <small style="color:#888;font-weight:normal;">(no editable)</small></label>
                    <asp:TextBox ID="txtEspecialidadReadOnly" runat="server"
                        ReadOnly="true" Text="Cardiología" />
                </div>

                <div class="campo">
                    <label>Nueva fecha <span class="req">*</span></label>
                    <asp:TextBox ID="txtFecha" runat="server" TextMode="Date"
                        Text="2025-06-16"
                        AutoPostBack="true"
                        OnTextChanged="txtFecha_TextChanged" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtFecha"
                        CssClass="validador" ErrorMessage="La fecha es requerida." Display="Dynamic" />
                </div>

                <div class="campo">
                    <label>Nuevo horario <span class="req">*</span></label>
                    <asp:DropDownList ID="ddlHorario" runat="server">
                        <asp:ListItem Value="">-- Seleccioná --</asp:ListItem>
                        <asp:ListItem Value="09:00" Selected="True">09:00 hs</asp:ListItem>
                        <asp:ListItem Value="10:00">10:00 hs</asp:ListItem>
                        <asp:ListItem Value="11:00">11:00 hs</asp:ListItem>
                        <asp:ListItem Value="12:00">12:00 hs</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlHorario"
                        InitialValue="" CssClass="validador"
                        ErrorMessage="El horario es requerido." Display="Dynamic" />
                </div>

            </div>

            <asp:Panel ID="pnlConflicto" runat="server" Visible="false"
                Style="background:#fdecea;border:1px solid #f5b7b1;border-radius:6px;padding:10px 14px;font-size:12px;color:#922b21;margin-top:14px;">
                <asp:Label ID="lblConflicto" runat="server"
                    Text="⚠ El médico ya tiene un turno en este día y horario. Seleccioná otro." />
            </asp:Panel>
        </div>

        <!-- ========================
             PACIENTE
        ========================= -->
        <div class="form-card">
            <h2>Paciente</h2>
            <div class="form-grid">
                <div class="campo full-width">
                    <label>Paciente <span class="req">*</span></label>
                    <asp:DropDownList ID="ddlPaciente" runat="server">
                        <asp:ListItem Value="">-- Seleccioná --</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlPaciente"
                        InitialValue="" CssClass="validador"
                        ErrorMessage="El paciente es requerido." Display="Dynamic" />
                </div>
            </div>
        </div>

        <!-- ========================
             ESTADO
        ========================= -->
        <div class="form-card">
            <h2>Estado del Turno</h2>
            <div class="form-grid">
                <div class="campo full-width">
                    <label>Estado <span class="req">*</span></label>
                    <asp:DropDownList ID="ddlEstado" runat="server">
                        <asp:ListItem Value="">-- Seleccioná --</asp:ListItem>
                        <asp:ListItem Value="Confirmado" Selected="True">Confirmado</asp:ListItem>
                        <asp:ListItem Value="Pendiente">Pendiente</asp:ListItem>
                        <asp:ListItem Value="Cancelado">Cancelado</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlEstado"
                        InitialValue="" CssClass="validador"
                        ErrorMessage="El estado es requerido." Display="Dynamic" />
                </div>
            </div>
        </div>

        <!-- ========================
             OBSERVACIONES
        ========================= -->
        <div class="form-card">
            <h2>Observaciones</h2>
            <div class="form-grid una-col">
                <div class="campo">
                    <label>Observaciones</label>
                    <asp:TextBox ID="txtObservacion" runat="server" TextMode="MultiLine" Rows="4"
                        MaxLength="500"
                        Text="Paciente con antecedente de bypass coronario (marzo 2025). Presenta leve disnea de esfuerzo. Se solicita ECG y perfil lipídico previo a la consulta." />
                </div>
            </div>
        </div>

        <!-- ACCIONES -->
        <div class="form-acciones">
            <asp:Button ID="btnCancelar" runat="server" Text="Cancelar"
                CssClass="btn-cancelar" CausesValidation="false"
                OnClick="btnCancelar_Click" />
            <asp:Button ID="btnGuardar" runat="server" Text="Guardar cambios"
                CssClass="btn-guardar" OnClick="btnGuardar_Click" />
        </div>

    </div>

</asp:Content>
