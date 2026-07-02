# Reporte de Vulnerabilidades SQL Injection
**Proyecto:** TPINT_GRUPO_5_PR3  
**Fecha:** 2026-07-01  
**Vulnerabilidades encontradas:** 8

---

## Resumen

| Archivo | Línea | Severidad | Tipo |
|---------|-------|-----------|------|
| `Datos/Localidades.cs` | 35 | CRITICO | Interpolación de string con texto |
| `Datos/Turnos.cs` | 98 | CRITICO | Concatenación desde QueryString |
| `Datos/Localidades.cs` | 30 | ALTO | Interpolación numérica |
| `Datos/Medicos.cs` | 148 | ALTO | Concatenación numérica |
| `Datos/HorariosMedicos.cs` | 10 | ALTO | Interpolación numérica |
| `Datos/Turnos.cs` | 15 | ALTO | Doble interpolación numérica |
| `Datos/Usuarios.cs` | 123-133 | MEDIO | Paginación interpolada |
| `Datos/Medicos.cs` | 57 | MEDIO | Paginación interpolada |

---

## Vulnerabilidades Detalladas

### [CRITICO] `Datos/Localidades.cs` — Línea 35

**Código vulnerable:**
```csharp
string consulta = $"SELECT * FROM Localidad WHERE id_provincia = (SELECT id_provincia FROM Provincia WHERE nombre = '{nombreProvincia}') ORDER BY nombre";
```

**Riesgo:** El parámetro `nombreProvincia` se interpola directamente como string con comillas. Un atacante puede inyectar `'; DROP TABLE Localidad--` u otras sentencias arbitrarias.

**Corrección:**
```csharp
string consulta = "SELECT * FROM Localidad WHERE id_provincia = (SELECT id_provincia FROM Provincia WHERE nombre = @nombre) ORDER BY nombre";
cmd.Parameters.AddWithValue("@nombre", nombreProvincia);
```

---

### [CRITICO] `Datos/Turnos.cs` — Línea 98

**Código vulnerable:**
```csharp
string consulta = "SELECT t.id_turno, t.fecha_hora, t.observacion, " +
                  "..." +
                  "WHERE t.id_turno = " + idTurno;
```

**Riesgo:** `idTurno` proviene de `Request.QueryString["id"]` (ver `tVer.aspx.cs:20`), entrada directa del usuario. Inyección completa sin ninguna sanitización.

**Corrección:**
```csharp
string consulta = "SELECT t.id_turno, t.fecha_hora, t.observacion, " +
                  "... " +
                  "WHERE t.id_turno = @idTurno";
cmd.Parameters.AddWithValue("@idTurno", idTurno);
```

---

### [ALTO] `Datos/Localidades.cs` — Línea 30

**Código vulnerable:**
```csharp
string consulta = $"SELECT * FROM Localidad WHERE id_provincia = {id_Provincia} ORDER BY nombre";
```

**Riesgo:** Interpolación numérica. Aunque `id_Provincia` sea `int`, si el valor proviene de un control de UI manipulable, permite inyección por parameter tampering.

**Corrección:**
```csharp
string consulta = "SELECT * FROM Localidad WHERE id_provincia = @idProvincia ORDER BY nombre";
cmd.Parameters.AddWithValue("@idProvincia", id_Provincia);
```

---

### [ALTO] `Datos/Medicos.cs` — Línea 148

**Código vulnerable:**
```csharp
string consulta = "SELECT id_medico, (Apellido + ', ' + Nombre) AS MedicoCompleto " +
                  "FROM vw_Medicos " +
                  "WHERE id_especialidad = " + idEspecialidad + " AND activo = 1";
```

**Riesgo:** Concatenación directa con `idEspecialidad`, típicamente proveniente de un `DropDownList` o URL. Manipulable desde el cliente.

**Corrección:**
```csharp
string consulta = "SELECT id_medico, (Apellido + ', ' + Nombre) AS MedicoCompleto " +
                  "FROM vw_Medicos WHERE id_especialidad = @idEsp AND activo = 1";
cmd.Parameters.AddWithValue("@idEsp", idEspecialidad);
```

---

### [ALTO] `Datos/HorariosMedicos.cs` — Línea 10

**Código vulnerable:**
```csharp
string consulta = $"SELECT * FROM vw_HorariosMedicos WHERE id_medico = {id_medico}";
```

**Riesgo:** Interpolación de `id_medico` directamente en la consulta.

**Corrección:**
```csharp
string consulta = "SELECT * FROM vw_HorariosMedicos WHERE id_medico = @idMedico";
cmd.Parameters.AddWithValue("@idMedico", id_medico);
```

---

### [ALTO] `Datos/Turnos.cs` — Línea 15

**Código vulnerable:**
```csharp
string consulta = $"SELECT TOP ({top_limite}) * FROM vw_Turnos WHERE id_medico = {id_medico} ORDER BY FechaHora DESC";
```

**Riesgo:** Dos interpolaciones numéricas. Ambos parámetros son controlables desde la capa de presentación.

**Corrección:**
```csharp
string consulta = "SELECT TOP (@top) * FROM vw_Turnos WHERE id_medico = @idMedico ORDER BY FechaHora DESC";
cmd.Parameters.AddWithValue("@top", top_limite);
cmd.Parameters.AddWithValue("@idMedico", id_medico);
```

---

### [MEDIO] `Datos/Usuarios.cs` — Líneas 123-133

**Código vulnerable:**
```csharp
// ... OFFSET {offset} ROWS FETCH NEXT {cantidad_pagina} ROWS ONLY
```

**Riesgo:** Interpolación en cláusulas de paginación. Aunque sean valores numéricos internos, sigue siendo práctica insegura.

**Corrección:**
```csharp
"OFFSET @offset ROWS FETCH NEXT @cantidad ROWS ONLY"
cmd.Parameters.AddWithValue("@offset", offset);
cmd.Parameters.AddWithValue("@cantidad", cantidad_pagina);
```

---

### [MEDIO] `Datos/Medicos.cs` — Línea 57

**Código vulnerable:**
```csharp
string consulta = $"SELECT * FROM vw_Medicos ORDER BY id_medico ASC OFFSET ({nro_pagina} - 1) * {cantidad_pagina} ROWS FETCH NEXT {cantidad_pagina} ROWS ONLY;";
```

**Riesgo:** Múltiples interpolaciones en paginación. La expresión aritmética dentro del SQL también es una mala práctica.

**Corrección:**
```csharp
int offset = (nro_pagina - 1) * cantidad_pagina;
string consulta = "SELECT * FROM vw_Medicos ORDER BY id_medico ASC OFFSET @offset ROWS FETCH NEXT @cantidad ROWS ONLY";
cmd.Parameters.AddWithValue("@offset", offset);
cmd.Parameters.AddWithValue("@cantidad", cantidad_pagina);
```

---

## Regla General

**Nunca** construir consultas SQL con interpolación (`$"...{var}..."`) ni concatenación (`"..." + var`).

**Siempre** usar parámetros nombrados:

```csharp
// INCORRECTO
string sql = $"SELECT * FROM Tabla WHERE id = {id}";

// CORRECTO
string sql = "SELECT * FROM Tabla WHERE id = @id";
cmd.Parameters.AddWithValue("@id", id);
```

Esto aplica para **todos** los valores externos: IDs numéricos, strings, fechas, valores de paginación y cualquier dato proveniente de controles de UI, QueryString o Session.
