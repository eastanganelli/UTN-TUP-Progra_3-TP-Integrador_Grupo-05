# Reporte de Commits — Últimos 5
**Proyecto:** TPINT_GRUPO_5_PR3  
**Generado:** 09/07/2026  
**Rama:** main

---

## Resumen

| # | Hash | Mensaje | Autor | Fecha |
|---|------|---------|-------|-------|
| 1 | `14bbdda` | Merge branch 'main' | eastanganelli | 08/07/2026 16:03 |
| 2 | `6c7a88e` | correcciones varias | eastanganelli | 08/07/2026 16:03 |
| 3 | `1602041` | Editar inicio médico | Rocio Giusto | 08/07/2026 15:33 |
| 4 | `b8dd5c9` | Correcciones de diseño | Rocio Giusto | 08/07/2026 14:24 |
| 5 | `1096343` | correcciones de editar turnos | eastanganelli | 08/07/2026 00:51 |

---

## Commit 1 — `14bbdda` · Merge branch 'main'
**Autor:** eastanganelli &lt;ezequielstanganelli@gmail.com&gt;  
**Fecha:** 08/07/2026 16:03  
**Tipo:** Merge  
**Archivos afectados:** 4 archivos, +37 / -10

Este commit es un merge que integró los cambios de la rama remota (commits `1602041` y `b8dd5c9` de Rocio Giusto) al historial local de eastanganelli. No agrega código propio — incorpora los cambios detallados en los commits 3 y 4 de este reporte.

| Archivo | Cambio |
|---------|--------|
| `Datos/Medicos.cs` | Incorporado de commit 1602041 |
| `Entidades/Medico.cs` | Incorporado de commit 1602041 |
| `Vistas/Administracion/Inicio.aspx.cs` | Incorporado de commit 1602041 |
| `Vistas/Administracion/Pacientes/pInicio.aspx` | Incorporado de commit b8dd5c9 |

---

## Commit 2 — `6c7a88e` · correcciones varias
**Autor:** eastanganelli &lt;ezequielstanganelli@gmail.com&gt;  
**Fecha:** 08/07/2026 16:03  
**Tipo:** Correcciones múltiples (bugs + funcionalidades)  
**Archivos afectados:** 14 archivos, +129 / -11

### `.gitignore`
- **Agregado:** Nueva regla de exclusión.

### `Datos/Reportes.cs`
- **Corregido:** Columna inexistente `t.fecha` reemplazada por `CONVERT(DATE, t.fecha_hora)` en queries `TurnosPorEspecialidad` y `MedicosConMasTurnos`. Estas queries fallaban con `SqlException: Invalid column name 'fecha'` en toda ejecución.
- **Agregado:** Método `AsistenciaATurnos(DateTime? desde, DateTime? hasta)` — agrupa presentes/ausentes/pendientes por paciente desde `vw_Turnos_Activos`.
- **Agregado:** Método `PacientesConMasAusencias(DateTime? desde, DateTime? hasta)` — lista pacientes ordenados por cantidad de turnos con estado `ausente`.

### `Negocios/ReportesNegocio.cs`
- **Agregado:** Wrapper `AsistenciaATurnos()` con validación de rango de fechas.
- **Agregado:** Wrapper `PacientesConMasAusencias()` con validación de rango de fechas.

### `Vistas/Administracion/Medicos/mEditar.aspx`
- **Agregado:** Div `form-acciones` al final del formulario con botones `btnCancelar` y `btnGuardar`. Los handlers ya existían en el code-behind pero no tenían botones en la vista — la página era inoperable para guardar cambios.

### `Vistas/Administracion/Medicos/mEditar.aspx.designer.cs`
- **Agregado:** Declaraciones de `btnCancelar` (Button) y `btnGuardar` (Button).

### `Vistas/Administracion/Medicos/mVer.aspx`
- **Corregido:** Badge de estado del médico cambiado de `<%# %>` a `<%= %>`. Con `<%# %>` la expresión requiere `DataBind()` que nunca se llamaba, por lo que el badge siempre quedaba vacío.

### `Vistas/Administracion/Medicos/mVer.aspx.cs`
- **Agregado:** `using System.Data`.
- **Modificado:** Los `DataBind()` de `rptHorarios` y `rptTurnos` ahora capturan el `DataTable` antes de bindear para mostrar `lblSinHorarios` / `lblSinTurnos` cuando no hay filas.

