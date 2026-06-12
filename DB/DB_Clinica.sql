USE master;
GO

IF DB_ID('DB_Clinica') IS NOT NULL
BEGIN
    ALTER DATABASE DB_Clinica SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DB_Clinica;
END
GO

CREATE DATABASE DB_Clinica
    COLLATE Modern_Spanish_CI_AI;
GO

USE DB_Clinica;
GO

USE DB_Clinica;
GO

IF OBJECT_ID('Provincia', 'U') IS NULL
    CREATE TABLE Provincia (
        id_provincia  INT          NOT NULL IDENTITY(1,1),
        nombre        NVARCHAR(80) NOT NULL,
        CONSTRAINT PK_Provincia        PRIMARY KEY (id_provincia),
        CONSTRAINT UQ_Provincia_Nombre UNIQUE (nombre)
    );
GO

IF OBJECT_ID('Localidad', 'U') IS NULL
    CREATE TABLE Localidad (
        id_localidad INT           NOT NULL IDENTITY(1,1),
        nombre       NVARCHAR(100) NOT NULL,
        id_provincia INT           NOT NULL,
        CONSTRAINT PK_Localidad   PRIMARY KEY (id_localidad),
        CONSTRAINT FK_Loc_Prov    FOREIGN KEY (id_provincia) REFERENCES Provincia(id_provincia),
        CONSTRAINT UQ_Loc_NomProv UNIQUE (nombre, id_provincia)
    );
GO

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_Localidad_Provincia'
               AND object_id = OBJECT_ID('Localidad'))
    CREATE INDEX IX_Localidad_Provincia ON Localidad(id_provincia);
GO

IF OBJECT_ID('Especialidad', 'U') IS NULL
    CREATE TABLE Especialidad (
        id_especialidad INT          NOT NULL IDENTITY(1,1),
        nombre          NVARCHAR(80) NOT NULL,
        CONSTRAINT PK_Especialidad        PRIMARY KEY (id_especialidad),
        CONSTRAINT UQ_Especialidad_Nombre UNIQUE (nombre)
    );
GO

IF OBJECT_ID('Persona', 'U') IS NULL
    CREATE TABLE Persona (
        id_persona       INT           NOT NULL IDENTITY(1,1),
        dni              NVARCHAR(15)  NOT NULL,
        nombre           NVARCHAR(80)  NOT NULL,
        apellido         NVARCHAR(80)  NOT NULL,
        sexo             CHAR(1)       NOT NULL,
        nacionalidad     NVARCHAR(50)  NOT NULL,
        fecha_nacimiento DATE          NOT NULL,
        direccion        NVARCHAR(150) NOT NULL,
        id_localidad     INT           NOT NULL,
        email            NVARCHAR(120) NOT NULL,
        telefono         NVARCHAR(30)  NOT NULL,
        CONSTRAINT PK_Persona      PRIMARY KEY (id_persona),
        CONSTRAINT UQ_Persona_DNI  UNIQUE (dni),
        CONSTRAINT CK_Persona_Sexo CHECK (sexo IN ('M','F','X')),
        CONSTRAINT FK_Per_Loc      FOREIGN KEY (id_localidad) REFERENCES Localidad(id_localidad)
    );
GO

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_Persona_DNI'
               AND object_id = OBJECT_ID('Persona'))
    CREATE INDEX IX_Persona_DNI ON Persona(dni);
GO

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_Persona_Apellido'
               AND object_id = OBJECT_ID('Persona'))
    CREATE INDEX IX_Persona_Apellido ON Persona(apellido);
GO

IF OBJECT_ID('Paciente', 'U') IS NULL
    CREATE TABLE Paciente (
        id_paciente INT NOT NULL,
        id_persona  INT NOT NULL,
        activo      BIT NOT NULL DEFAULT 1,
        CONSTRAINT PK_Paciente    PRIMARY KEY (id_paciente),
        CONSTRAINT FK_Pac_Persona FOREIGN KEY (id_persona) REFERENCES Persona(id_persona),
        CONSTRAINT UQ_Pac_Persona UNIQUE (id_persona)
    );
GO

IF OBJECT_ID('Medico', 'U') IS NULL
    CREATE TABLE Medico (
        id_medico       INT          NOT NULL IDENTITY(1,1),
        id_persona      INT          NOT NULL,
        legajo          NVARCHAR(20) NOT NULL,
        id_especialidad INT          NOT NULL,
        activo          BIT          NOT NULL DEFAULT 1,
        CONSTRAINT PK_Medico        PRIMARY KEY (id_medico),
        CONSTRAINT FK_Med_Persona   FOREIGN KEY (id_persona)      REFERENCES Persona(id_persona),
        CONSTRAINT FK_Med_Esp       FOREIGN KEY (id_especialidad) REFERENCES Especialidad(id_especialidad),
        CONSTRAINT UQ_Medico_Legajo UNIQUE (legajo),
        CONSTRAINT UQ_Med_Persona   UNIQUE (id_persona)
    );
