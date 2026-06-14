<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Vistas.Login" %>

<!DOCTYPE html>
<html lang="es">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Iniciar sesión</title>
    <style>

        /* =====================
           GENERAL
        ===================== */
        body {
            font-family: Arial, sans-serif;
            background-color: #ffffff;
            margin: 0;
            padding: 0;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        /* =====================
           CONTENEDOR PRINCIPAL
        ===================== */
        .contenedor {
            width: 100%;
            max-width: 380px;
            padding: 16px;
        }

        /* =====================
           ENCABEZADO
        ===================== */
        .encabezado {
            text-align: center;
            margin-bottom: 24px;
        }

        .encabezado img {
            width: 60px;
            height: 60px;
            margin-bottom: 10px;
        }

        .encabezado h1 {
            font-size: 20px;
            color: #1a2332;
            margin: 0 0 4px 0;
        }

        .encabezado p {
            font-size: 13px;
            color: #666666;
            margin: 0;
        }

        /* =====================
           CARD
        ===================== */
        .card {
            background-color: #ffffff;
            border: 1px solid #cccccc;
            border-radius: 8px;
            padding: 24px;
        }

        /* =====================
           CAMPOS
        ===================== */
        .campo {
            margin-bottom: 16px;
        }

        .campo label {
            display: block;
            font-size: 13px;
            color: #333333;
            margin-bottom: 5px;
        }

        .campo input {
            width: 100%;
            height: 38px;
            padding: 0 10px;
            font-size: 14px;
            border: 1px solid #cccccc;
            border-radius: 5px;
            box-sizing: border-box;
            color: #1a2332;
            background-color: #fafafa;
        }

        .campo input:focus {
            outline: none;
            border-color: #185FA5;
            background-color: #ffffff;
        }

        /* =====================
           VALIDADORES
        ===================== */
        .validador {
            font-size: 12px;
            color: #cc0000;
            margin-top: 4px;
            display: block;
        }

        /* =====================
           LINK OLVIDE CONTRASEÑA
        ===================== */
        .link-olvide {
            text-align: right;
            margin-bottom: 16px;
        }

        .link-olvide a {
            font-size: 12px;
            color: #185FA5;
            text-decoration: none;
        }

        .link-olvide a:hover {
            text-decoration: underline;
        }

        /* =====================
           BOTON
        ===================== */
        .boton-ingresar {
            width: 100%;
            height: 40px;
            background-color: #185FA5;
            color: #ffffff;
            border: none;
            border-radius: 5px;
            font-size: 14px;
            cursor: pointer;
        }

        .boton-ingresar:hover {
            background-color: #0C447C;
        }

        /* =====================
           PIE DE PAGINA
        ===================== */
        .pie {
            text-align: center;
            margin-top: 16px;
            font-size: 11px;
            color: #999999;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="contenedor">

            <%-- Encabezado --%>
            <div class="encabezado">
                <h1>Bienvenido</h1>
                <p>Ingresá tus datos para acceder al sistema</p>
            </div>

            <%-- Card con el formulario --%>
            <div class="card">

                <%-- Campo Usuario --%>
                <div class="campo">
                    <asp:Label
                        ID="lblUsuario"
                        runat="server"
                        AssociatedControlID="txtUsuario"
                        Text="Usuario" />
                    <asp:TextBox
                        ID="txtUsuario"
                        runat="server"
                        MaxLength="100"
                        placeholder="nombre.apellido" />
                    <asp:RequiredFieldValidator
                        ID="rfvUsuario"
                        runat="server"
                        ControlToValidate="txtUsuario"
                        ErrorMessage="El usuario es obligatorio."
                        CssClass="validador"
                        Display="Dynamic"
                        EnableClientScript="false" />
                </div>

                <%-- Campo Contraseña --%>
                <div class="campo">
                    <asp:Label
                        ID="lblPassword"
                        runat="server"
                        AssociatedControlID="txtPassword"
                        Text="Contraseña" />
                    <asp:TextBox
                        ID="txtPassword"
                        runat="server"
                        TextMode="Password"
                        MaxLength="100"
                        placeholder="••••••••" />
                    <asp:RequiredFieldValidator
                        ID="rfvPassword"
                        runat="server"
                        ControlToValidate="txtPassword"
                        ErrorMessage="La contraseña es obligatoria."
                        CssClass="validador"
                        Display="Dynamic"
                        EnableClientScript="false" />
                </div>

                <%-- Link olvidé contraseña --%>
                <div class="link-olvide">
                    <asp:HyperLink
                        ID="lnkOlvide"
                        runat="server"
                        NavigateUrl="#"
                        Text="¿Olvidaste tu contraseña?" />
                </div>

                <%-- Botón ingresar --%>
                <asp:Button
                    ID="btnIngresar"
                    runat="server"
                    Text="Ingresar"
                    CssClass="boton-ingresar"
                    UseSubmitBehavior="false"
                    OnClientClick="return false;" />

            </div>

            <%-- Pie de página --%>
            <div class="pie">
                Sistema de gestión clínica
            </div>

        </div>
    </form>
</body>
</html>