### `Vistas/Administracion/Pacientes/pEditar.aspx.cs`
- **Corregido:** `ddlProvincia_SelectedIndexChanged` ahora asigna `idProvincia = Convert.ToInt32(ddlProvincia.SelectedValue)` antes de llamar `CargarLocalidades()`. Sin este fix, en postback `idProvincia` era siempre 0 y se cargaban localidades de la provincia incorrecta.

### `Vistas/Administracion/Reportes/ReportesInicio.aspx.cs`
- **Corregido:** `btnGenerar_Click` ahora incluye `&especialidad=...&medico=...` en la URL de redirect. Antes se perdían silenciosamente los valores seleccionados en ambos dropdowns.

### `Vistas/Administracion/Reportes/ReportesResultado.aspx`
- **Agregado:** `<EmptyDataTemplate>` en `gvResultado` con mensaje "Sin resultados para los filtros seleccionados." Antes, con cero filas el GridView era invisible sin ningún feedback al usuario.

### `Vistas/Administracion/Reportes/ReportesResultado.aspx.cs`
- **Agregado:** `case "Asistencia a Turnos"` en el switch de `CargarReporte()`.
- **Agregado:** `case "Pacientes con más Ausencias"` en el switch de `CargarReporte()`. Ambos reportes existían en el dropdown pero caían al `default: Response.Redirect(...)` — nunca mostraban datos.

### `Vistas/Administracion/Turnos/tInicio.aspx`
- **Corregido:** Removido `PostBackUrl="tNuevo.aspx"` del `btnNuevoTurno`. Tener `PostBackUrl` y `OnClick` simultáneos hace que el postback vaya directo a la página destino sin pasar por el event pipeline del page actual — el handler `btnNuevoTurno_Click` nunca se ejecutaba.

### `Vistas/Administracion/Turnos/tInicio.aspx.cs`
- **Modificado:** `CargarListadoDeTurnos()` — separación de flujo medico/admin. Médico filtra solo por paciente; admin puede filtrar por paciente, médico, especialidad y rango de fechas.
- **Corregido:** Filtro de rango de fechas ahora se aplica correctamente. Antes `txtDesde` y `txtHasta` eran leídos en `btnBuscar_Click` pero nunca pasados a `CargarListadoDeTurnos()`.

### `Vistas/Administracion/Usuarios/uInicio.aspx.cs`
- **Corregido:** `ddlPagina_SelectedIndexChanged` estaba vacío — no hacía nada al cambiar la página desde el dropdown. Ahora llama `CargarGrilla(pagina)`.

---

## Commit 3 — `1602041` · Editar inicio médico
**Autor:** Rocio Giusto &lt;giustorocio@gmail.com&gt;  
**Fecha:** 08/07/2026 15:33  
**Tipo:** Funcionalidad + corrección de datos  
**Archivos afectados:** 3 archivos, +21 / -8

### `Datos/Medicos.cs` — `ObtenerMedico()`
- **Modificado:** La consulta cambió de `SELECT * FROM Medico WHERE id_medico = @id` a `SELECT * FROM vw_Medicos WHERE IDMedico = @id`. La tabla `Medico` solo tiene datos del médico; la vista join con `Persona`, `Localidad`, `Provincia`, `Especialidad` y `Usuario`, exponiendo nombre, apellido, DNI, etc.
- **Modificado:** El mapeo al objeto `Medico` ahora usa nombres de columna con PascalCase (`IDMedico`, `IDPersona`, `Legajo`, `IDEspecialidad`, `Activo`) consistente con las columnas de la vista.
- **Agregado:** Mapeo de campos personales al objeto: `DNI`, `Nombre`, `Apellido`, `Sexo`, `Nacionalidad`, `FechaNacimiento`, `Direccion`, `Email`, `Telefono`.

### `Entidades/Medico.cs`
- **Modificado:** La clase `Medico` ahora hereda de `Persona` (`public class Medico : Persona`). Antes era independiente; al heredar, `Medico` reutiliza las propiedades de `Persona` sin duplicarlas.

### `Vistas/Administracion/Inicio.aspx.cs` — `CargarVistaMedico()`
- **Modificado:** El label `lblRol` antes mostraba `"Dr. " + nombreUsuario` (el username de login). Ahora consulta el médico vía `MedicosNegocio.ObtenerMedico(idMedico)` y muestra `"Dr. " + medico.Apellido` — nombre real del médico en lugar del nombre de usuario.