GO

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_Medico_Especialidad'
               AND object_id = OBJECT_ID('Medico'))
    CREATE INDEX IX_Medico_Especialidad ON Medico(id_especialidad);
GO

IF OBJECT_ID('HorarioMedico', 'U') IS NULL
    CREATE TABLE HorarioMedico (
        id_horario  INT     NOT NULL IDENTITY(1,1),
        id_medico   INT     NOT NULL,
        dia_semana  TINYINT NOT NULL,
        hora_inicio TIME(0) NOT NULL,
        hora_fin    TIME(0) NOT NULL,
        CONSTRAINT PK_HorarioMedico       PRIMARY KEY (id_horario),
        CONSTRAINT FK_Hor_Med             FOREIGN KEY (id_medico) REFERENCES Medico(id_medico),
        CONSTRAINT CK_Hor_DiaSemana       CHECK (dia_semana BETWEEN 1 AND 7),
        CONSTRAINT CK_Hor_Horas           CHECK (hora_fin > hora_inicio),
        CONSTRAINT UQ_Hor_MedicoDiaInicio UNIQUE (id_medico, dia_semana, hora_inicio)
    );
GO

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_HorarioMedico_Medico'
               AND object_id = OBJECT_ID('HorarioMedico'))
    CREATE INDEX IX_HorarioMedico_Medico ON HorarioMedico(id_medico);
GO

IF OBJECT_ID('Usuario', 'U') IS NULL
    CREATE TABLE Usuario (
        id_usuario    INT           NOT NULL IDENTITY(1,1),
        username      NVARCHAR(60)  NOT NULL,
        password_hash NVARCHAR(256) NOT NULL,
        tipo          NVARCHAR(10)  NOT NULL,
        id_medico     INT           NULL,
        activo        BIT           NOT NULL DEFAULT 1,
        CONSTRAINT PK_Usuario            PRIMARY KEY (id_usuario),
        CONSTRAINT UQ_Usuario_Name       UNIQUE (username),
        CONSTRAINT CK_Usuario_Tipo       CHECK (tipo IN ('admin','medico')),
        CONSTRAINT CK_Usuario_Coherencia CHECK (
            (tipo = 'admin'  AND id_medico IS NULL) OR
            (tipo = 'medico' AND id_medico IS NOT NULL)
        ),
        CONSTRAINT FK_Usr_Med            FOREIGN KEY (id_medico) REFERENCES Medico(id_medico),
        CONSTRAINT UQ_Usr_Medico         UNIQUE (id_medico)
    );
GO

IF OBJECT_ID('Turno', 'U') IS NULL
    CREATE TABLE Turno (
        id_turno    INT           NOT NULL IDENTITY(1,1),
        id_medico   INT           NOT NULL,
        id_paciente INT           NOT NULL,
        fecha_hora  DATETIME      NOT NULL,
        estado      NVARCHAR(10)  NOT NULL DEFAULT 'pendiente',
        observacion NVARCHAR(500) NULL,
        activo      BIT           NOT NULL DEFAULT 1,
        CONSTRAINT PK_Turno             PRIMARY KEY (id_turno),
        CONSTRAINT CK_Turno_Estado      CHECK (estado IN ('pendiente','presente','ausente')),
        CONSTRAINT FK_Tur_Med           FOREIGN KEY (id_medico)   REFERENCES Medico(id_medico),
        CONSTRAINT FK_Tur_Pac           FOREIGN KEY (id_paciente) REFERENCES Paciente(id_paciente),
        CONSTRAINT UQ_Turno_MedicoFecha UNIQUE (id_medico, fecha_hora)
    );
GO

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_Turno_Paciente'
               AND object_id = OBJECT_ID('Turno'))
    CREATE INDEX IX_Turno_Paciente  ON Turno(id_paciente);
GO

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_Turno_FechaHora'
               AND object_id = OBJECT_ID('Turno'))
    CREATE INDEX IX_Turno_FechaHora ON Turno(fecha_hora);
GO

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_Turno_Estado'
               AND object_id = OBJECT_ID('Turno'))
    CREATE INDEX IX_Turno_Estado ON Turno(estado);
GO


