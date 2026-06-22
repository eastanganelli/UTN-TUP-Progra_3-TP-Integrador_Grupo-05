<%@ Page Title="Nuevo Turno" Language="C#" MasterPageFile="~/Administracion/Plantilla.Master" AutoEventWireup="true" CodeBehind="tNuevo.aspx.cs" Inherits="Vistas.Administracion.Pacientes.Pacientes" %>

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

        .btn-volver {
            font-size: 12px; color: #185FA5; text-decoration: none;
            border: 1px solid #185FA5; padding: 7px 14px;
            border-radius: 5px; transition: all 0.2s ease; flex-shrink: 0;
        }
        .btn-volver:hover { background-color: #185FA5; color: #ffffff; }

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

    .form-wrapper{
        width:100%;
        max-width:950px;
    }

    .page-header{
        display:flex;
        justify-content:space-between;
        align-items:center;
        margin-bottom:20px;
    }

    .page-title{
        font-size:22px;
        color:#1a2332;
        font-weight:500;
    }

    .page-subtitle{
        font-size:13px;
        color:#888;
        margin-top:2px;
    }

    .form-card{
        background:#fff;
        border:1px solid #ccc;
        border-radius:8px;
        padding:25px;
    }

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

    .form-grid{
        display:grid;
        grid-template-columns:1fr 1fr;
        gap:18px;
        margin-bottom:30px;
    }

    .campo{
        display:flex;
        flex-direction:column;
        gap:5px;
    }

    .campo label{
        font-size:12px;
        color:#666;
        font-weight:500;
        text-transform:uppercase;
    }

    .campo input,
    .campo select{
        height:38px;
        padding:0 10px;
        border:1px solid #ccc;
        border-radius:5px;
        background:#fafafa;
        color:#1a2332;
        font-size:13px;
    }

    .campo input:focus,
    .campo select:focus{
        outline:none;
        border-color:#185FA5;
        background:#fff;
    }

    .full-width{
        grid-column:1 / -1;
    }

    .acciones{
        display:flex;
        justify-content:flex-end;
        gap:10px;
        margin-top:25px;
    }

    .btn-primary{
        background:#185FA5;
        color:#fff;
        border:none;
        border-radius:5px;
        padding:10px 18px;
        font-size:13px;
        cursor:pointer;
    }

    .btn-primary:hover{
        background:#0C447C;
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