---

## Commit 4 — `b8dd5c9` · Correcciones de diseño
**Autor:** Rocio Giusto &lt;giustorocio@gmail.com&gt;  
**Fecha:** 08/07/2026 14:24  
**Tipo:** Corrección visual / CSS  
**Archivos afectados:** 1 archivo, +16 / -2

### `Vistas/Administracion/Pacientes/pInicio.aspx`
- **Modificado (CSS):** `.grid-container` — agregado `overflow-y: hidden` y cierre de llave en línea separada.
- **Agregado (CSS):** Regla `.gv-tabla` con `min-width: 1800px` y `border-collapse: collapse` para que la tabla no colapse en pantallas angostas.
- **Agregado (CSS):** Regla `.gv-tabla th, .gv-tabla td` con `padding: 10px`, `white-space: nowrap` (evita quiebre de texto en celdas) y `vertical-align: middle`.
- **Corregido (typo):** Subtítulo de la página decía `"GestGestión de pacientes..."` — corregido a `"Gestión de pacientes..."`.

---

## Commit 5 — `1096343` · correcciones de editar turnos
**Autor:** eastanganelli &lt;ezequielstanganelli@gmail.com&gt;  
**Fecha:** 08/07/2026 00:51  
**Tipo:** Funcionalidad mayor + corrección de bugs SQL  
**Archivos afectados:** 12 archivos, +431 / -413

### `Datos/Turnos.cs`
- **Agregado:** `ObtenerTurnosPorMedico(int idMedico)` — devuelve todos los turnos (pasados, presentes y futuros) de un médico específico desde `vw_Turnos_Activos`, ordenados por fecha descendente.
- **Agregado:** `ObtenerTurnosDelDiaAdmin()` — devuelve los turnos del día actual para todos los médicos. Usa `CONVERT(date, ta.FechaHora) = CONVERT(date, GETDATE() AT TIME ZONE 'Argentina Standard Time')` para manejo correcto de zona horaria.
- **Corregido:** `ObtenerTurnosDelDia()` — reemplazado `CURRENT_DATE` (sintaxis MySQL, no válida en SQL Server) por `CAST(SYSUTCDATETIME() AT TIME ZONE 'UTC' AT TIME ZONE 'Argentina Standard Time' AS DATE)`.
- **Corregido:** `ObtenerEstadisticasDelDia()` — mismo fix de fecha que el punto anterior. Además, `GROUP BY id_medico, Fecha, estado` corregido a `GROUP BY id_medico, Fecha` (incluir `estado` en el GROUP BY hacía que la CTE generara una fila por cada estado en lugar de una fila por médico, rompiendo los SUM).
- **Corregido:** `ObtenerEstadisticasDelDiaMedico()` — mismos fixes de fecha y GROUP BY.

### `Negocios/TurnosNegocio.cs`
- **Agregado:** Wrapper `ObtenerTurnosDelDiaAdmin()`.
- **Agregado:** Wrapper `ObtenerTurnosPorMedico(int idMedico)`.

### `REPORTE_SQL_INJECTION.md`
- **Eliminado:** Archivo de reporte de vulnerabilidades SQL Injection (187 líneas). El archivo documentaba 8 vulnerabilidades en Datos/ con sus correcciones sugeridas.

### `Vistas/Administracion/Inicio.aspx`
- **Eliminado:** Card de estadística "Médicos activos" del panel de admin.
- **Agregado:** Panel `pnlTurnosAdmin` con `rptTurnosAdmin` — tabla de turnos del día para el administrador con columnas: Paciente, Médico, Horario, Especialidad, Estado. Sin botones de acción.

### `Vistas/Administracion/Inicio.aspx.cs`
- **Modificado:** `CargarVistaAdmin()` — activa `pnlTurnosAdmin`, carga los turnos del día via `ObtenerTurnosDelDiaAdmin()` y los bindea a `rptTurnosAdmin`.
- **Eliminado:** Código comentado relacionado a `medicosActivos` (ya removida la stat card).

### `Vistas/Administracion/Inicio.aspx.designer.cs`
- **Agregado:** Declaración de `pnlTurnosAdmin` (Panel).
- **Agregado:** Declaración de `rptTurnosAdmin` (Repeater).