IF NOT EXISTS (SELECT 1 FROM Provincia)
    INSERT INTO Provincia (nombre) VALUES
        ('Buenos Aires'),('CABA'),('Córdoba'),('Santa Fe'),
        ('Mendoza'),('Tucumán'),('Salta'),('Entre Ríos');
GO

IF NOT EXISTS (SELECT 1 FROM Localidad)
    INSERT INTO Localidad (nombre, id_provincia) VALUES
        ('General Pacheco',1),('Tigre',1),('San Isidro',1),
        ('Vicente López',1),('Palermo',2),('Caballito',2),
        ('Belgrano',2),('San Nicolás',2),('Córdoba Capital',3),
        ('Villa Carlos Paz',3),('Rosario',4),('Santa Fe Capital',4);
GO

IF NOT EXISTS (SELECT 1 FROM Especialidad)
    INSERT INTO Especialidad (nombre) VALUES
        ('Cardiología'),('Pediatría'),('Clínica Médica'),
        ('Traumatología'),('Ginecología'),('Dermatología'),
        ('Neurología'),('Oftalmología');
GO

IF NOT EXISTS (SELECT 1 FROM Usuario WHERE username = 'admin')
    INSERT INTO Usuario (username, password_hash, tipo, id_medico) VALUES
        ('admin', '$2b$12$PlaceholderHashDebeGenerarseDesdeApp', 'admin', NULL);
GO

USE DB_Clinica;
GO

DROP VIEW IF EXISTS vw_Pacientes;
GO

CREATE VIEW vw_Pacientes AS
    SELECT
        pa.id_paciente,
        pe.dni              AS DNI,
        pe.apellido         AS Apellido,
        pe.nombre           AS Nombre,
        pe.sexo             AS Sexo,
        pe.nacionalidad     AS Nacionalidad,
        pe.fecha_nacimiento AS FechaNacimiento,
        pe.direccion        AS Direccion,
        l.nombre            AS Localidad,
        pr.nombre           AS Provincia,
        pe.email            AS Email,
        pe.telefono         AS Telefono
    FROM  Paciente  pa
    JOIN  Persona   pe ON pe.id_persona   = pa.id_persona
    JOIN  Localidad l  ON l.id_localidad  = pe.id_localidad
    JOIN  Provincia pr ON pr.id_provincia = l.id_provincia
    WHERE pa.activo = 1;
GO

DROP VIEW IF EXISTS vw_Medicos;
GO

CREATE VIEW vw_Medicos AS
    SELECT
        m.id_medico,
        m.legajo            AS Legajo,
        pe.dni              AS DNI,
        pe.apellido         AS Apellido,
        pe.nombre           AS Nombre,
        pe.sexo             AS Sexo,
        pe.nacionalidad     AS Nacionalidad,
        pe.fecha_nacimiento AS FechaNacimiento,
        pe.direccion        AS Direccion,
        l.nombre            AS Localidad,
        pr.nombre           AS Provincia,
        pe.email            AS Email,
        pe.telefono         AS Telefono,
        e.nombre            AS Especialidad,
        u.username          AS Usuario,
        CASE WHEN u.id_usuario IS NOT NULL THEN 1 ELSE 0 END AS TieneAcceso
    FROM  Medico     m
    JOIN  Persona    pe ON pe.id_persona      = m.id_persona
    JOIN  Localidad  l  ON l.id_localidad     = pe.id_localidad
    JOIN  Provincia  pr ON pr.id_provincia    = l.id_provincia
    JOIN  Especialidad e ON e.id_especialidad = m.id_especialidad
    LEFT  JOIN Usuario u ON u.id_medico       = m.id_medico AND u.activo = 1
    WHERE m.activo = 1;
GO

DROP VIEW IF EXISTS vw_Turnos;
GO

CREATE VIEW vw_Turnos AS
    SELECT
        t.id_turno,
        t.fecha_hora                       AS FechaHora,
        CONVERT(DATE,    t.fecha_hora)     AS Fecha,
        CONVERT(TIME(0), t.fecha_hora)     AS Hora,
        t.estado                           AS Estado,
        t.observacion                      AS Observacion,
        m.id_medico,
        pem.apellido + ', ' + pem.nombre   AS Medico,
        e.nombre                           AS Especialidad,
        pa.id_paciente,
        pep.apellido + ', ' + pep.nombre   AS Paciente,
        pep.dni                            AS PacienteDNI
    FROM  Turno      t
    JOIN  Medico     m   ON m.id_medico       = t.id_medico
    JOIN  Persona    pem ON pem.id_persona    = m.id_persona
    JOIN  Especialidad e ON e.id_especialidad = m.id_especialidad
    JOIN  Paciente   pa  ON pa.id_paciente    = t.id_paciente
    JOIN  Persona    pep ON pep.id_persona    = pa.id_persona
    WHERE t.activo = 1;
