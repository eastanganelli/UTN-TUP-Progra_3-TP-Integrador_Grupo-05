<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Vistas.Login" %>

<!DOCTYPE html>
<html lang="es">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Iniciar sesión</title>
    <link rel="stylesheet" href="~/CSS/principal.css" />
    <style>
        body { background-color: #ffffff; }
        #form1 {
            flex-direction: column;
            align-items: center;
            justify-content: center;
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

                <%-- Botón ingresar --%>
                <asp:Button
                    ID="btnIngresar"
                    runat="server"
                    Text="Ingresar"
                    CssClass="boton-ingresar"
                    UseSubmitBehavior="false" OnClick="btnIngresar_Click"
                    />

            </div>

            <%-- Pie de página --%>
            <div class="pie">
                Sistema de gestión clínica
            </div>

        </div>
    </form>
</body>
</html>
