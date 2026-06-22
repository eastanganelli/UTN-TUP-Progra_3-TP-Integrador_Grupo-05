<%@ Page Title="Nuevo Turno" Language="C#" MasterPageFile="~/Administracion/Plantilla.Master" AutoEventWireup="true" CodeBehind="tNuevo.aspx.cs" Inherits="Vistas.Administracion.Pacientes.Pacientes" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
        .banner-turno {
            background-color: #1a2332;
            border-radius: 8px;
            padding: 20px 28px;
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
        }
        .banner-turno .bloque-label {
            font-size: 11px; font-weight: bold;
            text-transform: uppercase; letter-spacing: 0.7px;
            color: #7a8fa8; margin-bottom: 4px;
        }
        .banner-turno .bloque-valor {
            font-size: 16px; font-weight: bold; color: #ffffff;
        }
        .banner-turno .bloque-sub {
            font-size: 11px; color: #7a8fa8; margin-top: 2px;
        }

        .campo textarea {
            height: auto; min-height: 80px; padding: 8px 10px; resize: none;
        }

        .btn-limpiar {
            height: 38px; padding: 0 20px;
            background-color: transparent; color: #185FA5;
            border: 1px solid #185FA5; border-radius: 5px;
            font-size: 13px; cursor: pointer; transition: all 0.2s ease;
        }
        .btn-limpiar:hover { background-color: #185FA5; color: #ffffff; }
    </style>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

<style>

    .section-title{
        font-size:13px;
        text-transform:uppercase;
        letter-spacing:.5px;
        color:#185FA5;
        margin-bottom:18px;
        padding-bottom:10px;
        border-bottom:1px solid #eee;
        font-weight:bold;
    }

    .acciones{
        display:flex;
        justify-content:flex-end;
        gap:10px;
        margin-top:25px;
    }

    .btn-secondary{
        background:#fff;
        border:1px solid #ccc;
        color:#666;
        border-radius:5px;
        padding:10px 18px;
        font-size:13px;
        cursor:pointer;
    }

    .btn-secondary:hover{
        border-color:#185FA5;
        color:#185FA5;
    }

</style>

</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="form-wrapper">

        <div class="page-header">
            <div>
                <h1>Nuevo Turno</h1>
                <p>Seleccioná especialidad, médico, fecha, horario y paciente para asignar el turno</p>
            </div>
            <a href="~/Administracion/Turnos/Turnos.aspx" class="btn-volver">← Volver al listado</a>
        </div>

        <div class="banner-turno">
            <div>
                <div class="bloque-label">Especialidad</div>
                <div class="bloque-valor">
                    <asp:Label ID="lblResEspecialidad" runat="server" Text="—" />
                </div>
            </div>
            <div>
                <div class="bloque-label">Médico</div>
                <div class="bloque-valor">
                    <asp:Label ID="lblResMedico" runat="server" Text="—" />
                </div>
            </div>
            <div>
                <div class="bloque-label">Fecha y horario</div>
                <div class="bloque-valor">
                    <asp:Label ID="lblResFecha" runat="server" Text="—" />
                </div>
                <div class="bloque-sub">
                    <asp:Label ID="lblResPaciente" runat="server" Text="" />
                </div>
            </div>
        </div>

        <!-- ========================
             ASIGNACIÓN DEL TURNO
        ========================= -->
        <div class="form-card">
            <h2>Asignación del Turno</h2>
            <p class="seccion-nota">
                Seleccioná primero la especialidad: el sistema filtrará los médicos disponibles.
                Luego elegí fecha y el sistema mostrará los horarios libres del médico.
            </p>
            <div class="form-grid">

                <div class="campo">
                    <label>Especialidad <span class="req">*</span></label>
                    <asp:DropDownList ID="ddlEspecialidad" runat="server"
                        AutoPostBack="true"
                        OnSelectedIndexChanged="ddlEspecialidad_SelectedIndexChanged">
                        <asp:ListItem Value="">-- Seleccioná --</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlEspecialidad"
                        InitialValue="" CssClass="validador"
                        ErrorMessage="La especialidad es requerida." Display="Dynamic" />
                </div>

                <div class="campo">
                    <label>Médico <span class="req">*</span></label>
                    <asp:DropDownList ID="ddlMedico" runat="server"
                        AutoPostBack="true"
                        OnSelectedIndexChanged="ddlMedico_SelectedIndexChanged">
                        <asp:ListItem Value="">-- Seleccioná especialidad primero --</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlMedico"
                        InitialValue="" CssClass="validador"
                        ErrorMessage="El médico es requerido." Display="Dynamic" />
                </div>

                <div class="campo">
                    <label>Fecha <span class="req">*</span></label>
                    <asp:TextBox ID="txtFecha" runat="server" TextMode="Date"
                        AutoPostBack="true"
                        OnTextChanged="txtFecha_TextChanged" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtFecha"
                        CssClass="validador" ErrorMessage="La fecha es requerida." Display="Dynamic" />
                </div>

                <div class="campo">
                    <label>Horario <span class="req">*</span></label>
                    <asp:DropDownList ID="ddlHorario" runat="server">
                        <asp:ListItem Value="">-- Seleccioná médico y fecha primero --</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlHorario"
                        InitialValue="" CssClass="validador"
                        ErrorMessage="El horario es requerido." Display="Dynamic" />
                </div>

            </div>

            <asp:Panel ID="pnlConflicto" runat="server" Visible="false"
                Style="background:#fdecea;border:1px solid #f5b7b1;border-radius:6px;padding:10px 14px;font-size:12px;color:#922b21;margin-top:14px;">
                <asp:Label ID="lblConflicto" runat="server"
                    Text="⚠ El médico ya tiene un turno en este día y horario. Por favor elegí otro horario." />
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
                    <asp:DropDownList ID="ddlPaciente" runat="server"
                        AutoPostBack="true"
                        OnSelectedIndexChanged="ddlPaciente_SelectedIndexChanged">
                        <asp:ListItem Value="">-- Seleccioná un paciente --</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlPaciente"
                        InitialValue="" CssClass="validador"
                        ErrorMessage="El paciente es requerido." Display="Dynamic" />
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
                    <label>Motivo / Observaciones iniciales</label>
                    <asp:TextBox ID="txtObservacion" runat="server" TextMode="MultiLine"
                        Rows="3" MaxLength="500"
                        placeholder="Describí el motivo del turno (opcional)..." />
                </div>
            </div>
        </div>

        <!-- ACCIONES -->
        <div class="form-acciones">
            <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar"
                CssClass="btn-limpiar" CausesValidation="false"
                OnClick="btnLimpiar_Click" />
            <asp:Button ID="btnGuardar" runat="server" Text="Asignar turno"
                CssClass="btn-guardar" OnClick="btnGuardar_Click" />
        </div>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div class="form-wrapper">

<div class="page-header">
    <div>
        <div class="page-title">Nuevo Paciente</div>
        <div class="page-subtitle">
            Complete los datos para registrar un paciente
        </div>
    </div>
</div>

<div class="form-card">

    <div class="section-title">
        Datos Personales
    </div>

    <div class="form-grid">

        <div class="campo">
            <label>DNI</label>
            <asp:TextBox ID="txtDni" runat="server"></asp:TextBox>
        </div>

        <div class="campo">
            <label>Sexo</label>
            <asp:DropDownList ID="ddlSexo" runat="server">
                <asp:ListItem>Seleccione...</asp:ListItem>
                <asp:ListItem>Masculino</asp:ListItem>
                <asp:ListItem>Femenino</asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class="campo">
            <label>Nombre</label>
            <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
        </div>

        <div class="campo">
            <label>Apellido</label>
            <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
        </div>

        <div class="campo">
            <label>Fecha de Nacimiento</label>
            <asp:TextBox ID="txtFechaNacimiento" runat="server" TextMode="Date"></asp:TextBox>
        </div>

        <div class="campo">
            <label>Nacionalidad</label>
            <asp:TextBox ID="txtNacionalidad" runat="server"></asp:TextBox>
        </div>

    </div>

    <div class="section-title">
        Información de Contacto
    </div>

    <div class="form-grid">

        <div class="campo full-width">
            <label>Dirección</label>
            <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
        </div>

        <div class="campo">
            <label>Provincia</label>
            <asp:DropDownList ID="ddlProvincia" runat="server">
                <asp:ListItem>Buenos Aires</asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class="campo">
            <label>Localidad</label>
            <asp:DropDownList ID="ddlLocalidad" runat="server">
                <asp:ListItem>Tigre</asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class="campo">
            <label>Correo Electrónico</label>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        </div>

        <div class="campo">
            <label>Teléfono</label>
            <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
        </div>

    </div>

    <div class="acciones">
        <button type="button" class="btn-secondary">
            Cancelar
        </button>

        <button type="submit" class="btn-primary">
            Guardar Paciente
        </button>
    </div>

</div>
```

</div>

</asp:Content>