GO

DROP VIEW IF EXISTS vw_HorariosMedicos;
GO

CREATE VIEW vw_HorariosMedicos AS
    SELECT
        h.id_horario,
        h.id_medico,
        pe.apellido + ', ' + pe.nombre AS Medico,
        e.nombre                        AS Especialidad,
        h.dia_semana                    AS DiaSemana,
        CASE h.dia_semana
            WHEN 1 THEN 'Lunes'     WHEN 2 THEN 'Martes'
            WHEN 3 THEN 'Miércoles' WHEN 4 THEN 'Jueves'
            WHEN 5 THEN 'Viernes'   WHEN 6 THEN 'Sábado'
            WHEN 7 THEN 'Domingo'
        END                             AS NombreDia,
        h.hora_inicio                   AS HoraInicio,
        h.hora_fin                      AS HoraFin
    FROM  HorarioMedico h
    JOIN  Medico        m  ON m.id_medico       = h.id_medico
    JOIN  Persona       pe ON pe.id_persona     = m.id_persona
    JOIN  Especialidad  e  ON e.id_especialidad = m.id_especialidad
    WHERE m.activo = 1;
GO

USE DB_Clinica;
GO

DROP PROCEDURE IF EXISTS sp_Login;
GO

CREATE PROCEDURE sp_Login
    @username NVARCHAR(60),
    @tipo     NVARCHAR(10) OUTPUT,
    @id_ref   INT          OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    SELECT @tipo   = u.tipo,
           @id_ref = u.id_medico
    FROM   Usuario u
    WHERE  u.username = @username
      AND  u.activo   = 1;
END;
GO

DROP PROCEDURE IF EXISTS sp_Paciente_Alta;
GO

CREATE PROCEDURE sp_Paciente_Alta
    @dni              NVARCHAR(15),
    @nombre           NVARCHAR(80),
    @apellido         NVARCHAR(80),
    @sexo             CHAR(1),
    @nacionalidad     NVARCHAR(50),
    @fecha_nacimiento DATE,
    @direccion        NVARCHAR(150),
    @id_localidad     INT,
    @email            NVARCHAR(120),
    @telefono         NVARCHAR(30),
    @nuevo_id         INT           OUTPUT,
    @mensaje          NVARCHAR(200) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    IF EXISTS (SELECT 1 FROM Persona WHERE dni = @dni)
    BEGIN
        SET @mensaje  = 'Ya existe una persona registrada con ese DNI.';
        SET @nuevo_id = -1;
        RETURN;
    END
    BEGIN TRANSACTION;
    BEGIN TRY
        INSERT INTO Persona
            (dni, nombre, apellido, sexo, nacionalidad,
             fecha_nacimiento, direccion, id_localidad, email, telefono)
        VALUES
            (@dni, @nombre, @apellido, @sexo, @nacionalidad,
             @fecha_nacimiento, @direccion, @id_localidad, @email, @telefono);
        SET @nuevo_id = SCOPE_IDENTITY();
        INSERT INTO Paciente (id_paciente, id_persona) VALUES (@nuevo_id, @nuevo_id);
        COMMIT TRANSACTION;
        SET @mensaje = 'Paciente agregado correctamente.';
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        SET @nuevo_id = -1;
        SET @mensaje  = ERROR_MESSAGE();
    END CATCH;
END;
GO

DROP PROCEDURE IF EXISTS sp_Paciente_Baja;
GO

CREATE PROCEDURE sp_Paciente_Baja
    @id_paciente INT,
    @mensaje     NVARCHAR(200) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    IF NOT EXISTS (SELECT 1 FROM Paciente WHERE id_paciente = @id_paciente AND activo = 1)
    BEGIN SET @mensaje = 'Paciente no encontrado o ya estaba inactivo.'; RETURN; END

    IF EXISTS (SELECT 1 FROM Turno
               WHERE id_paciente = @id_paciente
                 AND estado      = 'pendiente'
                 AND fecha_hora  > GETDATE()
                 AND activo      = 1)
    BEGIN SET @mensaje = 'El paciente tiene turnos futuros pendientes. Cancélelos antes de dar de baja.'; RETURN; END

    UPDATE Paciente SET activo = 0 WHERE id_paciente = @id_paciente;
    SET @mensaje = 'Paciente dado de baja correctamente.';
END;
GO

DROP PROCEDURE IF EXISTS sp_Paciente_Modificar;
GO

