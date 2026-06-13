<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Vistas.Login" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Iniciar sesión — Clínica </title>
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

        .login-card {
            background: #ffffff; border: 1px solid #dde5ef;
            border-radius: 14px; padding: 2rem 2.25rem 2.25rem;
            box-shadow: 0 2px 12px rgba(24,95,165,0.06);
        }

        .card-title {
            font-size: 14px; font-weight: 500; color: #3d5166;
            margin-bottom: 1.5rem; padding-bottom: 0.85rem;
            border-bottom: 1px solid #edf1f6;
        }

        .field-group { margin-bottom: 1.1rem; }

        .field-label {
            display: block; font-size: 12px; font-weight: 500;
            color: #4a6070; margin-bottom: 5px; letter-spacing: 0.02em;
        }

        .field-wrap { position: relative; display: flex; align-items: center; }

        .field-icon {
            position: absolute; left: 11px; width: 16px; height: 16px;
            color: #8aa0b4; pointer-events: none;
        }

        .field-input {
            width: 100%; height: 40px; padding: 0 36px 0 36px;
            font-size: 14px; font-family: 'Inter', sans-serif;
            color: #1a2332; background: #f8fafc;
            border: 1px solid #dde5ef; border-radius: 8px; outline: none;
            transition: border-color 0.15s, box-shadow 0.15s, background 0.15s;
        }

        .field-input:focus {
            background: #ffffff; border-color: #185FA5;
            box-shadow: 0 0 0 3px rgba(24,95,165,0.1);
        }

        .field-input::placeholder { color: #b0bec9; }

        .pass-toggle {
            position: absolute; right: 10px; background: none; border: none;
            cursor: pointer; padding: 0; display: flex; align-items: center;
            color: #8aa0b4; transition: color 0.15s;
        }

        .pass-toggle:hover { color: #185FA5; }

        .forgot-row { text-align: right; margin-top: 4px; margin-bottom: 1.35rem; }

        .forgot-row a {
            font-size: 12px; color: #185FA5;
            text-decoration: none; font-weight: 500;
        }

        .forgot-row a:hover { text-decoration: underline; }

        .btn-primary {
            width: 100%; height: 42px; background-color: #185FA5;
            color: #ffffff; border: none; border-radius: 8px;
            font-size: 14px; font-weight: 500; font-family: 'Inter', sans-serif;
            cursor: pointer; display: flex; align-items: center;
            justify-content: center; gap: 7px;
            transition: background-color 0.15s, transform 0.1s;
        }

        .btn-primary:hover { background-color: #0C447C; }
        .btn-primary:active { transform: scale(0.98); }

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

        <main class="login-card">
            <p class="card-title">Ingresá tus credenciales para continuar</p>

            <div class="field-group">
                <label class="field-label" for="txtUsuario">Usuario</label>
                <div class="field-wrap">
                    <svg class="field-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                         stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
                        <circle cx="12" cy="8" r="4"/>
                        <path d="M4 20c0-4 3.6-7 8-7s8 3 8 7"/>
                    </svg>
                    <input id="txtUsuario" type="text" class="field-input"
                           placeholder="nombre.apellido" autocomplete="username" />
                </div>
            </div>

            <div class="field-group">
                <label class="field-label" for="txtPassword">Contraseña</label>
                <div class="field-wrap">
                    <svg class="field-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                         stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
                        <rect x="3" y="11" width="18" height="11" rx="2"/>
                        <path d="M7 11V7a5 5 0 0110 0v4"/>
                    </svg>
                    <input id="txtPassword" type="password" class="field-input"
                           placeholder="••••••••" autocomplete="current-password" />
                    <button type="button" class="pass-toggle"
                            onclick="togglePassword(this)" aria-label="Mostrar contraseña">
                        <svg id="iconShow" width="17" height="17" viewBox="0 0 24 24" fill="none"
                             stroke="currentColor" stroke-width="1.8" stroke-linecap="round"
                             stroke-linejoin="round" aria-hidden="true">
                            <path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"/>
                            <circle cx="12" cy="12" r="3"/>
                        </svg>
                        <svg id="iconHide" width="17" height="17" viewBox="0 0 24 24" fill="none"
                             stroke="currentColor" stroke-width="1.8" stroke-linecap="round"
                             stroke-linejoin="round" aria-hidden="true" style="display:none;">
                            <path d="M17.94 17.94A10.07 10.07 0 0112 20c-7 0-11-8-11-8a18.45 18.45 0 015.06-5.94M9.9 4.24A9.12 9.12 0 0112 4c7 0 11 8 11 8a18.5 18.5 0 01-2.16 3.19m-6.72-1.07a3 3 0 11-4.24-4.24"/>
                            <line x1="1" y1="1" x2="23" y2="23"/>
                        </svg>
                    </button>
                </div>
            </div>

            <div class="forgot-row">
                <a href="#">¿Olvidaste tu contraseña?</a>
            </div>

            <button type="button" class="btn-primary">
                <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                     stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
                    <path d="M15 3h4a2 2 0 012 2v14a2 2 0 01-2 2h-4"/>
                    <polyline points="10 17 15 12 10 7"/>
                    <line x1="15" y1="12" x2="3" y2="12"/>
                </svg>
                Ingresar
            </button>
        </main>

        <footer class="page-footer">
            © 2026 Clínica · Todos los derechos reservados
        </footer>
    </div>

    <script>
        function togglePassword(btn) {
            var input = document.getElementById('txtPassword');
            var iconShow = document.getElementById('iconShow');
            var iconHide = document.getElementById('iconHide');
            if (input.type === 'password') {
                input.type = 'text';
                iconShow.style.display = 'none';
                iconHide.style.display = 'block';
                btn.setAttribute('aria-label', 'Ocultar contraseña');
            } else {
                input.type = 'password';
                iconShow.style.display = 'block';
                iconHide.style.display = 'none';
                btn.setAttribute('aria-label', 'Mostrar contraseña');
            }
        }
    </script>
</body>
</html>