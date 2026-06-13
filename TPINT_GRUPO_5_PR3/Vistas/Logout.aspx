<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logout.aspx.cs" Inherits="Vistas.Logout" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Cerrar sesión — Clínica </title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500&family=Merriweather:wght@700&display=swap" rel="stylesheet" />
    <style>
        *, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }

        body {
            font-family: 'Inter', sans-serif;
            background-color: #ffffff;
            color: #1a2332;
            min-height: 100vh;
            display: flex; align-items: center; justify-content: center;
            padding: 2rem 1rem;
        }

        .page-wrapper { width: 100%; max-width: 420px; }

        .clinic-header { text-align: center; margin-bottom: 2rem; }

        .clinic-logo {
            width: 52px; height: 52px; border-radius: 50%;
            background-color: #EBF3FB; border: 1.5px solid #C5DCEF;
            display: inline-flex; align-items: center; justify-content: center;
            margin-bottom: 0.85rem;
        }

        .clinic-name {
            font-family: 'Merriweather', serif;
            font-size: 18px; font-weight: 700; color: #0d1f35; margin-bottom: 3px;
        }

        .clinic-tagline {
            font-size: 11px; font-weight: 500; color: #7a8fa6;
            letter-spacing: 0.08em; text-transform: uppercase;
        }

        .header-accent {
            width: 30px; height: 2.5px; background-color: #185FA5;
            border-radius: 2px; margin: 0.65rem auto 0;
        }

        .logout-card {
            background: #ffffff; border: 1px solid #dde5ef;
            border-radius: 14px; padding: 2rem 2.25rem 2.25rem;
            box-shadow: 0 2px 12px rgba(24,95,165,0.06);
        }

        .warning-icon {
            width: 60px; height: 60px; border-radius: 50%;
            background-color: #FEF6E8; border: 1.5px solid #FAD7A0;
            display: flex; align-items: center; justify-content: center;
            margin: 0 auto 1.25rem;
        }

        .logout-title {
            font-size: 17px; font-weight: 500; color: #0d1f35;
            text-align: center; margin-bottom: 6px;
        }

        .logout-desc {
            font-size: 13px; color: #5a7080;
            text-align: center; line-height: 1.65; margin-bottom: 1.6rem;
        }

        .session-panel {
            display: flex; align-items: center; gap: 12px;
            background: #f5f8fc; border: 1px solid #dde5ef;
            border-radius: 10px; padding: 12px 14px; margin-bottom: 1.6rem;
        }

        .session-avatar {
            width: 38px; height: 38px; border-radius: 50%;
            background-color: #d0e6f8; display: flex;
            align-items: center; justify-content: center;
            font-size: 13px; font-weight: 500; color: #0C447C;
            flex-shrink: 0; letter-spacing: 0.03em;
        }

        .session-name { font-size: 14px; font-weight: 500; color: #1a2332; display: block; }
        .session-role { font-size: 11px; color: #7a8fa6; display: block; margin-top: 1px; }

        .card-divider { border: none; border-top: 1px solid #edf1f6; margin-bottom: 1.4rem; }

        .btn-row { display: grid; grid-template-columns: 1fr 1fr; gap: 10px; }

        .btn-cancel {
            height: 42px; background-color: #f5f8fc; color: #3d5166;
            border: 1px solid #dde5ef; border-radius: 8px;
            font-size: 14px; font-weight: 500; font-family: 'Inter', sans-serif;
            cursor: pointer; display: flex; align-items: center;
            justify-content: center; gap: 6px; text-decoration: none;
            transition: background-color 0.15s;
        }

        .btn-cancel:hover { background-color: #e8eef5; }

        .btn-logout {
            height: 42px; background-color: #a32d2d; color: #ffffff;
            border: none; border-radius: 8px;
            font-size: 14px; font-weight: 500; font-family: 'Inter', sans-serif;
            cursor: pointer; display: flex; align-items: center;
            justify-content: center; gap: 7px;
            transition: background-color 0.15s, transform 0.1s;
        }

        .btn-logout:hover { background-color: #791F1F; }
        .btn-logout:active { transform: scale(0.98); }

        .page-footer {
            text-align: center; margin-top: 1.5rem;
            font-size: 11px; color: #a0b0bf;
        }
    </style>
</head>
<body>
    <div class="page-wrapper">

        <header class="clinic-header">
            <div class="clinic-logo" aria-hidden="true">
                <svg width="26" height="26" viewBox="0 0 26 26" fill="none">
                    <rect x="10" y="2" width="6" height="22" rx="2" fill="#185FA5"/>
                    <rect x="2" y="10" width="22" height="6" rx="2" fill="#185FA5"/>
                </svg>
            </div>
            <h1 class="clinic-name">Clínica </h1>
            <p class="clinic-tagline">Portal de acceso</p>
            <div class="header-accent"></div>
        </header>

        <main class="logout-card">

            <div class="warning-icon" aria-hidden="true">
                <svg width="28" height="28" viewBox="0 0 24 24" fill="none"
                     stroke="#BA7517" stroke-width="1.8"
                     stroke-linecap="round" stroke-linejoin="round">
                    <path d="M10.29 3.86L1.82 18a2 2 0 001.71 3h16.94a2 2 0 001.71-3L13.71 3.86a2 2 0 00-3.42 0z"/>
                    <line x1="12" y1="9" x2="12" y2="13"/>
                    <line x1="12" y1="17" x2="12.01" y2="17"/>
                </svg>
            </div>

            <h2 class="logout-title">¿Cerrar sesión?</h2>
            <p class="logout-desc">
                Tu sesión actual finalizará. Asegurate de guardar cualquier cambio
                pendiente antes de continuar.
            </p>

            <div class="session-panel">
                <div class="session-avatar">MG</div>
                <div>
                    <span class="session-name">(Nombre Medico)</span>
                    <span class="session-role">(Datos del role)</span>
                </div>
            </div>

            <hr class="card-divider" />

            <div class="btn-row">
                <a href="Login_preview.html" class="btn-cancel">
                    <svg width="15" height="15" viewBox="0 0 24 24" fill="none"
                         stroke="currentColor" stroke-width="2"
                         stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
                        <line x1="19" y1="12" x2="5" y2="12"/>
                        <polyline points="12 19 5 12 12 5"/>
                    </svg>
                    Cancelar
                </a>
                <button type="button" class="btn-logout">
                    <svg width="15" height="15" viewBox="0 0 24 24" fill="none"
                         stroke="currentColor" stroke-width="2"
                         stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
                        <path d="M9 21H5a2 2 0 01-2-2V5a2 2 0 012-2h4"/>
                        <polyline points="16 17 21 12 16 7"/>
                        <line x1="21" y1="12" x2="9" y2="12"/>
                    </svg>
                    Cerrar sesión
                </button>
            </div>

        </main>

        <footer class="page-footer">
            © 2026 Clínica  · Todos los derechos reservados
        </footer>
    </div>
</body>
</html>