### `Vistas/Administracion/Turnos/tEditar.aspx`
- **Agregado:** Panel `pnlFechaHorario` envolviendo la sección de Fecha y Horario — permite ocultarla según rol.
- **Agregado:** Panel `pnlEstado` (Visible=false por defecto) envolviendo la sección de Estado.
- **Agregado:** Panel `pnlObservacion` (Visible=false por defecto) envolviendo la sección de Observaciones.
- **Agregado:** Notas descriptivas en secciones de Estado y Observaciones indicando que solo el médico asignado puede editarlas.
- **Corregido:** `txtFecha` ahora tiene `OnTextChanged="txtFecha_TextChanged"` activo (estaba comentado).
- **Corregido:** `btnCancelar` ahora tiene `OnClick="btnCancelar_Click"` (estaba desconectado).
- **Corregido:** `Button1` renombrado a `btnGuardar` con `OnClick="btnGuardar_Click"` (el control no tenía handler conectado).

### `Vistas/Administracion/Turnos/tEditar.aspx.cs`
- **Modificado:** Acceso a la página extendido a rol `"medico"` (antes solo `"admin"`).
- **Agregado:** Método `AplicarVisibilidad(bool esMedico, DateTime fechaTurno, string estadoOriginal)` — controla visibilidad de paneles según rol y fecha del turno:
  - Admin: puede editar Fecha/Horario solo si el turno es futuro o (pasado + pendiente).
  - Médico: puede editar Estado/Observación solo si el turno es de hoy o pasado.
  - Médico con turno futuro: no ve ningún campo editable, `btnGuardar` oculto.
- **Modificado:** `CargarDatosDelTurno()` — ahora recibe `Usuario` para verificar propiedad: si el usuario es médico y el turno no le pertenece, redirige a `tInicio.aspx`.
- **Agregado:** Almacenamiento en `ViewState["FechaTurno"]` y `ViewState["EstadoOriginal"]` para recuperar valores en postbacks.
- **Modificado:** `btnGuardar_Click` — lógica por rol: si `pnlFechaHorario.Visible`, usa la fecha/hora del formulario; si no, conserva la original. Si `pnlEstado.Visible`, usa el estado del formulario; si no, conserva el original.
- **Eliminado:** Imports no utilizados (`System.Collections.Generic`, `System.Linq`, `System.Web`, `System.Web.UI`).

### `Vistas/Administracion/Turnos/tEditar.aspx.designer.cs`
- **Agregado:** Declaraciones de `pnlFechaHorario` (Panel), `pnlEstado` (Panel), `pnlObservacion` (Panel), `btnGuardar` (Button).

### `Vistas/Administracion/Turnos/tInicio.aspx`
- **Agregado:** Panel `pnlFiltroEspecialidad` envolviendo el filtro de especialidad.
- **Agregado:** Panel `pnlFiltroDesde` envolviendo el filtro de fecha desde.
- **Agregado:** Panel `pnlFiltroHasta` envolviendo el filtro de fecha hasta.
- **Modificado:** Botón de borrar (`LinkButton`) ahora tiene `Visible='<%# EsAdmin() %>'` — solo visible para admin.

### `Vistas/Administracion/Turnos/tInicio.aspx.cs`
- **Agregado:** Método helper `EsAdmin()` — usado en data-binding del ASPX.
- **Modificado:** `Page_Load` — si el usuario es médico, oculta filtros de especialidad/fecha y el botón "Nuevo turno"; cambia el placeholder del buscador.
- **Modificado:** `CargarListadoDeTurnos()` — usa `ObtenerTurnosPorMedico()` para médico y `ListarTurnos()` para admin. Aplica filtros de rango de fechas (antes ignorados).

### `Vistas/Administracion/Turnos/tInicio.aspx.designer.cs`
- **Agregado:** Declaraciones de `pnlFiltroEspecialidad` (Panel), `pnlFiltroDesde` (Panel), `pnlFiltroHasta` (Panel).

---

## Estadísticas globales

| Autor | Commits | Archivos tocados | Líneas agregadas | Líneas eliminadas |
|-------|---------|-----------------|-----------------|-------------------|
| eastanganelli | 3 (+ 1 merge) | ~22 únicos | ~597 | ~434 |
| Rocio Giusto | 2 | 4 | +37 | -10 |
