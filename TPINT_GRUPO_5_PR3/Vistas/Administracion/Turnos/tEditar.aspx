<%@ Page Title="Editar Turno" Language="C#" MasterPageFile="~/Administracion/Plantilla.Master" AutoEventWireup="true" CodeBehind="tEditar.aspx.cs" Inherits="Vistas.Administracion.Pacientes.EditarPaciente" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
        .form-wrapper {
            width: 100%;
            max-width: 860px;
            display: flex;
            flex-direction: column;
            gap: 24px;
        }

        .page-header { display: flex; justify-content: space-between; align-items: flex-start; }
        .page-header h1 { font-size: 22px; color: #1a2332; margin: 0 0 4px 0; font-weight: bold; }
        .page-header p  { font-size: 13px; color: #888888; margin: 0; }

        .page-header-actions { display: flex; gap: 10px; flex-shrink: 0; }

        .btn-volver {
            font-size: 12px; color: #185FA5; text-decoration: none;
            border: 1px solid #185FA5; padding: 7px 14px;
            border-radius: 5px; transition: all 0.2s ease;
        }
        .btn-volver:hover { background-color: #185FA5; color: #ffffff; }

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

        .form-card {
            background-color: #ffffff;
            border: 1px solid #cccccc;
            border-radius: 8px;
            padding: 24px;
        }

        .form-card h2 {
            font-size: 13px; font-weight: bold; color: #185FA5;
            text-transform: uppercase; letter-spacing: 0.8px;
            margin: 0 0 20px 0; padding-bottom: 10px;
            border-bottom: 1px solid #eeeeee;
        }

        .form-grid { display: grid; grid-template-columns: 1fr 1fr; gap: 16px; }
        .form-grid.una-col { grid-template-columns: 1fr; }

        .campo { display: flex; flex-direction: column; gap: 5px; }
        .campo.full-width { grid-column: 1 / -1; }

        .campo label { font-size: 12px; font-weight: bold; color: #333333; }
        .campo label .req { color: #c0392b; margin-left: 2px; }

        .campo input[type="text"],
        .campo select,
        .campo textarea {
            height: 36px; padding: 0 10px; font-size: 13px;
            border: 1px solid #cccccc; border-radius: 5px;
            color: #1a2332; background-color: #fafafa;
            box-sizing: border-box; width: 100%;
            font-family: Arial, sans-serif;
        }

        .campo textarea {
            height: auto; min-height: 80px; padding: 8px 10px; resize: none;
        }

        .campo select[disabled],
        .campo input[readonly] {
            background-color: #f0f0f0; color: #888888; cursor: not-allowed;
        }

        .campo input:focus, .campo select:focus, .campo textarea:focus {
            outline: none; border-color: #185FA5; background-color: #ffffff;
        }

        .seccion-nota {
            font-size: 11px; color: #888888;
            background-color: #f5f8fc; border: 1px solid #dde8f5;
            border-radius: 5px; padding: 8px 12px; margin-bottom: 16px;
        }

        .validador { font-size: 11px; color: #c0392b; display: block; }

        .form-acciones { display: flex; justify-content: flex-end; gap: 12px; }

        .btn-guardar {
            height: 38px; padding: 0 28px;
            background-color: #185FA5; color: #ffffff;
            border: none; border-radius: 5px;
            font-size: 14px; font-weight: bold; cursor: pointer;
            transition: background-color 0.2s ease;
        }
        .btn-guardar:hover { background-color: #0C447C; }

        .btn-cancelar {
            height: 38px; padding: 0 20px;
            background-color: transparent; color: #185FA5;
            border: 1px solid #185FA5; border-radius: 5px;
            font-size: 13px; cursor: pointer; transition: all 0.2s ease;
        }
        .btn-cancelar:hover { background-color: #185FA5; color: #ffffff; }
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