CREATE PROCEDURE sp_Paciente_Modificar
    @id_paciente      INT,
    @nombre           NVARCHAR(80)  = NULL,
    @apellido         NVARCHAR(80)  = NULL,
    @sexo             CHAR(1)       = NULL,
    @nacionalidad     NVARCHAR(50)  = NULL,
    @fecha_nacimiento DATE          = NULL,
    @direccion        NVARCHAR(150) = NULL,
    @id_localidad     INT           = NULL,
    @email            NVARCHAR(120) = NULL,
    @telefono         NVARCHAR(30)  = NULL,
    @mensaje          NVARCHAR(200) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE Persona SET
        nombre           = COALESCE(@nombre,           nombre),
        apellido         = COALESCE(@apellido,         apellido),
        sexo             = COALESCE(@sexo,             sexo),
        nacionalidad     = COALESCE(@nacionalidad,     nacionalidad),
        fecha_nacimiento = COALESCE(@fecha_nacimiento, fecha_nacimiento),
        direccion        = COALESCE(@direccion,        direccion),
        id_localidad     = COALESCE(@id_localidad,     id_localidad),
        email            = COALESCE(@email,            email),
        telefono         = COALESCE(@telefono,         telefono)
    WHERE id_persona = (SELECT id_persona FROM Paciente WHERE id_paciente = @id_paciente);

    IF @@ROWCOUNT = 0 SET @mensaje = 'Paciente no encontrado.';
    ELSE               SET @mensaje = 'Paciente modificado correctamente.';
END;
GO

DROP PROCEDURE IF EXISTS sp_Paciente_Listar;
GO

CREATE PROCEDURE sp_Paciente_Listar
    @busqueda     NVARCHAR(100) = NULL,
    @id_localidad INT           = NULL,
    @pagina       INT           = 1,
    @por_pagina   INT           = 10,
    @total_filas  INT           OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    SELECT @total_filas = COUNT(*)
    FROM   vw_Pacientes vp
    WHERE  (@busqueda IS NULL
            OR vp.Apellido LIKE '%' + @busqueda + '%'
            OR vp.Nombre   LIKE '%' + @busqueda + '%'
            OR vp.DNI      LIKE '%' + @busqueda + '%')
      AND  (@id_localidad IS NULL OR vp.id_paciente IN (
                SELECT pa.id_paciente FROM Paciente pa
                JOIN Persona pe ON pe.id_persona = pa.id_persona
                WHERE pe.id_localidad = @id_localidad));

    SELECT *
    FROM   vw_Pacientes vp
    WHERE  (@busqueda IS NULL
            OR vp.Apellido LIKE '%' + @busqueda + '%'
            OR vp.Nombre   LIKE '%' + @busqueda + '%'
            OR vp.DNI      LIKE '%' + @busqueda + '%')
      AND  (@id_localidad IS NULL OR vp.id_paciente IN (
                SELECT pa.id_paciente FROM Paciente pa
                JOIN Persona pe ON pe.id_persona = pa.id_persona
                WHERE pe.id_localidad = @id_localidad))
    ORDER  BY vp.Apellido, vp.Nombre
    OFFSET (@pagina - 1) * @por_pagina ROWS
    FETCH  NEXT @por_pagina ROWS ONLY;
END;
GO

DROP PROCEDURE IF EXISTS sp_Medico_Alta;
GO

CREATE PROCEDURE sp_Medico_Alta
    @legajo           NVARCHAR(20),
    @dni              NVARCHAR(15),
    @nombre           NVARCHAR(80),
    @apellido         NVARCHAR(80),
    @sexo             CHAR(1),
    @nacionalidad     NVARCHAR(50),
    @fecha_nacimiento DATE,
    @direccion        NVARCHAR(150),
    @id_localidad     INT,
    @email            NVARCHAR(120),
    @telefono         NVARCHAR(30),
    @id_especialidad  INT,
    @nuevo_id         INT           OUTPUT,
    @mensaje          NVARCHAR(200) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    IF EXISTS (SELECT 1 FROM Persona WHERE dni = @dni)
    BEGIN SET @mensaje = 'Ya existe una persona registrada con ese DNI.'; SET @nuevo_id = -1; RETURN; END
    IF EXISTS (SELECT 1 FROM Medico WHERE legajo = @legajo AND activo = 1)
    BEGIN SET @mensaje = 'Ya existe un médico activo con ese legajo.';   SET @nuevo_id = -1; RETURN; END

    BEGIN TRANSACTION;
    BEGIN TRY
        INSERT INTO Persona
            (dni, nombre, apellido, sexo, nacionalidad,
             fecha_nacimiento, direccion, id_localidad, email, telefono)
        VALUES
            (@dni, @nombre, @apellido, @sexo, @nacionalidad,
             @fecha_nacimiento, @direccion, @id_localidad, @email, @telefono);
        SET @nuevo_id = SCOPE_IDENTITY();
        INSERT INTO Medico (id_persona, legajo, id_especialidad)
        VALUES (@nuevo_id, @legajo, @id_especialidad);
        SET @nuevo_id = SCOPE_IDENTITY();
        COMMIT TRANSACTION;
        SET @mensaje = 'Médico agregado correctamente.';
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        SET @nuevo_id = -1;
        SET @mensaje  = ERROR_MESSAGE();
    END CATCH;
