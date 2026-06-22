<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logout.aspx.cs" Inherits="Vistas.Logout" %>

<!DOCTYPE html>
<html lang="es">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Cerrar sesión</title>
    <link rel="stylesheet" href="~/CSS/principal.css" />
    <style>
        /* logout va centrado igual que login, sin sidebar */
        body { background-color: #ffffff; align-items: center; justify-content: center; }

        /* card de logout va centrada internamente */
        .card { text-align: center; }
        .card h2 { font-size: 18px; color: #1a2332; margin: 0 0 8px 0; }
        .card p  { font-size: 13px; color: #666666; margin: 0 0 20px 0; line-height: 1.5; }

        /* círculo con el ícono de advertencia */
        .icono-logout {
            width: 56px; height: 56px;
            background-color: #FEF6E8; border: 1px solid #FAD7A0;
            border-radius: 50%; display: flex;
            align-items: center; justify-content: center;
            margin: 0 auto 16px auto; font-size: 26px;
        }

        /* cuadrito que muestra nombre y rol del usuario logueado */
        .panel-usuario {
            background-color: #f5f8fc; border: 1px solid #cccccc;
            border-radius: 6px; padding: 12px;
            margin-bottom: 20px; text-align: left;
        }
        .panel-usuario .nombre { font-size: 14px; font-weight: bold; color: #1a2332; display: block; }
        .panel-usuario .rol    { font-size: 12px; color: #666666; display: block; margin-top: 2px; }

        .separador { border: none; border-top: 1px solid #eeeeee; margin-bottom: 20px; }

        /* fila con botón cancelar + botón cerrar sesión */
        .fila-botones { display: flex; gap: 10px; }

        .boton-cancelar {
            flex: 1; height: 40px;
            background-color: #f5f5f5; color: #333333;
            border: 1px solid #cccccc; border-radius: 5px;
            font-size: 14px; cursor: pointer;
            text-decoration: none; display: flex;
            align-items: center; justify-content: center;
        }
        .boton-cancelar:hover { background-color: #e8e8e8; }

        .boton-cerrar {
            flex: 1; height: 40px;
            background-color: #a32d2d; color: #ffffff;
            border: none; border-radius: 5px;
            font-size: 14px; cursor: pointer;
        }
        .boton-cerrar:hover { background-color: #791F1F; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="contenedor">

            <%-- Card principal --%>
            <div class="card">

                <%-- Ícono de advertencia (emoji, sin JS ni SVG) --%>
                <div class="icono-logout" aria-hidden="true">⚠</div>

                <%-- Título y descripción --%>
                <h2>¿Cerrar sesión?</h2>
                <p>Tu sesión actual finalizará. Asegurate de guardar cualquier cambio pendiente antes de continuar.</p>

                <%-- Panel con datos del usuario (valores de ejemplo para preview) --%>
                <div class="panel-usuario">
                    <asp:Label
                        ID="lblNombreUsuario"
                        runat="server"
                        CssClass="nombre"
                        Text="<Nombre Medico>" />
                    <asp:Label
                        ID="lblRolUsuario"
                        runat="server"
                        CssClass="rol"
                        Text="Sesión activa" />
                </div>

                <hr class="separador" />

                <%-- Botones --%>
                <div class="fila-botones">
                    <asp:HyperLink
                        ID="lnkCancelar"
                        runat="server"
                        NavigateUrl="#"
                        CssClass="boton-cancelar"
                        Text="Cancelar" />

                    <asp:Button
                        ID="btnCerrarSesion"
                        runat="server"
                        Text="Cerrar sesión"
                        CssClass="boton-cerrar"
                        UseSubmitBehavior="false"
                        OnClientClick="return false;" />
                </div>

            </div>

            <%-- Pie de página --%>
            <div class="pie">
                Sistema de gestión clínica
            </div>

        </div>
    </form>
</body>
</html>