END;
GO

DROP PROCEDURE IF EXISTS sp_Medico_Baja;
GO

CREATE PROCEDURE sp_Medico_Baja
    @id_medico INT,
    @mensaje   NVARCHAR(200) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    IF EXISTS (SELECT 1 FROM Turno
               WHERE id_medico = @id_medico AND estado = 'pendiente'
                 AND fecha_hora > GETDATE() AND activo = 1)
    BEGIN SET @mensaje = 'El médico tiene turnos pendientes futuros.'; RETURN; END

    UPDATE Medico  SET activo = 0 WHERE id_medico = @id_medico;
    UPDATE Usuario SET activo = 0 WHERE id_medico = @id_medico;
    SET @mensaje = 'Médico dado de baja correctamente.';
END;
GO

DROP PROCEDURE IF EXISTS sp_Medico_Modificar;
GO

CREATE PROCEDURE sp_Medico_Modificar
    @id_medico        INT,
    @nombre           NVARCHAR(80)  = NULL,
    @apellido         NVARCHAR(80)  = NULL,
    @sexo             CHAR(1)       = NULL,
    @nacionalidad     NVARCHAR(50)  = NULL,
    @fecha_nacimiento DATE          = NULL,
    @direccion        NVARCHAR(150) = NULL,
    @id_localidad     INT           = NULL,
    @email            NVARCHAR(120) = NULL,
    @telefono         NVARCHAR(30)  = NULL,
    @legajo           NVARCHAR(20)  = NULL,
    @id_especialidad  INT           = NULL,
    @mensaje          NVARCHAR(200) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE Persona SET
        nombre           = COALESCE(@nombre,           nombre),
        apellido         = COALESCE(@apellido,         apellido),
        sexo             = COALESCE(@sexo,             sexo),
        nacionalidad     = COALESCE(@nacionalidad,     nacionalidad),
        fecha_nacimiento = COALESCE(@fecha_nacimiento, fecha_nacimiento),
        direccion        = COALESCE(@direccion,        direccion),
        id_localidad     = COALESCE(@id_localidad,     id_localidad),
        email            = COALESCE(@email,            email),
        telefono         = COALESCE(@telefono,         telefono)
    WHERE id_persona = (SELECT id_persona FROM Medico WHERE id_medico = @id_medico);

    UPDATE Medico SET
        legajo          = COALESCE(@legajo,          legajo),
        id_especialidad = COALESCE(@id_especialidad, id_especialidad)
    WHERE id_medico = @id_medico AND activo = 1;

    IF @@ROWCOUNT = 0 SET @mensaje = 'Médico no encontrado.';
    ELSE               SET @mensaje = 'Médico modificado correctamente.';
END;
GO

DROP PROCEDURE IF EXISTS sp_Medico_Listar;
GO

CREATE PROCEDURE sp_Medico_Listar
    @busqueda        NVARCHAR(100) = NULL,
    @id_especialidad INT           = NULL,
    @pagina          INT           = 1,
    @por_pagina      INT           = 10,
    @total_filas     INT           OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    SELECT @total_filas = COUNT(*)
    FROM   vw_Medicos vm
    WHERE  (@busqueda IS NULL
            OR vm.Apellido LIKE '%' + @busqueda + '%'
            OR vm.Nombre   LIKE '%' + @busqueda + '%'
            OR vm.DNI      LIKE '%' + @busqueda + '%'
            OR vm.Legajo   LIKE '%' + @busqueda + '%')
      AND  (@id_especialidad IS NULL OR vm.id_medico IN (
                SELECT id_medico FROM Medico WHERE id_especialidad = @id_especialidad));

    SELECT *
    FROM   vw_Medicos vm
    WHERE  (@busqueda IS NULL
            OR vm.Apellido LIKE '%' + @busqueda + '%'
            OR vm.Nombre   LIKE '%' + @busqueda + '%'
            OR vm.DNI      LIKE '%' + @busqueda + '%'
            OR vm.Legajo   LIKE '%' + @busqueda + '%')
      AND  (@id_especialidad IS NULL OR vm.id_medico IN (
                SELECT id_medico FROM Medico WHERE id_especialidad = @id_especialidad))
    ORDER  BY vm.Apellido, vm.Nombre
    OFFSET (@pagina - 1) * @por_pagina ROWS
    FETCH  NEXT @por_pagina ROWS ONLY;
END;
GO

DROP PROCEDURE IF EXISTS sp_Usuario_Medico_Guardar;
GO

CREATE PROCEDURE sp_Usuario_Medico_Guardar
    @id_medico     INT,
    @username      NVARCHAR(60),
    @password_hash NVARCHAR(256),
    @mensaje       NVARCHAR(200) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    IF EXISTS (SELECT 1 FROM Usuario
               WHERE username  = @username
                 AND (id_medico <> @id_medico OR id_medico IS NULL))
    BEGIN SET @mensaje = 'El nombre de usuario ya está en uso.'; RETURN; END

    IF EXISTS (SELECT 1 FROM Usuario WHERE id_medico = @id_medico)
        UPDATE Usuario
           SET username = @username, password_hash = @password_hash, activo = 1
         WHERE id_medico = @id_medico;
    ELSE
        INSERT INTO Usuario (username, password_hash, tipo, id_medico)
        VALUES (@username, @password_hash, 'medico', @id_medico);

    SET @mensaje = 'Usuario guardado correctamente.';
END;
GO

DROP PROCEDURE IF EXISTS sp_Turno_Asignar;
GO

CREATE PROCEDURE sp_Turno_Asignar
    @id_medico   INT,
    @id_paciente INT,
    @fecha_hora  DATETIME,
    @nuevo_id    INT           OUTPUT,
    @mensaje     NVARCHAR(200) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    IF EXISTS (SELECT 1 FROM Turno
               WHERE id_medico  = @id_medico
                 AND fecha_hora = @fecha_hora
                 AND activo     = 1)
    BEGIN
        SET @mensaje  = 'El médico ya tiene un turno asignado en ese horario.';
        SET @nuevo_id = -1;
        RETURN;
    END
    INSERT INTO Turno (id_medico, id_paciente, fecha_hora)
    VALUES (@id_medico, @id_paciente, @fecha_hora);
    SET @nuevo_id = SCOPE_IDENTITY();
    SET @mensaje  = 'Turno asignado correctamente.';
END;
GO

DROP PROCEDURE IF EXISTS sp_Turno_Cancelar;
GO

CREATE PROCEDURE sp_Turno_Cancelar
    @id_turno INT,
    @mensaje  NVARCHAR(200) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE Turno SET activo = 0
    WHERE id_turno = @id_turno AND estado = 'pendiente' AND activo = 1;
    IF @@ROWCOUNT = 0
        SET @mensaje = 'El turno no existe, ya fue cancelado o ya tiene asistencia cargada.';
    ELSE
        SET @mensaje = 'Turno cancelado correctamente.';
END;
GO

DROP PROCEDURE IF EXISTS sp_Turno_ListarPorMedico;
GO

CREATE PROCEDURE sp_Turno_ListarPorMedico
    @id_medico   INT,
    @busqueda    NVARCHAR(100) = NULL,
    @estado      NVARCHAR(10)  = NULL,
    @fecha_desde DATE          = NULL,
    @fecha_hasta DATE          = NULL,
    @pagina      INT           = 1,
    @por_pagina  INT           = 10,
    @total_filas INT           OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    SELECT @total_filas = COUNT(*)
    FROM   vw_Turnos vt
    WHERE  vt.id_medico = @id_medico
      AND  (@busqueda IS NULL
            OR vt.Paciente    LIKE '%' + @busqueda + '%'
            OR vt.PacienteDNI LIKE '%' + @busqueda + '%')
      AND  (@estado      IS NULL OR vt.Estado = @estado)
      AND  (@fecha_desde IS NULL OR vt.Fecha >= @fecha_desde)
      AND  (@fecha_hasta IS NULL OR vt.Fecha <= @fecha_hasta);

    SELECT *
    FROM   vw_Turnos vt
    WHERE  vt.id_medico = @id_medico
      AND  (@busqueda IS NULL
            OR vt.Paciente    LIKE '%' + @busqueda + '%'
            OR vt.PacienteDNI LIKE '%' + @busqueda + '%')
      AND  (@estado      IS NULL OR vt.Estado = @estado)
      AND  (@fecha_desde IS NULL OR vt.Fecha >= @fecha_desde)
      AND  (@fecha_hasta IS NULL OR vt.Fecha <= @fecha_hasta)
    ORDER  BY vt.FechaHora
    OFFSET (@pagina - 1) * @por_pagina ROWS
    FETCH  NEXT @por_pagina ROWS ONLY;
END;
GO

DROP PROCEDURE IF EXISTS sp_Turno_RegistrarEstado;
GO

CREATE PROCEDURE sp_Turno_RegistrarEstado
    @id_turno    INT,
    @estado      NVARCHAR(10),
    @observacion NVARCHAR(500) = NULL,
    @mensaje     NVARCHAR(200) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    IF @estado = 'presente' AND (@observacion IS NULL OR LEN(LTRIM(@observacion)) = 0)
    BEGIN SET @mensaje = 'Los presentes requieren una observación de consulta.'; RETURN; END

    UPDATE Turno SET estado = @estado, observacion = @observacion
    WHERE  id_turno = @id_turno AND activo = 1 AND estado = 'pendiente';

    IF @@ROWCOUNT = 0
        SET @mensaje = 'No se pudo actualizar. El turno no existe o ya tiene estado cargado.';
    ELSE
        SET @mensaje = 'Estado del turno registrado correctamente.';
END;
GO

DROP PROCEDURE IF EXISTS sp_Informe_Asistencia;
GO

CREATE PROCEDURE sp_Informe_Asistencia
    @fecha_desde DATE,
    @fecha_hasta DATE
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        COUNT(*)                                                AS TotalTurnos,
        SUM(CASE WHEN Estado = 'presente'  THEN 1 ELSE 0 END)  AS TotalPresentes,
        SUM(CASE WHEN Estado = 'ausente'   THEN 1 ELSE 0 END)  AS TotalAusentes,
        SUM(CASE WHEN Estado = 'pendiente' THEN 1 ELSE 0 END)  AS TotalPendientes,
        ROUND(100.0 * SUM(CASE WHEN Estado = 'presente' THEN 1 ELSE 0 END)
              / NULLIF(COUNT(*), 0), 2)                        AS PctPresentes,
        ROUND(100.0 * SUM(CASE WHEN Estado = 'ausente'  THEN 1 ELSE 0 END)
              / NULLIF(COUNT(*), 0), 2)                        AS PctAusentes
    FROM  vw_Turnos
    WHERE Fecha BETWEEN @fecha_desde AND @fecha_hasta;

    SELECT
        Paciente     AS NombrePaciente,
        PacienteDNI  AS DNI,
        Medico       AS Medico,
        Especialidad AS Especialidad,
        FechaHora    AS FechaHoraTurno
    FROM  vw_Turnos
    WHERE Fecha BETWEEN @fecha_desde AND @fecha_hasta
      AND Estado = 'ausente'
    ORDER BY FechaHora;

    SELECT
        Paciente     AS NombrePaciente,
        PacienteDNI  AS DNI,
        Medico       AS Medico,
        Especialidad AS Especialidad,
        FechaHora    AS FechaHoraTurno,
        Observacion  AS ObservacionConsulta
    FROM  vw_Turnos
    WHERE Fecha BETWEEN @fecha_desde AND @fecha_hasta
      AND Estado = 'presente'
    ORDER BY FechaHora;
END;
GO

DROP PROCEDURE IF EXISTS sp_Informe_CargaMedicos;
GO

CREATE PROCEDURE sp_Informe_CargaMedicos
    @fecha_desde DATE,
    @fecha_hasta DATE
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        pe.apellido + ', ' + pe.nombre                          AS Medico,
        e.nombre                                                AS Especialidad,
        COUNT(t.id_turno)                                       AS TotalTurnos,
        SUM(CASE WHEN t.estado = 'presente'  THEN 1 ELSE 0 END) AS Presentes,
        SUM(CASE WHEN t.estado = 'ausente'   THEN 1 ELSE 0 END) AS Ausentes,
        SUM(CASE WHEN t.estado = 'pendiente' THEN 1 ELSE 0 END) AS Pendientes,
        ROUND(100.0 * SUM(CASE WHEN t.estado = 'ausente' THEN 1 ELSE 0 END)
              / NULLIF(COUNT(t.id_turno), 0), 2)                AS PctAusentismo
    FROM  Turno      t
    JOIN  Medico     m  ON m.id_medico        = t.id_medico
    JOIN  Persona    pe ON pe.id_persona      = m.id_persona
    JOIN  Especialidad e ON e.id_especialidad = m.id_especialidad
    WHERE CONVERT(DATE, t.fecha_hora) BETWEEN @fecha_desde AND @fecha_hasta
      AND t.activo = 1
    GROUP BY m.id_medico, pe.apellido, pe.nombre, e.nombre
    ORDER BY TotalTurnos DESC;
END;
GO