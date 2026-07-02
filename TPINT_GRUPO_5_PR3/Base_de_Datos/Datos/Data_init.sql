/* ===================================================================
   DATOS DE PRUEBA - DB_Clinica
   =================================================================== */
USE [DB_Clinica];
GO

-- =====================  1) PROVINCIA (precargada)  =====================
SET IDENTITY_INSERT [dbo].[Provincia] ON;
INSERT INTO [dbo].[Provincia] (id_provincia, nombre) VALUES (1, N'Buenos Aires');
INSERT INTO [dbo].[Provincia] (id_provincia, nombre) VALUES (2, N'Ciudad Autónoma de Buenos Aires');
INSERT INTO [dbo].[Provincia] (id_provincia, nombre) VALUES (3, N'Catamarca');
INSERT INTO [dbo].[Provincia] (id_provincia, nombre) VALUES (4, N'Chaco');
INSERT INTO [dbo].[Provincia] (id_provincia, nombre) VALUES (5, N'Chubut');
INSERT INTO [dbo].[Provincia] (id_provincia, nombre) VALUES (6, N'Córdoba');
INSERT INTO [dbo].[Provincia] (id_provincia, nombre) VALUES (7, N'Corrientes');
INSERT INTO [dbo].[Provincia] (id_provincia, nombre) VALUES (8, N'Entre Ríos');
INSERT INTO [dbo].[Provincia] (id_provincia, nombre) VALUES (9, N'Formosa');
INSERT INTO [dbo].[Provincia] (id_provincia, nombre) VALUES (10, N'Jujuy');
INSERT INTO [dbo].[Provincia] (id_provincia, nombre) VALUES (11, N'La Pampa');
INSERT INTO [dbo].[Provincia] (id_provincia, nombre) VALUES (12, N'La Rioja');
INSERT INTO [dbo].[Provincia] (id_provincia, nombre) VALUES (13, N'Mendoza');
INSERT INTO [dbo].[Provincia] (id_provincia, nombre) VALUES (14, N'Misiones');
INSERT INTO [dbo].[Provincia] (id_provincia, nombre) VALUES (15, N'Neuquén');
INSERT INTO [dbo].[Provincia] (id_provincia, nombre) VALUES (16, N'Río Negro');
INSERT INTO [dbo].[Provincia] (id_provincia, nombre) VALUES (17, N'Salta');
INSERT INTO [dbo].[Provincia] (id_provincia, nombre) VALUES (18, N'San Juan');
INSERT INTO [dbo].[Provincia] (id_provincia, nombre) VALUES (19, N'San Luis');
INSERT INTO [dbo].[Provincia] (id_provincia, nombre) VALUES (20, N'Santa Cruz');
INSERT INTO [dbo].[Provincia] (id_provincia, nombre) VALUES (21, N'Santa Fe');
INSERT INTO [dbo].[Provincia] (id_provincia, nombre) VALUES (22, N'Santiago del Estero');
INSERT INTO [dbo].[Provincia] (id_provincia, nombre) VALUES (23, N'Tierra del Fuego');
INSERT INTO [dbo].[Provincia] (id_provincia, nombre) VALUES (24, N'Tucumán');
SET IDENTITY_INSERT [dbo].[Provincia] OFF;
GO

-- =====================  2) LOCALIDAD (precargada)  =====================
SET IDENTITY_INSERT [dbo].[Localidad] ON;
INSERT INTO [dbo].[Localidad] (id_localidad, nombre, id_provincia) VALUES (1, N'La Plata', 1);
INSERT INTO [dbo].[Localidad] (id_localidad, nombre, id_provincia) VALUES (2, N'Mar del Plata', 1);
INSERT INTO [dbo].[Localidad] (id_localidad, nombre, id_provincia) VALUES (3, N'Tigre', 1);
INSERT INTO [dbo].[Localidad] (id_localidad, nombre, id_provincia) VALUES (4, N'Bahía Blanca', 1);
INSERT INTO [dbo].[Localidad] (id_localidad, nombre, id_provincia) VALUES (5, N'Palermo', 2);
INSERT INTO [dbo].[Localidad] (id_localidad, nombre, id_provincia) VALUES (6, N'Recoleta', 2);
INSERT INTO [dbo].[Localidad] (id_localidad, nombre, id_provincia) VALUES (7, N'Belgrano', 2);
INSERT INTO [dbo].[Localidad] (id_localidad, nombre, id_provincia) VALUES (8, N'Córdoba Capital', 6);
INSERT INTO [dbo].[Localidad] (id_localidad, nombre, id_provincia) VALUES (9, N'Villa Carlos Paz', 6);
INSERT INTO [dbo].[Localidad] (id_localidad, nombre, id_provincia) VALUES (10, N'Rosario', 21);
INSERT INTO [dbo].[Localidad] (id_localidad, nombre, id_provincia) VALUES (11, N'Santa Fe Capital', 21);
INSERT INTO [dbo].[Localidad] (id_localidad, nombre, id_provincia) VALUES (12, N'Mendoza Capital', 13);
INSERT INTO [dbo].[Localidad] (id_localidad, nombre, id_provincia) VALUES (13, N'San Rafael', 13);
INSERT INTO [dbo].[Localidad] (id_localidad, nombre, id_provincia) VALUES (14, N'San Miguel de Tucumán', 24);
INSERT INTO [dbo].[Localidad] (id_localidad, nombre, id_provincia) VALUES (15, N'Paraná', 8);
INSERT INTO [dbo].[Localidad] (id_localidad, nombre, id_provincia) VALUES (16, N'Concordia', 8);
INSERT INTO [dbo].[Localidad] (id_localidad, nombre, id_provincia) VALUES (17, N'Salta Capital', 17);
INSERT INTO [dbo].[Localidad] (id_localidad, nombre, id_provincia) VALUES (18, N'Posadas', 14);
INSERT INTO [dbo].[Localidad] (id_localidad, nombre, id_provincia) VALUES (19, N'Resistencia', 4);
INSERT INTO [dbo].[Localidad] (id_localidad, nombre, id_provincia) VALUES (20, N'Corrientes Capital', 7);
INSERT INTO [dbo].[Localidad] (id_localidad, nombre, id_provincia) VALUES (21, N'Santiago del Estero Capital', 22);
INSERT INTO [dbo].[Localidad] (id_localidad, nombre, id_provincia) VALUES (22, N'San Juan Capital', 18);
INSERT INTO [dbo].[Localidad] (id_localidad, nombre, id_provincia) VALUES (23, N'San Salvador de Jujuy', 10);
INSERT INTO [dbo].[Localidad] (id_localidad, nombre, id_provincia) VALUES (24, N'Bariloche', 16);
INSERT INTO [dbo].[Localidad] (id_localidad, nombre, id_provincia) VALUES (25, N'General Roca', 16);
INSERT INTO [dbo].[Localidad] (id_localidad, nombre, id_provincia) VALUES (26, N'Neuquén Capital', 15);
INSERT INTO [dbo].[Localidad] (id_localidad, nombre, id_provincia) VALUES (27, N'Formosa Capital', 9);
INSERT INTO [dbo].[Localidad] (id_localidad, nombre, id_provincia) VALUES (28, N'Comodoro Rivadavia', 5);
INSERT INTO [dbo].[Localidad] (id_localidad, nombre, id_provincia) VALUES (29, N'Trelew', 5);
INSERT INTO [dbo].[Localidad] (id_localidad, nombre, id_provincia) VALUES (30, N'San Luis Capital', 19);
INSERT INTO [dbo].[Localidad] (id_localidad, nombre, id_provincia) VALUES (31, N'Catamarca Capital', 3);
INSERT INTO [dbo].[Localidad] (id_localidad, nombre, id_provincia) VALUES (32, N'La Rioja Capital', 12);
INSERT INTO [dbo].[Localidad] (id_localidad, nombre, id_provincia) VALUES (33, N'Santa Rosa', 11);
INSERT INTO [dbo].[Localidad] (id_localidad, nombre, id_provincia) VALUES (34, N'Río Gallegos', 20);
INSERT INTO [dbo].[Localidad] (id_localidad, nombre, id_provincia) VALUES (35, N'Ushuaia', 23);
SET IDENTITY_INSERT [dbo].[Localidad] OFF;
GO

-- =====================  3) ESPECIALIDAD (precargada)  =====================
SET IDENTITY_INSERT [dbo].[Especialidad] ON;
INSERT INTO [dbo].[Especialidad] (id_especialidad, nombre) VALUES (1, N'Cardiología');
INSERT INTO [dbo].[Especialidad] (id_especialidad, nombre) VALUES (2, N'Dermatología');
INSERT INTO [dbo].[Especialidad] (id_especialidad, nombre) VALUES (3, N'Pediatría');
INSERT INTO [dbo].[Especialidad] (id_especialidad, nombre) VALUES (4, N'Traumatología y Ortopedia');
INSERT INTO [dbo].[Especialidad] (id_especialidad, nombre) VALUES (5, N'Ginecología y Obstetricia');
INSERT INTO [dbo].[Especialidad] (id_especialidad, nombre) VALUES (6, N'Neurología');
INSERT INTO [dbo].[Especialidad] (id_especialidad, nombre) VALUES (7, N'Oftalmología');
INSERT INTO [dbo].[Especialidad] (id_especialidad, nombre) VALUES (8, N'Otorrinolaringología');
INSERT INTO [dbo].[Especialidad] (id_especialidad, nombre) VALUES (9, N'Psiquiatría');
INSERT INTO [dbo].[Especialidad] (id_especialidad, nombre) VALUES (10, N'Endocrinología');
INSERT INTO [dbo].[Especialidad] (id_especialidad, nombre) VALUES (11, N'Gastroenterología');
INSERT INTO [dbo].[Especialidad] (id_especialidad, nombre) VALUES (12, N'Urología');
INSERT INTO [dbo].[Especialidad] (id_especialidad, nombre) VALUES (13, N'Clínica Médica');
INSERT INTO [dbo].[Especialidad] (id_especialidad, nombre) VALUES (14, N'Cirugía General');
INSERT INTO [dbo].[Especialidad] (id_especialidad, nombre) VALUES (15, N'Reumatología');
INSERT INTO [dbo].[Especialidad] (id_especialidad, nombre) VALUES (16, N'Nutrición');
INSERT INTO [dbo].[Especialidad] (id_especialidad, nombre) VALUES (17, N'Alergia e Inmunología');
INSERT INTO [dbo].[Especialidad] (id_especialidad, nombre) VALUES (18, N'Hematología');
SET IDENTITY_INSERT [dbo].[Especialidad] OFF;
GO

-- =====================  4) USUARIO administrador (precargado)  =====================
-- usuario: admin  /  password de prueba: Admin#2026
INSERT INTO [dbo].[Usuario] (username, [password], tipo, id_medico, activo) VALUES (N'admin', 'admin123', N'admin', NULL, 1);
-- usuario: administracion  /  password de prueba: Clinica#2026
INSERT INTO [dbo].[Usuario] (username, [password], tipo, id_medico, activo) VALUES (N'administracion', 'admin123', N'admin', NULL, 1);
-- usuario: supervisor  /  password de prueba: Super#2026
INSERT INTO [dbo].[Usuario] (username, [password], tipo, id_medico, activo) VALUES (N'supervisor', 'admin123', N'admin', NULL, 1);
GO

-- =====================  5) PACIENTES (vía sp_Paciente_Alta)  =====================
EXEC [dbo].[sp_Paciente_Alta]
    @dni              = N'29228452',
    @nombre           = N'Juan',
    @apellido         = N'Ortiz',
    @sexo             = 'M',
    @nacionalidad     = N'Argentina',
    @fecha_nacimiento = '1994-05-10',
    @direccion        = N'Mitre 1243',
    @id_localidad     = 7,
    @email            = N'juan.ortiz0@gmail.com',
    @telefono         = N'011-4604-7912';
PRINT N'Paciente Juan Ortiz -> OK.';
GO
EXEC [dbo].[sp_Paciente_Alta]
    @dni              = N'27336273',
    @nombre           = N'Juan',
    @apellido         = N'Gómez',
    @sexo             = 'M',
    @nacionalidad     = N'Argentina',
    @fecha_nacimiento = '1968-09-09',
    @direccion        = N'Av. Colón 317',
    @id_localidad     = 13,
    @email            = N'juan.gomez1@yahoo.com.ar',
    @telefono         = N'011-4225-8359';
PRINT N'Paciente Juan Gómez -> OK.';
GO
EXEC [dbo].[sp_Paciente_Alta]
    @dni              = N'20218062',
    @nombre           = N'Nicolás',
    @apellido         = N'Vázquez',
    @sexo             = 'X',
    @nacionalidad     = N'Brasileña',
    @fecha_nacimiento = '2013-05-23',
    @direccion        = N'Av. Hipólito Yrigoyen 1407',
    @id_localidad     = 28,
    @email            = N'nicolas.vazquez2@outlook.com',
    @telefono         = N'011-4284-3547';
PRINT N'Paciente Nicolás Vázquez -> OK.';
GO
EXEC [dbo].[sp_Paciente_Alta]
    @dni              = N'23429607',
    @nombre           = N'Agustina',
    @apellido         = N'Romero',
    @sexo             = 'F',
    @nacionalidad     = N'Argentina',
    @fecha_nacimiento = '1941-09-14',
    @direccion        = N'Av. Independencia 892',
    @id_localidad     = 23,
    @email            = N'agustina.romero3@outlook.com',
    @telefono         = N'011-4618-5333';
PRINT N'Paciente Agustina Romero -> OK.';
GO
EXEC [dbo].[sp_Paciente_Alta]
    @dni              = N'37992829',
    @nombre           = N'Leonardo',
    @apellido         = N'Ruiz',
    @sexo             = 'M',
    @nacionalidad     = N'Argentina',
    @fecha_nacimiento = '2024-05-01',
    @direccion        = N'Av. Corrientes 3200',
    @id_localidad     = 6,
    @email            = N'leonardo.ruiz4@outlook.com',
    @telefono         = N'011-4849-6925';
PRINT N'Paciente Leonardo Ruiz -> OK.';
GO
EXEC [dbo].[sp_Paciente_Alta]
    @dni              = N'22333883',
    @nombre           = N'Daniel',
    @apellido         = N'Castro',
    @sexo             = 'X',
    @nacionalidad     = N'Argentina',
    @fecha_nacimiento = '1995-03-24',
    @direccion        = N'Av. Libertador 1966',
    @id_localidad     = 19,
    @email            = N'daniel.castro5@gmail.com',
    @telefono         = N'011-4875-4814';
PRINT N'Paciente Daniel Castro -> OK.';
GO
EXEC [dbo].[sp_Paciente_Alta]
    @dni              = N'35213925',
    @nombre           = N'Daniel',
    @apellido         = N'García',
    @sexo             = 'M',
    @nacionalidad     = N'Paraguaya',
    @fecha_nacimiento = '1972-10-12',
    @direccion        = N'Lavalle 3088',
    @id_localidad     = 11,
    @email            = N'daniel.garcia6@outlook.com',
    @telefono         = N'011-4363-4432';
PRINT N'Paciente Daniel García -> OK.';
GO
EXEC [dbo].[sp_Paciente_Alta]
    @dni              = N'42936053',
    @nombre           = N'Yamila',
    @apellido         = N'Molina',
    @sexo             = 'F',
    @nacionalidad     = N'Paraguaya',
    @fecha_nacimiento = '1964-02-29',
    @direccion        = N'Av. Rivadavia 1501',
    @id_localidad     = 35,
    @email            = N'yamila.molina7@hotmail.com',
    @telefono         = N'011-4167-8573';
PRINT N'Paciente Yamila Molina -> OK.';
GO
EXEC [dbo].[sp_Paciente_Alta]
    @dni              = N'41474828',
    @nombre           = N'Gustavo',
    @apellido         = N'Molina',
    @sexo             = 'M',
    @nacionalidad     = N'Chilena',
    @fecha_nacimiento = '1974-05-18',
    @direccion        = N'Av. Colón 1899',
    @id_localidad     = 21,
    @email            = N'gustavo.molina8@gmail.com',
    @telefono         = N'011-4234-1525';
PRINT N'Paciente Gustavo Molina -> OK.';
GO
EXEC [dbo].[sp_Paciente_Alta]
    @dni              = N'22220921',
    @nombre           = N'Valeria',
    @apellido         = N'García',
    @sexo             = 'F',
    @nacionalidad     = N'Argentina',
    @fecha_nacimiento = '2003-12-06',
    @direccion        = N'Av. Corrientes 2677',
    @id_localidad     = 14,
    @email            = N'valeria.garcia9@yahoo.com.ar',
    @telefono         = N'011-4405-8517';
PRINT N'Paciente Valeria García -> OK.';
GO
EXEC [dbo].[sp_Paciente_Alta]
    @dni              = N'28275445',
    @nombre           = N'Gabriela',
    @apellido         = N'López',
    @sexo             = 'F',
    @nacionalidad     = N'Chilena',
    @fecha_nacimiento = '2024-11-30',
    @direccion        = N'Av. Colón 2252',
    @id_localidad     = 28,
    @email            = N'gabriela.lopez10@yahoo.com.ar',
    @telefono         = N'011-4370-4593';
PRINT N'Paciente Gabriela López -> OK.';
GO
EXEC [dbo].[sp_Paciente_Alta]
    @dni              = N'23050413',
    @nombre           = N'Lucía',
    @apellido         = N'Ramírez',
    @sexo             = 'F',
    @nacionalidad     = N'Brasileña',
    @fecha_nacimiento = '1991-10-29',
    @direccion        = N'Av. San Martín 998',
    @id_localidad     = 10,
    @email            = N'lucia.ramirez11@hotmail.com',
    @telefono         = N'011-4811-7916';
PRINT N'Paciente Lucía Ramírez -> OK.';
GO
EXEC [dbo].[sp_Paciente_Alta]
    @dni              = N'32805018',
    @nombre           = N'Sergio',
    @apellido         = N'Torres',
    @sexo             = 'X',
    @nacionalidad     = N'Boliviana',
    @fecha_nacimiento = '1988-11-13',
    @direccion        = N'Moreno 4434',
    @id_localidad     = 17,
    @email            = N'sergio.torres12@gmail.com',
    @telefono         = N'011-4696-2876';
PRINT N'Paciente Sergio Torres -> OK.';
GO
EXEC [dbo].[sp_Paciente_Alta]
    @dni              = N'45789893',
    @nombre           = N'Victoria',
    @apellido         = N'García',
    @sexo             = 'X',
    @nacionalidad     = N'Paraguaya',
    @fecha_nacimiento = '1935-09-07',
    @direccion        = N'25 de Mayo 1013',
    @id_localidad     = 19,
    @email            = N'victoria.garcia13@yahoo.com.ar',
    @telefono         = N'011-4161-8433';
PRINT N'Paciente Victoria García -> OK.';
GO
EXEC [dbo].[sp_Paciente_Alta]
    @dni              = N'44148476',
    @nombre           = N'Leonardo',
    @apellido         = N'Núñez',
    @sexo             = 'M',
    @nacionalidad     = N'Argentina',
    @fecha_nacimiento = '1940-10-11',
    @direccion        = N'Av. Colón 1563',
    @id_localidad     = 33,
    @email            = N'leonardo.nunez14@gmail.com',
    @telefono         = N'011-4891-5889';
PRINT N'Paciente Leonardo Núñez -> OK.';
GO
EXEC [dbo].[sp_Paciente_Alta]
    @dni              = N'25128434',
    @nombre           = N'Soledad',
    @apellido         = N'Martínez',
    @sexo             = 'X',
    @nacionalidad     = N'Argentina',
    @fecha_nacimiento = '2006-03-12',
    @direccion        = N'Av. Hipólito Yrigoyen 1423',
    @id_localidad     = 35,
    @email            = N'soledad.martinez15@gmail.com',
    @telefono         = N'011-4613-6310';
PRINT N'Paciente Soledad Martínez -> OK.';
GO
EXEC [dbo].[sp_Paciente_Alta]
    @dni              = N'32179613',
    @nombre           = N'Juan',
    @apellido         = N'Fernández',
    @sexo             = 'M',
    @nacionalidad     = N'Peruana',
    @fecha_nacimiento = '1988-02-27',
    @direccion        = N'Av. Hipólito Yrigoyen 2619',
    @id_localidad     = 16,
    @email            = N'juan.fernandez16@gmail.com',
    @telefono         = N'011-4246-2290';
PRINT N'Paciente Juan Fernández -> OK.';
GO
EXEC [dbo].[sp_Paciente_Alta]
    @dni              = N'22322386',
    @nombre           = N'Leonardo',
    @apellido         = N'Ramírez',
    @sexo             = 'M',
    @nacionalidad     = N'Brasileña',
    @fecha_nacimiento = '2017-08-25',
    @direccion        = N'Av. Colón 1130',
    @id_localidad     = 9,
    @email            = N'leonardo.ramirez17@yahoo.com.ar',
    @telefono         = N'011-4969-3705';
PRINT N'Paciente Leonardo Ramírez -> OK.';
GO
EXEC [dbo].[sp_Paciente_Alta]
    @dni              = N'40353914',
    @nombre           = N'Lucía',
    @apellido         = N'Aguirre',
    @sexo             = 'F',
    @nacionalidad     = N'Argentina',
    @fecha_nacimiento = '1956-05-17',
    @direccion        = N'Mitre 1747',
    @id_localidad     = 20,
    @email            = N'lucia.aguirre18@yahoo.com.ar',
    @telefono         = N'011-4687-7118';
PRINT N'Paciente Lucía Aguirre -> OK.';
GO
EXEC [dbo].[sp_Paciente_Alta]
    @dni              = N'24060227',
    @nombre           = N'Matías',
    @apellido         = N'Ruiz',
    @sexo             = 'M',
    @nacionalidad     = N'Argentina',
    @fecha_nacimiento = '1985-05-19',
    @direccion        = N'Mitre 624',
    @id_localidad     = 22,
    @email            = N'matias.ruiz19@gmail.com',
    @telefono         = N'011-4602-4770';
PRINT N'Paciente Matías Ruiz -> OK.';
GO
EXEC [dbo].[sp_Paciente_Alta]
    @dni              = N'22382132',
    @nombre           = N'Hernán',
    @apellido         = N'González',
    @sexo             = 'X',
    @nacionalidad     = N'Chilena',
    @fecha_nacimiento = '2018-08-22',
    @direccion        = N'Av. Libertador 582',
    @id_localidad     = 15,
    @email            = N'hernan.gonzalez20@gmail.com',
    @telefono         = N'011-4927-1514';
PRINT N'Paciente Hernán González -> OK.';
GO
EXEC [dbo].[sp_Paciente_Alta]
    @dni              = N'27986110',
    @nombre           = N'Ana',
    @apellido         = N'Flores',
    @sexo             = 'F',
    @nacionalidad     = N'Argentina',
    @fecha_nacimiento = '1963-10-04',
    @direccion        = N'Av. Libertador 4076',
    @id_localidad     = 14,
    @email            = N'ana.flores21@hotmail.com',
    @telefono         = N'011-4740-8744';
PRINT N'Paciente Ana Flores -> OK.';
GO
EXEC [dbo].[sp_Paciente_Alta]
    @dni              = N'33658665',
    @nombre           = N'Paula',
    @apellido         = N'Vázquez',
    @sexo             = 'F',
    @nacionalidad     = N'Argentina',
    @fecha_nacimiento = '1958-03-29',
    @direccion        = N'Av. Rivadavia 894',
    @id_localidad     = 28,
    @email            = N'paula.vazquez22@outlook.com',
    @telefono         = N'011-4433-7735';
PRINT N'Paciente Paula Vázquez -> OK.';
GO
EXEC [dbo].[sp_Paciente_Alta]
    @dni              = N'42594364',
    @nombre           = N'Leonardo',
    @apellido         = N'Rodríguez',
    @sexo             = 'M',
    @nacionalidad     = N'Paraguaya',
    @fecha_nacimiento = '2017-09-30',
    @direccion        = N'Av. Libertador 906',
    @id_localidad     = 4,
    @email            = N'leonardo.rodriguez23@yahoo.com.ar',
    @telefono         = N'011-4745-6559';
PRINT N'Paciente Leonardo Rodríguez -> OK.';
GO
EXEC [dbo].[sp_Paciente_Alta]
    @dni              = N'26382351',
    @nombre           = N'Eduardo',
    @apellido         = N'Martínez',
    @sexo             = 'M',
    @nacionalidad     = N'Uruguaya',
    @fecha_nacimiento = '2015-03-14',
    @direccion        = N'Moreno 1248',
    @id_localidad     = 28,
    @email            = N'eduardo.martinez24@hotmail.com',
    @telefono         = N'011-4285-8579';
PRINT N'Paciente Eduardo Martínez -> OK.';
GO

-- =====================  6) MEDICOS (vía sp_Medico_Alta)  =====================
DECLARE @nuevo_id_med INT, @msg_med NVARCHAR(200);
EXEC [dbo].[sp_Medico_Alta]
    @legajo           = N'MP 47832',
    @dni              = N'42656373',
    @nombre           = N'Gonzalo',
    @apellido         = N'Gómez',
    @sexo             = 'M',
    @nacionalidad     = N'Peruana',
    @fecha_nacimiento = '1969-07-07',
    @direccion        = N'Mitre 3407',
    @id_localidad     = 8,
    @email            = N'gonzalo.gomez0@hotmail.com',
    @telefono         = N'011-4592-1651',
    @id_especialidad  = 1,
    @nuevo_id         = @nuevo_id_med OUTPUT,
    @mensaje          = @msg_med OUTPUT;
PRINT N'Medico Gonzalo Gómez (MP 47832) -> ' + @msg_med;
GO
DECLARE @nuevo_id_med INT, @msg_med NVARCHAR(200);
EXEC [dbo].[sp_Medico_Alta]
    @legajo           = N'MN 58219',
    @dni              = N'39584792',
    @nombre           = N'Roberto',
    @apellido         = N'Suárez',
    @sexo             = 'M',
    @nacionalidad     = N'Boliviana',
    @fecha_nacimiento = '1984-09-29',
    @direccion        = N'Av. Colón 2691',
    @id_localidad     = 17,
    @email            = N'roberto.suarez1@hotmail.com',
    @telefono         = N'011-4685-6147',
    @id_especialidad  = 2,
    @nuevo_id         = @nuevo_id_med OUTPUT,
    @mensaje          = @msg_med OUTPUT;
PRINT N'Medico Roberto Suárez (MN 58219) -> ' + @msg_med;
GO
DECLARE @nuevo_id_med INT, @msg_med NVARCHAR(200);
EXEC [dbo].[sp_Medico_Alta]
    @legajo           = N'MP 63541',
    @dni              = N'24391546',
    @nombre           = N'Gustavo',
    @apellido         = N'Torres',
    @sexo             = 'M',
    @nacionalidad     = N'Paraguaya',
    @fecha_nacimiento = '1968-03-23',
    @direccion        = N'Av. Libertador 2557',
    @id_localidad     = 30,
    @email            = N'gustavo.torres2@outlook.com',
    @telefono         = N'011-4951-2188',
    @id_especialidad  = 3,
    @nuevo_id         = @nuevo_id_med OUTPUT,
    @mensaje          = @msg_med OUTPUT;
PRINT N'Medico Gustavo Torres (MP 63541) -> ' + @msg_med;
GO
DECLARE @nuevo_id_med INT, @msg_med NVARCHAR(200);
EXEC [dbo].[sp_Medico_Alta]
    @legajo           = N'MN 71023',
    @dni              = N'38890931',
    @nombre           = N'Hernán',
    @apellido         = N'Medina',
    @sexo             = 'M',
    @nacionalidad     = N'Argentina',
    @fecha_nacimiento = '1993-01-23',
    @direccion        = N'Av. Rivadavia 1846',
    @id_localidad     = 33,
    @email            = N'hernan.medina3@outlook.com',
    @telefono         = N'011-4135-6718',
    @id_especialidad  = 4,
    @nuevo_id         = @nuevo_id_med OUTPUT,
    @mensaje          = @msg_med OUTPUT;
PRINT N'Medico Hernán Medina (MN 71023) -> ' + @msg_med;
GO
DECLARE @nuevo_id_med INT, @msg_med NVARCHAR(200);
EXEC [dbo].[sp_Medico_Alta]
    @legajo           = N'MP 49876',
    @dni              = N'29562590',
    @nombre           = N'Eduardo',
    @apellido         = N'Sosa',
    @sexo             = 'M',
    @nacionalidad     = N'Argentina',
    @fecha_nacimiento = '1965-07-13',
    @direccion        = N'Moreno 2578',
    @id_localidad     = 34,
    @email            = N'eduardo.sosa4@gmail.com',
    @telefono         = N'011-4683-5905',
    @id_especialidad  = 5,
    @nuevo_id         = @nuevo_id_med OUTPUT,
    @mensaje          = @msg_med OUTPUT;
PRINT N'Medico Eduardo Sosa (MP 49876) -> ' + @msg_med;
GO
DECLARE @nuevo_id_med INT, @msg_med NVARCHAR(200);
EXEC [dbo].[sp_Medico_Alta]
    @legajo           = N'MN 35621',
    @dni              = N'23873143',
    @nombre           = N'Sergio',
    @apellido         = N'García',
    @sexo             = 'M',
    @nacionalidad     = N'Argentina',
    @fecha_nacimiento = '1957-08-04',
    @direccion        = N'Pellegrini 1373',
    @id_localidad     = 18,
    @email            = N'sergio.garcia5@outlook.com',
    @telefono         = N'011-4619-4450',
    @id_especialidad  = 6,
    @nuevo_id         = @nuevo_id_med OUTPUT,
    @mensaje          = @msg_med OUTPUT;
PRINT N'Medico Sergio García (MN 35621) -> ' + @msg_med;
GO
DECLARE @nuevo_id_med INT, @msg_med NVARCHAR(200);
EXEC [dbo].[sp_Medico_Alta]
    @legajo           = N'MP 82457',
    @dni              = N'41281494',
    @nombre           = N'Verónica',
    @apellido         = N'Suárez',
    @sexo             = 'F',
    @nacionalidad     = N'Peruana',
    @fecha_nacimiento = '1977-05-01',
    @direccion        = N'Sarmiento 4240',
    @id_localidad     = 32,
    @email            = N'veronica.suarez6@outlook.com',
    @telefono         = N'011-4927-1832',
    @id_especialidad  = 7,
    @nuevo_id         = @nuevo_id_med OUTPUT,
    @mensaje          = @msg_med OUTPUT;
PRINT N'Medico Verónica Suárez (MP 82457) -> ' + @msg_med;
GO
DECLARE @nuevo_id_med INT, @msg_med NVARCHAR(200);
EXEC [dbo].[sp_Medico_Alta]
    @legajo           = N'MN 91348',
    @dni              = N'29283847',
    @nombre           = N'Ezequiel',
    @apellido         = N'Álvarez',
    @sexo             = 'M',
    @nacionalidad     = N'Argentina',
    @fecha_nacimiento = '1982-07-08',
    @direccion        = N'Av. San Martín 2832',
    @id_localidad     = 9,
    @email            = N'ezequiel.alvarez7@outlook.com',
    @telefono         = N'011-4165-8239',
    @id_especialidad  = 8,
    @nuevo_id         = @nuevo_id_med OUTPUT,
    @mensaje          = @msg_med OUTPUT;
PRINT N'Medico Ezequiel Álvarez (MN 91348) -> ' + @msg_med;
GO
DECLARE @nuevo_id_med INT, @msg_med NVARCHAR(200);
EXEC [dbo].[sp_Medico_Alta]
    @legajo           = N'MP 54892',
    @dni              = N'23753864',
    @nombre           = N'Natalia',
    @apellido         = N'González',
    @sexo             = 'F',
    @nacionalidad     = N'Argentina',
    @fecha_nacimiento = '1979-02-22',
    @direccion        = N'Av. Corrientes 1321',
    @id_localidad     = 35,
    @email            = N'natalia.gonzalez8@gmail.com',
    @telefono         = N'011-4854-7049',
    @id_especialidad  = 9,
    @nuevo_id         = @nuevo_id_med OUTPUT,
    @mensaje          = @msg_med OUTPUT;
PRINT N'Medico Natalia González (MP 54892) -> ' + @msg_med;
GO
DECLARE @nuevo_id_med INT, @msg_med NVARCHAR(200);
EXEC [dbo].[sp_Medico_Alta]
    @legajo           = N'MN 67213',
    @dni              = N'21403543',
    @nombre           = N'Roberto',
    @apellido         = N'López',
    @sexo             = 'M',
    @nacionalidad     = N'Argentina',
    @fecha_nacimiento = '1986-04-03',
    @direccion        = N'25 de Mayo 426',
    @id_localidad     = 23,
    @email            = N'roberto.lopez9@hotmail.com',
    @telefono         = N'011-4698-5088',
    @id_especialidad  = 10,
    @nuevo_id         = @nuevo_id_med OUTPUT,
    @mensaje          = @msg_med OUTPUT;
PRINT N'Medico Roberto López (MN 67213) -> ' + @msg_med;
GO
DECLARE @nuevo_id_med INT, @msg_med NVARCHAR(200);
EXEC [dbo].[sp_Medico_Alta]
    @legajo           = N'MP 43587',
    @dni              = N'38786573',
    @nombre           = N'Marcelo',
    @apellido         = N'Gutiérrez',
    @sexo             = 'M',
    @nacionalidad     = N'Peruana',
    @fecha_nacimiento = '1997-05-25',
    @direccion        = N'Av. Independencia 1366',
    @id_localidad     = 16,
    @email            = N'marcelo.gutierrez10@hotmail.com',
    @telefono         = N'011-4999-3900',
    @id_especialidad  = 11,
    @nuevo_id         = @nuevo_id_med OUTPUT,
    @mensaje          = @msg_med OUTPUT;
PRINT N'Medico Marcelo Gutiérrez (MP 43587) -> ' + @msg_med;
GO
DECLARE @nuevo_id_med INT, @msg_med NVARCHAR(200);
EXEC [dbo].[sp_Medico_Alta]
    @legajo           = N'MN 79634',
    @dni              = N'44715002',
    @nombre           = N'María',
    @apellido         = N'Díaz',
    @sexo             = 'F',
    @nacionalidad     = N'Argentina',
    @fecha_nacimiento = '1982-10-17',
    @direccion        = N'Av. Hipólito Yrigoyen 3472',
    @id_localidad     = 16,
    @email            = N'maria.diaz11@outlook.com',
    @telefono         = N'011-4163-2771',
    @id_especialidad  = 12,
    @nuevo_id         = @nuevo_id_med OUTPUT,
    @mensaje          = @msg_med OUTPUT;
PRINT N'Medico María Díaz (MN 79634) -> ' + @msg_med;
GO
DECLARE @nuevo_id_med INT, @msg_med NVARCHAR(200);
EXEC [dbo].[sp_Medico_Alta]
    @legajo           = N'MP 58174',
    @dni              = N'35793736',
    @nombre           = N'Laura',
    @apellido         = N'Aguirre',
    @sexo             = 'F',
    @nacionalidad     = N'Argentina',
    @fecha_nacimiento = '1959-05-11',
    @direccion        = N'Mitre 3870',
    @id_localidad     = 23,
    @email            = N'laura.aguirre12@outlook.com',
    @telefono         = N'011-4840-4728',
    @id_especialidad  = 13,
    @nuevo_id         = @nuevo_id_med OUTPUT,
    @mensaje          = @msg_med OUTPUT;
PRINT N'Medico Laura Aguirre (MP 58174) -> ' + @msg_med;
GO
DECLARE @nuevo_id_med INT, @msg_med NVARCHAR(200);
EXEC [dbo].[sp_Medico_Alta]
    @legajo           = N'MN 45923',
    @dni              = N'26480360',
    @nombre           = N'Juan',
    @apellido         = N'Suárez',
    @sexo             = 'M',
    @nacionalidad     = N'Argentina',
    @fecha_nacimiento = '1968-11-17',
    @direccion        = N'25 de Mayo 2382',
    @id_localidad     = 5,
    @email            = N'juan.suarez13@outlook.com',
    @telefono         = N'011-4359-9346',
    @id_especialidad  = 14,
    @nuevo_id         = @nuevo_id_med OUTPUT,
    @mensaje          = @msg_med OUTPUT;
PRINT N'Medico Juan Suárez (MN 45923) -> ' + @msg_med;
GO
DECLARE @nuevo_id_med INT, @msg_med NVARCHAR(200);
EXEC [dbo].[sp_Medico_Alta]
    @legajo           = N'MP 87351',
    @dni              = N'37992414',
    @nombre           = N'Estefanía',
    @apellido         = N'Rojas',
    @sexo             = 'F',
    @nacionalidad     = N'Argentina',
    @fecha_nacimiento = '1957-08-27',
    @direccion        = N'Av. San Martín 1044',
    @id_localidad     = 17,
    @email            = N'estefania.rojas14@hotmail.com',
    @telefono         = N'011-4594-5349',
    @id_especialidad  = 15,
    @nuevo_id         = @nuevo_id_med OUTPUT,
    @mensaje          = @msg_med OUTPUT;
PRINT N'Medico Estefanía Rojas (MP 87351) -> ' + @msg_med;
GO
DECLARE @nuevo_id_med INT, @msg_med NVARCHAR(200);
EXEC [dbo].[sp_Medico_Alta]
    @legajo           = N'MN 62498',
    @dni              = N'34581540',
    @nombre           = N'Diego',
    @apellido         = N'Medina',
    @sexo             = 'M',
    @nacionalidad     = N'Argentina',
    @fecha_nacimiento = '1985-06-26',
    @direccion        = N'Pellegrini 2669',
    @id_localidad     = 28,
    @email            = N'diego.medina15@gmail.com',
    @telefono         = N'011-4394-4114',
    @id_especialidad  = 16,
    @nuevo_id         = @nuevo_id_med OUTPUT,
    @mensaje          = @msg_med OUTPUT;
PRINT N'Medico Diego Medina (MN 62498) -> ' + @msg_med;
GO
DECLARE @nuevo_id_med INT, @msg_med NVARCHAR(200);
EXEC [dbo].[sp_Medico_Alta]
    @legajo           = N'MP 39847',
    @dni              = N'34631662',
    @nombre           = N'Laura',
    @apellido         = N'Castro',
    @sexo             = 'F',
    @nacionalidad     = N'Argentina',
    @fecha_nacimiento = '1973-10-07',
    @direccion        = N'Av. Colón 1714',
    @id_localidad     = 24,
    @email            = N'laura.castro16@yahoo.com.ar',
    @telefono         = N'011-4071-6409',
    @id_especialidad  = 17,
    @nuevo_id         = @nuevo_id_med OUTPUT,
    @mensaje          = @msg_med OUTPUT;
PRINT N'Medico Laura Castro (MP 39847) -> ' + @msg_med;
GO
DECLARE @nuevo_id_med INT, @msg_med NVARCHAR(200);
EXEC [dbo].[sp_Medico_Alta]
    @legajo           = N'MN 73562',
    @dni              = N'24181731',
    @nombre           = N'Estefanía',
    @apellido         = N'Aguirre',
    @sexo             = 'F',
    @nacionalidad     = N'Chilena',
    @fecha_nacimiento = '1973-02-13',
    @direccion        = N'Av. Corrientes 2560',
    @id_localidad     = 33,
    @email            = N'estefania.aguirre17@outlook.com',
    @telefono         = N'011-4682-7691',
    @id_especialidad  = 18,
    @nuevo_id         = @nuevo_id_med OUTPUT,
    @mensaje          = @msg_med OUTPUT;
PRINT N'Medico Estefanía Aguirre (MN 73562) -> ' + @msg_med;
GO
DECLARE @nuevo_id_med INT, @msg_med NVARCHAR(200);
EXEC [dbo].[sp_Medico_Alta]
    @legajo           = N'MP 51234',
    @dni              = N'29920542',
    @nombre           = N'Valeria',
    @apellido         = N'Castro',
    @sexo             = 'F',
    @nacionalidad     = N'Uruguaya',
    @fecha_nacimiento = '1988-07-17',
    @direccion        = N'Belgrano 1671',
    @id_localidad     = 27,
    @email            = N'valeria.castro18@yahoo.com.ar',
    @telefono         = N'011-4693-3851',
    @id_especialidad  = 1,
    @nuevo_id         = @nuevo_id_med OUTPUT,
    @mensaje          = @msg_med OUTPUT;
PRINT N'Medico Valeria Castro (MP 51234) -> ' + @msg_med;
GO
DECLARE @nuevo_id_med INT, @msg_med NVARCHAR(200);
EXEC [dbo].[sp_Medico_Alta]
    @legajo           = N'MN 88741',
    @dni              = N'20013621',
    @nombre           = N'Valeria',
    @apellido         = N'Acosta',
    @sexo             = 'F',
    @nacionalidad     = N'Argentina',
    @fecha_nacimiento = '1998-04-24',
    @direccion        = N'Sarmiento 1821',
    @id_localidad     = 28,
    @email            = N'valeria.acosta19@outlook.com',
    @telefono         = N'011-4476-8238',
    @id_especialidad  = 2,
    @nuevo_id         = @nuevo_id_med OUTPUT,
    @mensaje          = @msg_med OUTPUT;
PRINT N'Medico Valeria Acosta (MN 88741) -> ' + @msg_med;
GO

-- ALTER: columna renombrada [password_hash] -> [password]
ALTER PROCEDURE [dbo].[sp_Usuario_Medico_Guardar]
    @id_medico INT,
    @username  NVARCHAR(60),
    @password  NVARCHAR(256),
    @mensaje   NVARCHAR(200) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    IF EXISTS (SELECT 1 FROM Usuario WHERE username = @username AND (id_medico <> @id_medico OR id_medico IS NULL))
    BEGIN SET @mensaje = N'El nombre de usuario ya está en uso.'; RETURN; END
    IF EXISTS (SELECT 1 FROM Usuario WHERE id_medico = @id_medico)
        UPDATE Usuario SET username = @username, [password] = @password, activo = 1 WHERE id_medico = @id_medico;
    ELSE
        INSERT INTO Usuario (username, [password], tipo, id_medico) VALUES (@username, @password, N'medico', @id_medico);
    SET @mensaje = N'Usuario guardado correctamente.';
END;
GO
-- =====================  7) USUARIO de tipo medico (vía sp_Usuario_Medico_Guardar)  =====================
DECLARE @msg_usr NVARCHAR(200);
EXEC [dbo].[sp_Usuario_Medico_Guardar]
    @id_medico     = 1,
    @username      = N'ggomez1',
    @password = 'medico123',
    @mensaje       = @msg_usr OUTPUT;
PRINT N'Usuario medico ggomez1 -> ' + @msg_usr;
GO
DECLARE @msg_usr NVARCHAR(200);
EXEC [dbo].[sp_Usuario_Medico_Guardar]
    @id_medico     = 2,
    @username      = N'rsuarez2',
    @password = 'medico123',
    @mensaje       = @msg_usr OUTPUT;
PRINT N'Usuario medico rsuarez2 -> ' + @msg_usr;
GO
DECLARE @msg_usr NVARCHAR(200);
EXEC [dbo].[sp_Usuario_Medico_Guardar]
    @id_medico     = 3,
    @username      = N'gtorres3',
    @password = 'medico123',
    @mensaje       = @msg_usr OUTPUT;
PRINT N'Usuario medico gtorres3 -> ' + @msg_usr;
GO
DECLARE @msg_usr NVARCHAR(200);
EXEC [dbo].[sp_Usuario_Medico_Guardar]
    @id_medico     = 4,
    @username      = N'hmedina4',
    @password = 'medico123',
    @mensaje       = @msg_usr OUTPUT;
PRINT N'Usuario medico hmedina4 -> ' + @msg_usr;
GO
DECLARE @msg_usr NVARCHAR(200);
EXEC [dbo].[sp_Usuario_Medico_Guardar]
    @id_medico     = 5,
    @username      = N'esosa5',
    @password = 'medico123',
    @mensaje       = @msg_usr OUTPUT;
PRINT N'Usuario medico esosa5 -> ' + @msg_usr;
GO
DECLARE @msg_usr NVARCHAR(200);
EXEC [dbo].[sp_Usuario_Medico_Guardar]
    @id_medico     = 6,
    @username      = N'sgarcia6',
    @password = 'medico123',
    @mensaje       = @msg_usr OUTPUT;
PRINT N'Usuario medico sgarcia6 -> ' + @msg_usr;
GO
DECLARE @msg_usr NVARCHAR(200);
EXEC [dbo].[sp_Usuario_Medico_Guardar]
    @id_medico     = 7,
    @username      = N'vsuarez7',
    @password = 'medico123',
    @mensaje       = @msg_usr OUTPUT;
PRINT N'Usuario medico vsuarez7 -> ' + @msg_usr;
GO
DECLARE @msg_usr NVARCHAR(200);
EXEC [dbo].[sp_Usuario_Medico_Guardar]
    @id_medico     = 8,
    @username      = N'ealvarez8',
    @password = 'medico123',
    @mensaje       = @msg_usr OUTPUT;
PRINT N'Usuario medico ealvarez8 -> ' + @msg_usr;
GO
DECLARE @msg_usr NVARCHAR(200);
EXEC [dbo].[sp_Usuario_Medico_Guardar]
    @id_medico     = 9,
    @username      = N'ngonzalez9',
    @password = 'medico123',
    @mensaje       = @msg_usr OUTPUT;
PRINT N'Usuario medico ngonzalez9 -> ' + @msg_usr;
GO
DECLARE @msg_usr NVARCHAR(200);
EXEC [dbo].[sp_Usuario_Medico_Guardar]
    @id_medico     = 10,
    @username      = N'rlopez10',
    @password = 'medico123',
    @mensaje       = @msg_usr OUTPUT;
PRINT N'Usuario medico rlopez10 -> ' + @msg_usr;
GO
DECLARE @msg_usr NVARCHAR(200);
EXEC [dbo].[sp_Usuario_Medico_Guardar]
    @id_medico     = 11,
    @username      = N'mgutierrez11',
    @password = 'medico123',
    @mensaje       = @msg_usr OUTPUT;
PRINT N'Usuario medico mgutierrez11 -> ' + @msg_usr;
GO
DECLARE @msg_usr NVARCHAR(200);
EXEC [dbo].[sp_Usuario_Medico_Guardar]
    @id_medico     = 12,
    @username      = N'mdiaz12',
    @password = 'medico123',
    @mensaje       = @msg_usr OUTPUT;
PRINT N'Usuario medico mdiaz12 -> ' + @msg_usr;
GO
DECLARE @msg_usr NVARCHAR(200);
EXEC [dbo].[sp_Usuario_Medico_Guardar]
    @id_medico     = 13,
    @username      = N'laguirre13',
    @password = 'medico123',
    @mensaje       = @msg_usr OUTPUT;
PRINT N'Usuario medico laguirre13 -> ' + @msg_usr;
GO
DECLARE @msg_usr NVARCHAR(200);
EXEC [dbo].[sp_Usuario_Medico_Guardar]
    @id_medico     = 14,
    @username      = N'jsuarez14',
    @password = 'medico123',
    @mensaje       = @msg_usr OUTPUT;
PRINT N'Usuario medico jsuarez14 -> ' + @msg_usr;
GO
DECLARE @msg_usr NVARCHAR(200);
EXEC [dbo].[sp_Usuario_Medico_Guardar]
    @id_medico     = 15,
    @username      = N'erojas15',
    @password = 'medico123',
    @mensaje       = @msg_usr OUTPUT;
PRINT N'Usuario medico erojas15 -> ' + @msg_usr;
GO
DECLARE @msg_usr NVARCHAR(200);
EXEC [dbo].[sp_Usuario_Medico_Guardar]
    @id_medico     = 16,
    @username      = N'dmedina16',
    @password = 'medico123',
    @mensaje       = @msg_usr OUTPUT;
PRINT N'Usuario medico dmedina16 -> ' + @msg_usr;
GO
DECLARE @msg_usr NVARCHAR(200);
EXEC [dbo].[sp_Usuario_Medico_Guardar]
    @id_medico     = 17,
    @username      = N'lcastro17',
    @password = 'medico123',
    @mensaje       = @msg_usr OUTPUT;
PRINT N'Usuario medico lcastro17 -> ' + @msg_usr;
GO
DECLARE @msg_usr NVARCHAR(200);
EXEC [dbo].[sp_Usuario_Medico_Guardar]
    @id_medico     = 18,
    @username      = N'eaguirre18',
    @password = 'medico123',
    @mensaje       = @msg_usr OUTPUT;
PRINT N'Usuario medico eaguirre18 -> ' + @msg_usr;
GO
DECLARE @msg_usr NVARCHAR(200);
EXEC [dbo].[sp_Usuario_Medico_Guardar]
    @id_medico     = 19,
    @username      = N'vcastro19',
    @password = 'medico123',
    @mensaje       = @msg_usr OUTPUT;
PRINT N'Usuario medico vcastro19 -> ' + @msg_usr;
GO
DECLARE @msg_usr NVARCHAR(200);
EXEC [dbo].[sp_Usuario_Medico_Guardar]
    @id_medico     = 20,
    @username      = N'vacosta20',
    @password = 'medico123',
    @mensaje       = @msg_usr OUTPUT;
PRINT N'Usuario medico vacosta20 -> ' + @msg_usr;
GO
-- =====================  8) HORARIOMEDICO (precarga de disponibilidad)  =====================
INSERT INTO [dbo].[HorarioMedico] (id_medico, dia_semana, hora_inicio, hora_fin) VALUES (1, 1, '09:00:00', '13:00:00'); -- Lunes 09:00 a 13:00
INSERT INTO [dbo].[HorarioMedico] (id_medico, dia_semana, hora_inicio, hora_fin) VALUES (1, 3, '14:00:00', '18:00:00'); -- Miércoles 14:00 a 18:00
INSERT INTO [dbo].[HorarioMedico] (id_medico, dia_semana, hora_inicio, hora_fin) VALUES (1, 4, '09:00:00', '12:00:00'); -- Jueves 09:00 a 12:00
INSERT INTO [dbo].[HorarioMedico] (id_medico, dia_semana, hora_inicio, hora_fin) VALUES (2, 2, '09:00:00', '13:00:00'); -- Martes 09:00 a 13:00
INSERT INTO [dbo].[HorarioMedico] (id_medico, dia_semana, hora_inicio, hora_fin) VALUES (2, 4, '14:00:00', '18:00:00'); -- Jueves 14:00 a 18:00
INSERT INTO [dbo].[HorarioMedico] (id_medico, dia_semana, hora_inicio, hora_fin) VALUES (3, 3, '09:00:00', '13:00:00'); -- Miércoles 09:00 a 13:00
INSERT INTO [dbo].[HorarioMedico] (id_medico, dia_semana, hora_inicio, hora_fin) VALUES (3, 5, '14:00:00', '18:00:00'); -- Viernes 14:00 a 18:00
INSERT INTO [dbo].[HorarioMedico] (id_medico, dia_semana, hora_inicio, hora_fin) VALUES (4, 4, '09:00:00', '13:00:00'); -- Jueves 09:00 a 13:00
INSERT INTO [dbo].[HorarioMedico] (id_medico, dia_semana, hora_inicio, hora_fin) VALUES (4, 1, '14:00:00', '18:00:00'); -- Lunes 14:00 a 18:00
INSERT INTO [dbo].[HorarioMedico] (id_medico, dia_semana, hora_inicio, hora_fin) VALUES (4, 2, '09:00:00', '12:00:00'); -- Martes 09:00 a 12:00
INSERT INTO [dbo].[HorarioMedico] (id_medico, dia_semana, hora_inicio, hora_fin) VALUES (5, 5, '09:00:00', '13:00:00'); -- Viernes 09:00 a 13:00
INSERT INTO [dbo].[HorarioMedico] (id_medico, dia_semana, hora_inicio, hora_fin) VALUES (5, 2, '14:00:00', '18:00:00'); -- Martes 14:00 a 18:00
INSERT INTO [dbo].[HorarioMedico] (id_medico, dia_semana, hora_inicio, hora_fin) VALUES (6, 1, '09:00:00', '13:00:00'); -- Lunes 09:00 a 13:00
INSERT INTO [dbo].[HorarioMedico] (id_medico, dia_semana, hora_inicio, hora_fin) VALUES (6, 3, '14:00:00', '18:00:00'); -- Miércoles 14:00 a 18:00
INSERT INTO [dbo].[HorarioMedico] (id_medico, dia_semana, hora_inicio, hora_fin) VALUES (7, 2, '09:00:00', '13:00:00'); -- Martes 09:00 a 13:00
INSERT INTO [dbo].[HorarioMedico] (id_medico, dia_semana, hora_inicio, hora_fin) VALUES (7, 4, '14:00:00', '18:00:00'); -- Jueves 14:00 a 18:00
INSERT INTO [dbo].[HorarioMedico] (id_medico, dia_semana, hora_inicio, hora_fin) VALUES (7, 1, '09:00:00', '12:00:00'); -- Lunes 09:00 a 12:00
INSERT INTO [dbo].[HorarioMedico] (id_medico, dia_semana, hora_inicio, hora_fin) VALUES (8, 3, '09:00:00', '13:00:00'); -- Miércoles 09:00 a 13:00
INSERT INTO [dbo].[HorarioMedico] (id_medico, dia_semana, hora_inicio, hora_fin) VALUES (8, 5, '14:00:00', '18:00:00'); -- Viernes 14:00 a 18:00
INSERT INTO [dbo].[HorarioMedico] (id_medico, dia_semana, hora_inicio, hora_fin) VALUES (9, 4, '09:00:00', '13:00:00'); -- Jueves 09:00 a 13:00
INSERT INTO [dbo].[HorarioMedico] (id_medico, dia_semana, hora_inicio, hora_fin) VALUES (9, 1, '14:00:00', '18:00:00'); -- Lunes 14:00 a 18:00
INSERT INTO [dbo].[HorarioMedico] (id_medico, dia_semana, hora_inicio, hora_fin) VALUES (10, 5, '09:00:00', '13:00:00'); -- Viernes 09:00 a 13:00
INSERT INTO [dbo].[HorarioMedico] (id_medico, dia_semana, hora_inicio, hora_fin) VALUES (10, 2, '14:00:00', '18:00:00'); -- Martes 14:00 a 18:00
INSERT INTO [dbo].[HorarioMedico] (id_medico, dia_semana, hora_inicio, hora_fin) VALUES (10, 4, '09:00:00', '12:00:00'); -- Jueves 09:00 a 12:00
INSERT INTO [dbo].[HorarioMedico] (id_medico, dia_semana, hora_inicio, hora_fin) VALUES (11, 1, '09:00:00', '13:00:00'); -- Lunes 09:00 a 13:00
INSERT INTO [dbo].[HorarioMedico] (id_medico, dia_semana, hora_inicio, hora_fin) VALUES (11, 3, '14:00:00', '18:00:00'); -- Miércoles 14:00 a 18:00
INSERT INTO [dbo].[HorarioMedico] (id_medico, dia_semana, hora_inicio, hora_fin) VALUES (12, 2, '09:00:00', '13:00:00'); -- Martes 09:00 a 13:00
INSERT INTO [dbo].[HorarioMedico] (id_medico, dia_semana, hora_inicio, hora_fin) VALUES (12, 4, '14:00:00', '18:00:00'); -- Jueves 14:00 a 18:00
INSERT INTO [dbo].[HorarioMedico] (id_medico, dia_semana, hora_inicio, hora_fin) VALUES (13, 3, '09:00:00', '13:00:00'); -- Miércoles 09:00 a 13:00
INSERT INTO [dbo].[HorarioMedico] (id_medico, dia_semana, hora_inicio, hora_fin) VALUES (13, 5, '14:00:00', '18:00:00'); -- Viernes 14:00 a 18:00
INSERT INTO [dbo].[HorarioMedico] (id_medico, dia_semana, hora_inicio, hora_fin) VALUES (13, 4, '09:00:00', '12:00:00'); -- Jueves 09:00 a 12:00
INSERT INTO [dbo].[HorarioMedico] (id_medico, dia_semana, hora_inicio, hora_fin) VALUES (14, 4, '09:00:00', '13:00:00'); -- Jueves 09:00 a 13:00
INSERT INTO [dbo].[HorarioMedico] (id_medico, dia_semana, hora_inicio, hora_fin) VALUES (14, 1, '14:00:00', '18:00:00'); -- Lunes 14:00 a 18:00
INSERT INTO [dbo].[HorarioMedico] (id_medico, dia_semana, hora_inicio, hora_fin) VALUES (15, 5, '09:00:00', '13:00:00'); -- Viernes 09:00 a 13:00
INSERT INTO [dbo].[HorarioMedico] (id_medico, dia_semana, hora_inicio, hora_fin) VALUES (15, 2, '14:00:00', '18:00:00'); -- Martes 14:00 a 18:00
INSERT INTO [dbo].[HorarioMedico] (id_medico, dia_semana, hora_inicio, hora_fin) VALUES (16, 1, '09:00:00', '13:00:00'); -- Lunes 09:00 a 13:00
INSERT INTO [dbo].[HorarioMedico] (id_medico, dia_semana, hora_inicio, hora_fin) VALUES (16, 3, '14:00:00', '18:00:00'); -- Miércoles 14:00 a 18:00
INSERT INTO [dbo].[HorarioMedico] (id_medico, dia_semana, hora_inicio, hora_fin) VALUES (16, 4, '09:00:00', '12:00:00'); -- Jueves 09:00 a 12:00
INSERT INTO [dbo].[HorarioMedico] (id_medico, dia_semana, hora_inicio, hora_fin) VALUES (17, 2, '09:00:00', '13:00:00'); -- Martes 09:00 a 13:00
INSERT INTO [dbo].[HorarioMedico] (id_medico, dia_semana, hora_inicio, hora_fin) VALUES (17, 4, '14:00:00', '18:00:00'); -- Jueves 14:00 a 18:00
INSERT INTO [dbo].[HorarioMedico] (id_medico, dia_semana, hora_inicio, hora_fin) VALUES (18, 3, '09:00:00', '13:00:00'); -- Miércoles 09:00 a 13:00
INSERT INTO [dbo].[HorarioMedico] (id_medico, dia_semana, hora_inicio, hora_fin) VALUES (18, 5, '14:00:00', '18:00:00'); -- Viernes 14:00 a 18:00
INSERT INTO [dbo].[HorarioMedico] (id_medico, dia_semana, hora_inicio, hora_fin) VALUES (19, 4, '09:00:00', '13:00:00'); -- Jueves 09:00 a 13:00
INSERT INTO [dbo].[HorarioMedico] (id_medico, dia_semana, hora_inicio, hora_fin) VALUES (19, 1, '14:00:00', '18:00:00'); -- Lunes 14:00 a 18:00
INSERT INTO [dbo].[HorarioMedico] (id_medico, dia_semana, hora_inicio, hora_fin) VALUES (19, 2, '09:00:00', '12:00:00'); -- Martes 09:00 a 12:00
INSERT INTO [dbo].[HorarioMedico] (id_medico, dia_semana, hora_inicio, hora_fin) VALUES (20, 5, '09:00:00', '13:00:00'); -- Viernes 09:00 a 13:00
INSERT INTO [dbo].[HorarioMedico] (id_medico, dia_semana, hora_inicio, hora_fin) VALUES (20, 2, '14:00:00', '18:00:00'); -- Martes 14:00 a 18:00
GO

-- ALTER: verificacion de colision en ventana de 60 minutos
ALTER PROCEDURE [dbo].[sp_Turno_Asignar]
    @id_medico   INT,
    @id_paciente INT,
    @fecha_hora  DATETIME,
    @nuevo_id    INT           OUTPUT,
    @mensaje     NVARCHAR(200) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    IF EXISTS (SELECT 1 FROM Turno
               WHERE id_medico = @id_medico
                 AND ABS(DATEDIFF(MINUTE, fecha_hora, @fecha_hora)) < 60
                 AND activo    = 1)
    BEGIN
        SET @mensaje  = N'El medico ya tiene un turno en esa franja horaria (conflicto de 60 min).';
        SET @nuevo_id = -1;
        RETURN;
    END
    INSERT INTO Turno (id_medico, id_paciente, fecha_hora)
    VALUES (@id_medico, @id_paciente, @fecha_hora);
    SET @nuevo_id = SCOPE_IDENTITY();
    SET @mensaje  = N'Turno asignado correctamente.';
END;
GO
-- =====================  9) TURNOS (vía sp_Turno_Asignar / sp_Turno_RegistrarEstado)  =====================
DECLARE @nuevo_turno_1 INT, @msg_turno_1 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 1,
    @id_paciente = 16,
    @fecha_hora  = '2025-03-20 09:00:00',
    @nuevo_id    = @nuevo_turno_1 OUTPUT,
    @mensaje     = @msg_turno_1 OUTPUT;
PRINT N'Turno 2025-03-20 09:00:00 Dr/a Gómez -> ' + @msg_turno_1;
DECLARE @msg_estado_1 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_1,
    @estado      = N'presente',
    @observacion = N'Se deriva a especialista para evaluación adicional.',
    @mensaje     = @msg_estado_1 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_1;
GO
DECLARE @nuevo_turno_2 INT, @msg_turno_2 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 1,
    @id_paciente = 15,
    @fecha_hora  = '2024-08-28 17:00:00',
    @nuevo_id    = @nuevo_turno_2 OUTPUT,
    @mensaje     = @msg_turno_2 OUTPUT;
PRINT N'Turno 2024-08-28 17:00:00 Dr/a Gómez -> ' + @msg_turno_2;
DECLARE @msg_estado_2 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_2,
    @estado      = N'presente',
    @observacion = N'Se deriva a especialista para evaluación adicional.',
    @mensaje     = @msg_estado_2 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_2;
GO
DECLARE @nuevo_turno_3 INT, @msg_turno_3 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 1,
    @id_paciente = 8,
    @fecha_hora  = '2025-07-24 10:00:00',
    @nuevo_id    = @nuevo_turno_3 OUTPUT,
    @mensaje     = @msg_turno_3 OUTPUT;
PRINT N'Turno 2025-07-24 10:00:00 Dr/a Gómez -> ' + @msg_turno_3;
DECLARE @msg_estado_3 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_3,
    @estado      = N'presente',
    @observacion = N'Mejora notoria respecto a la consulta anterior.',
    @mensaje     = @msg_estado_3 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_3;
GO
DECLARE @nuevo_turno_4 INT, @msg_turno_4 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 1,
    @id_paciente = 18,
    @fecha_hora  = '2026-02-05 11:00:00',
    @nuevo_id    = @nuevo_turno_4 OUTPUT,
    @mensaje     = @msg_turno_4 OUTPUT;
PRINT N'Turno 2026-02-05 11:00:00 Dr/a Gómez -> ' + @msg_turno_4;
DECLARE @msg_estado_4 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_4,
    @estado      = N'presente',
    @observacion = N'Paciente estable, continúa con el tratamiento indicado.',
    @mensaje     = @msg_estado_4 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_4;
GO
DECLARE @nuevo_turno_5 INT, @msg_turno_5 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 1,
    @id_paciente = 8,
    @fecha_hora  = '2024-10-09 17:00:00',
    @nuevo_id    = @nuevo_turno_5 OUTPUT,
    @mensaje     = @msg_turno_5 OUTPUT;
PRINT N'Turno 2024-10-09 17:00:00 Dr/a Gómez -> ' + @msg_turno_5;
DECLARE @msg_estado_5 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_5,
    @estado      = N'presente',
    @observacion = N'Paciente estable, continúa con el tratamiento indicado.',
    @mensaje     = @msg_estado_5 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_5;
GO
DECLARE @nuevo_turno_6 INT, @msg_turno_6 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 1,
    @id_paciente = 23,
    @fecha_hora  = '2026-07-22 15:00:00',
    @nuevo_id    = @nuevo_turno_6 OUTPUT,
    @mensaje     = @msg_turno_6 OUTPUT;
PRINT N'Turno 2026-07-22 15:00:00 Dr/a Gómez -> ' + @msg_turno_6;
GO
DECLARE @nuevo_turno_7 INT, @msg_turno_7 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 1,
    @id_paciente = 7,
    @fecha_hora  = '2026-07-16 11:00:00',
    @nuevo_id    = @nuevo_turno_7 OUTPUT,
    @mensaje     = @msg_turno_7 OUTPUT;
PRINT N'Turno 2026-07-16 11:00:00 Dr/a Gómez -> ' + @msg_turno_7;
GO
DECLARE @nuevo_turno_8 INT, @msg_turno_8 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 2,
    @id_paciente = 9,
    @fecha_hora  = '2026-01-13 12:00:00',
    @nuevo_id    = @nuevo_turno_8 OUTPUT,
    @mensaje     = @msg_turno_8 OUTPUT;
PRINT N'Turno 2026-01-13 12:00:00 Dr/a Suárez -> ' + @msg_turno_8;
DECLARE @msg_estado_8 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_8,
    @estado      = N'presente',
    @observacion = N'Buen estado general, se indica control en 6 meses.',
    @mensaje     = @msg_estado_8 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_8;
GO
DECLARE @nuevo_turno_9 INT, @msg_turno_9 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 2,
    @id_paciente = 13,
    @fecha_hora  = '2026-04-16 17:00:00',
    @nuevo_id    = @nuevo_turno_9 OUTPUT,
    @mensaje     = @msg_turno_9 OUTPUT;
PRINT N'Turno 2026-04-16 17:00:00 Dr/a Suárez -> ' + @msg_turno_9;
DECLARE @msg_estado_9 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_9,
    @estado      = N'presente',
    @observacion = N'Se solicitan análisis de laboratorio de control.',
    @mensaje     = @msg_estado_9 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_9;
GO
DECLARE @nuevo_turno_10 INT, @msg_turno_10 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 2,
    @id_paciente = 24,
    @fecha_hora  = '2024-12-31 12:00:00',
    @nuevo_id    = @nuevo_turno_10 OUTPUT,
    @mensaje     = @msg_turno_10 OUTPUT;
PRINT N'Turno 2024-12-31 12:00:00 Dr/a Suárez -> ' + @msg_turno_10;
DECLARE @msg_estado_10 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_10,
    @estado      = N'presente',
    @observacion = N'Se indica reposo relativo y nueva consulta en 15 días.',
    @mensaje     = @msg_estado_10 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_10;
GO
DECLARE @nuevo_turno_11 INT, @msg_turno_11 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 2,
    @id_paciente = 5,
    @fecha_hora  = '2024-02-08 17:00:00',
    @nuevo_id    = @nuevo_turno_11 OUTPUT,
    @mensaje     = @msg_turno_11 OUTPUT;
PRINT N'Turno 2024-02-08 17:00:00 Dr/a Suárez -> ' + @msg_turno_11;
DECLARE @msg_estado_11 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_11,
    @estado      = N'ausente',
    @mensaje     = @msg_estado_11 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_11;
GO
DECLARE @nuevo_turno_12 INT, @msg_turno_12 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 2,
    @id_paciente = 18,
    @fecha_hora  = '2024-01-11 16:00:00',
    @nuevo_id    = @nuevo_turno_12 OUTPUT,
    @mensaje     = @msg_turno_12 OUTPUT;
PRINT N'Turno 2024-01-11 16:00:00 Dr/a Suárez -> ' + @msg_turno_12;
DECLARE @msg_estado_12 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_12,
    @estado      = N'presente',
    @observacion = N'Se solicitan análisis de laboratorio de control.',
    @mensaje     = @msg_estado_12 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_12;
GO
DECLARE @nuevo_turno_13 INT, @msg_turno_13 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 2,
    @id_paciente = 19,
    @fecha_hora  = '2026-07-30 17:00:00',
    @nuevo_id    = @nuevo_turno_13 OUTPUT,
    @mensaje     = @msg_turno_13 OUTPUT;
PRINT N'Turno 2026-07-30 17:00:00 Dr/a Suárez -> ' + @msg_turno_13;
GO
DECLARE @nuevo_turno_14 INT, @msg_turno_14 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 2,
    @id_paciente = 19,
    @fecha_hora  = '2026-08-11 10:00:00',
    @nuevo_id    = @nuevo_turno_14 OUTPUT,
    @mensaje     = @msg_turno_14 OUTPUT;
PRINT N'Turno 2026-08-11 10:00:00 Dr/a Suárez -> ' + @msg_turno_14;
GO
DECLARE @nuevo_turno_15 INT, @msg_turno_15 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 3,
    @id_paciente = 24,
    @fecha_hora  = '2024-05-29 12:00:00',
    @nuevo_id    = @nuevo_turno_15 OUTPUT,
    @mensaje     = @msg_turno_15 OUTPUT;
PRINT N'Turno 2024-05-29 12:00:00 Dr/a Torres -> ' + @msg_turno_15;
DECLARE @msg_estado_15 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_15,
    @estado      = N'presente',
    @observacion = N'Mejora notoria respecto a la consulta anterior.',
    @mensaje     = @msg_estado_15 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_15;
GO
DECLARE @nuevo_turno_16 INT, @msg_turno_16 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 3,
    @id_paciente = 8,
    @fecha_hora  = '2026-04-08 10:00:00',
    @nuevo_id    = @nuevo_turno_16 OUTPUT,
    @mensaje     = @msg_turno_16 OUTPUT;
PRINT N'Turno 2026-04-08 10:00:00 Dr/a Torres -> ' + @msg_turno_16;
DECLARE @msg_estado_16 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_16,
    @estado      = N'presente',
    @observacion = N'Buen estado general, se indica control en 6 meses.',
    @mensaje     = @msg_estado_16 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_16;
GO
DECLARE @nuevo_turno_17 INT, @msg_turno_17 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 3,
    @id_paciente = 25,
    @fecha_hora  = '2025-04-09 12:00:00',
    @nuevo_id    = @nuevo_turno_17 OUTPUT,
    @mensaje     = @msg_turno_17 OUTPUT;
PRINT N'Turno 2025-04-09 12:00:00 Dr/a Torres -> ' + @msg_turno_17;
DECLARE @msg_estado_17 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_17,
    @estado      = N'presente',
    @observacion = N'Se realiza control de rutina, sin hallazgos relevantes.',
    @mensaje     = @msg_estado_17 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_17;
GO
DECLARE @nuevo_turno_18 INT, @msg_turno_18 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 3,
    @id_paciente = 7,
    @fecha_hora  = '2025-01-17 17:00:00',
    @nuevo_id    = @nuevo_turno_18 OUTPUT,
    @mensaje     = @msg_turno_18 OUTPUT;
PRINT N'Turno 2025-01-17 17:00:00 Dr/a Torres -> ' + @msg_turno_18;
DECLARE @msg_estado_18 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_18,
    @estado      = N'ausente',
    @mensaje     = @msg_estado_18 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_18;
GO
DECLARE @nuevo_turno_19 INT, @msg_turno_19 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 3,
    @id_paciente = 20,
    @fecha_hora  = '2025-08-29 17:00:00',
    @nuevo_id    = @nuevo_turno_19 OUTPUT,
    @mensaje     = @msg_turno_19 OUTPUT;
PRINT N'Turno 2025-08-29 17:00:00 Dr/a Torres -> ' + @msg_turno_19;
DECLARE @msg_estado_19 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_19,
    @estado      = N'presente',
    @observacion = N'Paciente estable, continúa con el tratamiento indicado.',
    @mensaje     = @msg_estado_19 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_19;
GO
DECLARE @nuevo_turno_20 INT, @msg_turno_20 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 3,
    @id_paciente = 16,
    @fecha_hora  = '2026-07-31 16:00:00',
    @nuevo_id    = @nuevo_turno_20 OUTPUT,
    @mensaje     = @msg_turno_20 OUTPUT;
PRINT N'Turno 2026-07-31 16:00:00 Dr/a Torres -> ' + @msg_turno_20;
GO
DECLARE @nuevo_turno_21 INT, @msg_turno_21 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 3,
    @id_paciente = 22,
    @fecha_hora  = '2026-08-12 09:00:00',
    @nuevo_id    = @nuevo_turno_21 OUTPUT,
    @mensaje     = @msg_turno_21 OUTPUT;
PRINT N'Turno 2026-08-12 09:00:00 Dr/a Torres -> ' + @msg_turno_21;
GO
DECLARE @nuevo_turno_22 INT, @msg_turno_22 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 4,
    @id_paciente = 20,
    @fecha_hora  = '2025-01-23 12:00:00',
    @nuevo_id    = @nuevo_turno_22 OUTPUT,
    @mensaje     = @msg_turno_22 OUTPUT;
PRINT N'Turno 2025-01-23 12:00:00 Dr/a Medina -> ' + @msg_turno_22;
DECLARE @msg_estado_22 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_22,
    @estado      = N'ausente',
    @mensaje     = @msg_estado_22 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_22;
GO
DECLARE @nuevo_turno_23 INT, @msg_turno_23 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 4,
    @id_paciente = 19,
    @fecha_hora  = '2025-04-01 10:00:00',
    @nuevo_id    = @nuevo_turno_23 OUTPUT,
    @mensaje     = @msg_turno_23 OUTPUT;
PRINT N'Turno 2025-04-01 10:00:00 Dr/a Medina -> ' + @msg_turno_23;
DECLARE @msg_estado_23 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_23,
    @estado      = N'ausente',
    @mensaje     = @msg_estado_23 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_23;
GO
DECLARE @nuevo_turno_24 INT, @msg_turno_24 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 4,
    @id_paciente = 12,
    @fecha_hora  = '2024-07-25 10:00:00',
    @nuevo_id    = @nuevo_turno_24 OUTPUT,
    @mensaje     = @msg_turno_24 OUTPUT;
PRINT N'Turno 2024-07-25 10:00:00 Dr/a Medina -> ' + @msg_turno_24;
DECLARE @msg_estado_24 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_24,
    @estado      = N'presente',
    @observacion = N'Mejora notoria respecto a la consulta anterior.',
    @mensaje     = @msg_estado_24 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_24;
GO
DECLARE @nuevo_turno_25 INT, @msg_turno_25 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 4,
    @id_paciente = 3,
    @fecha_hora  = '2024-07-08 14:00:00',
    @nuevo_id    = @nuevo_turno_25 OUTPUT,
    @mensaje     = @msg_turno_25 OUTPUT;
PRINT N'Turno 2024-07-08 14:00:00 Dr/a Medina -> ' + @msg_turno_25;
DECLARE @msg_estado_25 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_25,
    @estado      = N'presente',
    @observacion = N'Mejora notoria respecto a la consulta anterior.',
    @mensaje     = @msg_estado_25 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_25;
GO
DECLARE @nuevo_turno_26 INT, @msg_turno_26 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 4,
    @id_paciente = 1,
    @fecha_hora  = '2025-11-03 17:00:00',
    @nuevo_id    = @nuevo_turno_26 OUTPUT,
    @mensaje     = @msg_turno_26 OUTPUT;
PRINT N'Turno 2025-11-03 17:00:00 Dr/a Medina -> ' + @msg_turno_26;
DECLARE @msg_estado_26 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_26,
    @estado      = N'ausente',
    @mensaje     = @msg_estado_26 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_26;
GO
DECLARE @nuevo_turno_27 INT, @msg_turno_27 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 4,
    @id_paciente = 16,
    @fecha_hora  = '2026-07-14 09:00:00',
    @nuevo_id    = @nuevo_turno_27 OUTPUT,
    @mensaje     = @msg_turno_27 OUTPUT;
PRINT N'Turno 2026-07-14 09:00:00 Dr/a Medina -> ' + @msg_turno_27;
GO
DECLARE @nuevo_turno_28 INT, @msg_turno_28 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 4,
    @id_paciente = 4,
    @fecha_hora  = '2026-07-21 11:00:00',
    @nuevo_id    = @nuevo_turno_28 OUTPUT,
    @mensaje     = @msg_turno_28 OUTPUT;
PRINT N'Turno 2026-07-21 11:00:00 Dr/a Medina -> ' + @msg_turno_28;
GO
DECLARE @nuevo_turno_29 INT, @msg_turno_29 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 5,
    @id_paciente = 16,
    @fecha_hora  = '2025-10-07 17:00:00',
    @nuevo_id    = @nuevo_turno_29 OUTPUT,
    @mensaje     = @msg_turno_29 OUTPUT;
PRINT N'Turno 2025-10-07 17:00:00 Dr/a Sosa -> ' + @msg_turno_29;
DECLARE @msg_estado_29 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_29,
    @estado      = N'ausente',
    @mensaje     = @msg_estado_29 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_29;
GO
DECLARE @nuevo_turno_30 INT, @msg_turno_30 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 5,
    @id_paciente = 6,
    @fecha_hora  = '2026-02-20 10:00:00',
    @nuevo_id    = @nuevo_turno_30 OUTPUT,
    @mensaje     = @msg_turno_30 OUTPUT;
PRINT N'Turno 2026-02-20 10:00:00 Dr/a Sosa -> ' + @msg_turno_30;
DECLARE @msg_estado_30 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_30,
    @estado      = N'presente',
    @observacion = N'Mejora notoria respecto a la consulta anterior.',
    @mensaje     = @msg_estado_30 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_30;
GO
DECLARE @nuevo_turno_31 INT, @msg_turno_31 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 5,
    @id_paciente = 9,
    @fecha_hora  = '2026-05-12 17:00:00',
    @nuevo_id    = @nuevo_turno_31 OUTPUT,
    @mensaje     = @msg_turno_31 OUTPUT;
PRINT N'Turno 2026-05-12 17:00:00 Dr/a Sosa -> ' + @msg_turno_31;
DECLARE @msg_estado_31 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_31,
    @estado      = N'presente',
    @observacion = N'Se deriva a especialista para evaluación adicional.',
    @mensaje     = @msg_estado_31 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_31;
GO
DECLARE @nuevo_turno_32 INT, @msg_turno_32 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 5,
    @id_paciente = 18,
    @fecha_hora  = '2025-04-22 16:00:00',
    @nuevo_id    = @nuevo_turno_32 OUTPUT,
    @mensaje     = @msg_turno_32 OUTPUT;
PRINT N'Turno 2025-04-22 16:00:00 Dr/a Sosa -> ' + @msg_turno_32;
DECLARE @msg_estado_32 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_32,
    @estado      = N'presente',
    @observacion = N'Se realiza control de rutina, sin hallazgos relevantes.',
    @mensaje     = @msg_estado_32 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_32;
GO
DECLARE @nuevo_turno_33 INT, @msg_turno_33 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 5,
    @id_paciente = 3,
    @fecha_hora  = '2024-06-07 11:00:00',
    @nuevo_id    = @nuevo_turno_33 OUTPUT,
    @mensaje     = @msg_turno_33 OUTPUT;
PRINT N'Turno 2024-06-07 11:00:00 Dr/a Sosa -> ' + @msg_turno_33;
DECLARE @msg_estado_33 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_33,
    @estado      = N'presente',
    @observacion = N'Se solicitan análisis de laboratorio de control.',
    @mensaje     = @msg_estado_33 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_33;
GO
DECLARE @nuevo_turno_34 INT, @msg_turno_34 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 5,
    @id_paciente = 16,
    @fecha_hora  = '2026-07-14 17:00:00',
    @nuevo_id    = @nuevo_turno_34 OUTPUT,
    @mensaje     = @msg_turno_34 OUTPUT;
PRINT N'Turno 2026-07-14 17:00:00 Dr/a Sosa -> ' + @msg_turno_34;
GO
DECLARE @nuevo_turno_35 INT, @msg_turno_35 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 5,
    @id_paciente = 18,
    @fecha_hora  = '2026-07-28 14:00:00',
    @nuevo_id    = @nuevo_turno_35 OUTPUT,
    @mensaje     = @msg_turno_35 OUTPUT;
PRINT N'Turno 2026-07-28 14:00:00 Dr/a Sosa -> ' + @msg_turno_35;
GO
DECLARE @nuevo_turno_36 INT, @msg_turno_36 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 6,
    @id_paciente = 8,
    @fecha_hora  = '2026-04-27 12:00:00',
    @nuevo_id    = @nuevo_turno_36 OUTPUT,
    @mensaje     = @msg_turno_36 OUTPUT;
PRINT N'Turno 2026-04-27 12:00:00 Dr/a García -> ' + @msg_turno_36;
DECLARE @msg_estado_36 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_36,
    @estado      = N'presente',
    @observacion = N'Se realiza control de rutina, sin hallazgos relevantes.',
    @mensaje     = @msg_estado_36 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_36;
GO
DECLARE @nuevo_turno_37 INT, @msg_turno_37 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 6,
    @id_paciente = 11,
    @fecha_hora  = '2024-01-31 14:00:00',
    @nuevo_id    = @nuevo_turno_37 OUTPUT,
    @mensaje     = @msg_turno_37 OUTPUT;
PRINT N'Turno 2024-01-31 14:00:00 Dr/a García -> ' + @msg_turno_37;
DECLARE @msg_estado_37 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_37,
    @estado      = N'presente',
    @observacion = N'Paciente estable, continúa con el tratamiento indicado.',
    @mensaje     = @msg_estado_37 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_37;
GO
DECLARE @nuevo_turno_38 INT, @msg_turno_38 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 6,
    @id_paciente = 7,
    @fecha_hora  = '2025-01-29 17:00:00',
    @nuevo_id    = @nuevo_turno_38 OUTPUT,
    @mensaje     = @msg_turno_38 OUTPUT;
PRINT N'Turno 2025-01-29 17:00:00 Dr/a García -> ' + @msg_turno_38;
DECLARE @msg_estado_38 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_38,
    @estado      = N'presente',
    @observacion = N'Se indica reposo relativo y nueva consulta en 15 días.',
    @mensaje     = @msg_estado_38 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_38;
GO
DECLARE @nuevo_turno_39 INT, @msg_turno_39 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 6,
    @id_paciente = 9,
    @fecha_hora  = '2025-06-30 11:00:00',
    @nuevo_id    = @nuevo_turno_39 OUTPUT,
    @mensaje     = @msg_turno_39 OUTPUT;
PRINT N'Turno 2025-06-30 11:00:00 Dr/a García -> ' + @msg_turno_39;
DECLARE @msg_estado_39 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_39,
    @estado      = N'ausente',
    @mensaje     = @msg_estado_39 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_39;
GO
DECLARE @nuevo_turno_40 INT, @msg_turno_40 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 6,
    @id_paciente = 25,
    @fecha_hora  = '2025-09-10 17:00:00',
    @nuevo_id    = @nuevo_turno_40 OUTPUT,
    @mensaje     = @msg_turno_40 OUTPUT;
PRINT N'Turno 2025-09-10 17:00:00 Dr/a García -> ' + @msg_turno_40;
DECLARE @msg_estado_40 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_40,
    @estado      = N'presente',
    @observacion = N'Se deriva a especialista para evaluación adicional.',
    @mensaje     = @msg_estado_40 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_40;
GO
DECLARE @nuevo_turno_41 INT, @msg_turno_41 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 6,
    @id_paciente = 4,
    @fecha_hora  = '2026-07-29 17:00:00',
    @nuevo_id    = @nuevo_turno_41 OUTPUT,
    @mensaje     = @msg_turno_41 OUTPUT;
PRINT N'Turno 2026-07-29 17:00:00 Dr/a García -> ' + @msg_turno_41;
GO
DECLARE @nuevo_turno_42 INT, @msg_turno_42 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 6,
    @id_paciente = 7,
    @fecha_hora  = '2026-07-22 16:00:00',
    @nuevo_id    = @nuevo_turno_42 OUTPUT,
    @mensaje     = @msg_turno_42 OUTPUT;
PRINT N'Turno 2026-07-22 16:00:00 Dr/a García -> ' + @msg_turno_42;
GO
DECLARE @nuevo_turno_43 INT, @msg_turno_43 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 7,
    @id_paciente = 16,
    @fecha_hora  = '2025-02-13 16:00:00',
    @nuevo_id    = @nuevo_turno_43 OUTPUT,
    @mensaje     = @msg_turno_43 OUTPUT;
PRINT N'Turno 2025-02-13 16:00:00 Dr/a Suárez -> ' + @msg_turno_43;
DECLARE @msg_estado_43 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_43,
    @estado      = N'presente',
    @observacion = N'Paciente estable, continúa con el tratamiento indicado.',
    @mensaje     = @msg_estado_43 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_43;
GO
DECLARE @nuevo_turno_44 INT, @msg_turno_44 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 7,
    @id_paciente = 2,
    @fecha_hora  = '2025-06-24 09:00:00',
    @nuevo_id    = @nuevo_turno_44 OUTPUT,
    @mensaje     = @msg_turno_44 OUTPUT;
PRINT N'Turno 2025-06-24 09:00:00 Dr/a Suárez -> ' + @msg_turno_44;
DECLARE @msg_estado_44 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_44,
    @estado      = N'presente',
    @observacion = N'Se indica reposo relativo y nueva consulta en 15 días.',
    @mensaje     = @msg_estado_44 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_44;
GO
DECLARE @nuevo_turno_45 INT, @msg_turno_45 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 7,
    @id_paciente = 4,
    @fecha_hora  = '2024-08-12 10:00:00',
    @nuevo_id    = @nuevo_turno_45 OUTPUT,
    @mensaje     = @msg_turno_45 OUTPUT;
PRINT N'Turno 2024-08-12 10:00:00 Dr/a Suárez -> ' + @msg_turno_45;
DECLARE @msg_estado_45 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_45,
    @estado      = N'ausente',
    @mensaje     = @msg_estado_45 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_45;
GO
DECLARE @nuevo_turno_46 INT, @msg_turno_46 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 7,
    @id_paciente = 13,
    @fecha_hora  = '2024-04-02 11:00:00',
    @nuevo_id    = @nuevo_turno_46 OUTPUT,
    @mensaje     = @msg_turno_46 OUTPUT;
PRINT N'Turno 2024-04-02 11:00:00 Dr/a Suárez -> ' + @msg_turno_46;
DECLARE @msg_estado_46 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_46,
    @estado      = N'presente',
    @observacion = N'Buen estado general, se indica control en 6 meses.',
    @mensaje     = @msg_estado_46 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_46;
GO
DECLARE @nuevo_turno_47 INT, @msg_turno_47 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 7,
    @id_paciente = 5,
    @fecha_hora  = '2024-08-12 11:00:00',
    @nuevo_id    = @nuevo_turno_47 OUTPUT,
    @mensaje     = @msg_turno_47 OUTPUT;
PRINT N'Turno 2024-08-12 11:00:00 Dr/a Suárez -> ' + @msg_turno_47;
DECLARE @msg_estado_47 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_47,
    @estado      = N'presente',
    @observacion = N'Se deriva a especialista para evaluación adicional.',
    @mensaje     = @msg_estado_47 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_47;
GO
DECLARE @nuevo_turno_48 INT, @msg_turno_48 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 7,
    @id_paciente = 3,
    @fecha_hora  = '2026-06-25 14:00:00',
    @nuevo_id    = @nuevo_turno_48 OUTPUT,
    @mensaje     = @msg_turno_48 OUTPUT;
PRINT N'Turno 2026-06-25 14:00:00 Dr/a Suárez -> ' + @msg_turno_48;
DECLARE @msg_estado_48 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_48,
    @estado      = N'presente',
    @observacion = N'Paciente asistió a la consulta; se revisa evolución y se ajusta plan de seguimiento.',
    @mensaje     = @msg_estado_48 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_48;
GO
DECLARE @nuevo_turno_49 INT, @msg_turno_49 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 7,
    @id_paciente = 8,
    @fecha_hora  = '2026-07-20 10:00:00',
    @nuevo_id    = @nuevo_turno_49 OUTPUT,
    @mensaje     = @msg_turno_49 OUTPUT;
PRINT N'Turno 2026-07-20 10:00:00 Dr/a Suárez -> ' + @msg_turno_49;
GO
DECLARE @nuevo_turno_50 INT, @msg_turno_50 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 8,
    @id_paciente = 14,
    @fecha_hora  = '2026-01-14 10:00:00',
    @nuevo_id    = @nuevo_turno_50 OUTPUT,
    @mensaje     = @msg_turno_50 OUTPUT;
PRINT N'Turno 2026-01-14 10:00:00 Dr/a Álvarez -> ' + @msg_turno_50;
DECLARE @msg_estado_50 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_50,
    @estado      = N'presente',
    @observacion = N'Se indica reposo relativo y nueva consulta en 15 días.',
    @mensaje     = @msg_estado_50 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_50;
GO
DECLARE @nuevo_turno_51 INT, @msg_turno_51 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 8,
    @id_paciente = 10,
    @fecha_hora  = '2026-03-20 17:00:00',
    @nuevo_id    = @nuevo_turno_51 OUTPUT,
    @mensaje     = @msg_turno_51 OUTPUT;
PRINT N'Turno 2026-03-20 17:00:00 Dr/a Álvarez -> ' + @msg_turno_51;
DECLARE @msg_estado_51 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_51,
    @estado      = N'presente',
    @observacion = N'Se deriva a especialista para evaluación adicional.',
    @mensaje     = @msg_estado_51 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_51;
GO
DECLARE @nuevo_turno_52 INT, @msg_turno_52 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 8,
    @id_paciente = 23,
    @fecha_hora  = '2026-02-06 16:00:00',
    @nuevo_id    = @nuevo_turno_52 OUTPUT,
    @mensaje     = @msg_turno_52 OUTPUT;
PRINT N'Turno 2026-02-06 16:00:00 Dr/a Álvarez -> ' + @msg_turno_52;
DECLARE @msg_estado_52 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_52,
    @estado      = N'presente',
    @observacion = N'Se indica reposo relativo y nueva consulta en 15 días.',
    @mensaje     = @msg_estado_52 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_52;
GO
DECLARE @nuevo_turno_53 INT, @msg_turno_53 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 8,
    @id_paciente = 3,
    @fecha_hora  = '2024-06-26 10:00:00',
    @nuevo_id    = @nuevo_turno_53 OUTPUT,
    @mensaje     = @msg_turno_53 OUTPUT;
PRINT N'Turno 2024-06-26 10:00:00 Dr/a Álvarez -> ' + @msg_turno_53;
DECLARE @msg_estado_53 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_53,
    @estado      = N'presente',
    @observacion = N'Se deriva a especialista para evaluación adicional.',
    @mensaje     = @msg_estado_53 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_53;
GO
DECLARE @nuevo_turno_54 INT, @msg_turno_54 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 8,
    @id_paciente = 21,
    @fecha_hora  = '2025-04-16 09:00:00',
    @nuevo_id    = @nuevo_turno_54 OUTPUT,
    @mensaje     = @msg_turno_54 OUTPUT;
PRINT N'Turno 2025-04-16 09:00:00 Dr/a Álvarez -> ' + @msg_turno_54;
DECLARE @msg_estado_54 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_54,
    @estado      = N'presente',
    @observacion = N'Se realiza control de rutina, sin hallazgos relevantes.',
    @mensaje     = @msg_estado_54 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_54;
GO
DECLARE @nuevo_turno_55 INT, @msg_turno_55 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 8,
    @id_paciente = 14,
    @fecha_hora  = '2026-07-15 10:00:00',
    @nuevo_id    = @nuevo_turno_55 OUTPUT,
    @mensaje     = @msg_turno_55 OUTPUT;
PRINT N'Turno 2026-07-15 10:00:00 Dr/a Álvarez -> ' + @msg_turno_55;
GO
DECLARE @nuevo_turno_56 INT, @msg_turno_56 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 8,
    @id_paciente = 4,
    @fecha_hora  = '2026-07-08 09:00:00',
    @nuevo_id    = @nuevo_turno_56 OUTPUT,
    @mensaje     = @msg_turno_56 OUTPUT;
PRINT N'Turno 2026-07-08 09:00:00 Dr/a Álvarez -> ' + @msg_turno_56;
GO
DECLARE @nuevo_turno_57 INT, @msg_turno_57 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 9,
    @id_paciente = 20,
    @fecha_hora  = '2024-09-26 11:00:00',
    @nuevo_id    = @nuevo_turno_57 OUTPUT,
    @mensaje     = @msg_turno_57 OUTPUT;
PRINT N'Turno 2024-09-26 11:00:00 Dr/a González -> ' + @msg_turno_57;
DECLARE @msg_estado_57 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_57,
    @estado      = N'presente',
    @observacion = N'Se ajusta medicación y se solicitan estudios complementarios.',
    @mensaje     = @msg_estado_57 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_57;
GO
DECLARE @nuevo_turno_58 INT, @msg_turno_58 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 9,
    @id_paciente = 8,
    @fecha_hora  = '2024-05-09 09:00:00',
    @nuevo_id    = @nuevo_turno_58 OUTPUT,
    @mensaje     = @msg_turno_58 OUTPUT;
PRINT N'Turno 2024-05-09 09:00:00 Dr/a González -> ' + @msg_turno_58;
DECLARE @msg_estado_58 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_58,
    @estado      = N'ausente',
    @mensaje     = @msg_estado_58 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_58;
GO
DECLARE @nuevo_turno_59 INT, @msg_turno_59 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 9,
    @id_paciente = 19,
    @fecha_hora  = '2025-07-03 11:00:00',
    @nuevo_id    = @nuevo_turno_59 OUTPUT,
    @mensaje     = @msg_turno_59 OUTPUT;
PRINT N'Turno 2025-07-03 11:00:00 Dr/a González -> ' + @msg_turno_59;
DECLARE @msg_estado_59 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_59,
    @estado      = N'presente',
    @observacion = N'Buen estado general, se indica control en 6 meses.',
    @mensaje     = @msg_estado_59 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_59;
GO
DECLARE @nuevo_turno_60 INT, @msg_turno_60 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 9,
    @id_paciente = 25,
    @fecha_hora  = '2024-08-05 17:00:00',
    @nuevo_id    = @nuevo_turno_60 OUTPUT,
    @mensaje     = @msg_turno_60 OUTPUT;
PRINT N'Turno 2024-08-05 17:00:00 Dr/a González -> ' + @msg_turno_60;
DECLARE @msg_estado_60 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_60,
    @estado      = N'presente',
    @observacion = N'Se deriva a especialista para evaluación adicional.',
    @mensaje     = @msg_estado_60 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_60;
GO
DECLARE @nuevo_turno_61 INT, @msg_turno_61 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 9,
    @id_paciente = 19,
    @fecha_hora  = '2025-12-22 16:00:00',
    @nuevo_id    = @nuevo_turno_61 OUTPUT,
    @mensaje     = @msg_turno_61 OUTPUT;
PRINT N'Turno 2025-12-22 16:00:00 Dr/a González -> ' + @msg_turno_61;
DECLARE @msg_estado_61 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_61,
    @estado      = N'presente',
    @observacion = N'Paciente estable, continúa con el tratamiento indicado.',
    @mensaje     = @msg_estado_61 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_61;
GO
DECLARE @nuevo_turno_62 INT, @msg_turno_62 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 9,
    @id_paciente = 16,
    @fecha_hora  = '2026-08-10 14:00:00',
    @nuevo_id    = @nuevo_turno_62 OUTPUT,
    @mensaje     = @msg_turno_62 OUTPUT;
PRINT N'Turno 2026-08-10 14:00:00 Dr/a González -> ' + @msg_turno_62;
GO
DECLARE @nuevo_turno_63 INT, @msg_turno_63 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 9,
    @id_paciente = 17,
    @fecha_hora  = '2026-07-30 11:00:00',
    @nuevo_id    = @nuevo_turno_63 OUTPUT,
    @mensaje     = @msg_turno_63 OUTPUT;
PRINT N'Turno 2026-07-30 11:00:00 Dr/a González -> ' + @msg_turno_63;
GO
DECLARE @nuevo_turno_64 INT, @msg_turno_64 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 10,
    @id_paciente = 15,
    @fecha_hora  = '2026-03-05 10:00:00',
    @nuevo_id    = @nuevo_turno_64 OUTPUT,
    @mensaje     = @msg_turno_64 OUTPUT;
PRINT N'Turno 2026-03-05 10:00:00 Dr/a López -> ' + @msg_turno_64;
DECLARE @msg_estado_64 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_64,
    @estado      = N'presente',
    @observacion = N'Se deriva a especialista para evaluación adicional.',
    @mensaje     = @msg_estado_64 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_64;
GO
DECLARE @nuevo_turno_65 INT, @msg_turno_65 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 10,
    @id_paciente = 11,
    @fecha_hora  = '2026-02-20 12:00:00',
    @nuevo_id    = @nuevo_turno_65 OUTPUT,
    @mensaje     = @msg_turno_65 OUTPUT;
PRINT N'Turno 2026-02-20 12:00:00 Dr/a López -> ' + @msg_turno_65;
DECLARE @msg_estado_65 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_65,
    @estado      = N'presente',
    @observacion = N'Se solicitan análisis de laboratorio de control.',
    @mensaje     = @msg_estado_65 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_65;
GO
DECLARE @nuevo_turno_66 INT, @msg_turno_66 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 10,
    @id_paciente = 17,
    @fecha_hora  = '2026-04-24 11:00:00',
    @nuevo_id    = @nuevo_turno_66 OUTPUT,
    @mensaje     = @msg_turno_66 OUTPUT;
PRINT N'Turno 2026-04-24 11:00:00 Dr/a López -> ' + @msg_turno_66;
DECLARE @msg_estado_66 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_66,
    @estado      = N'ausente',
    @mensaje     = @msg_estado_66 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_66;
GO
DECLARE @nuevo_turno_67 INT, @msg_turno_67 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 10,
    @id_paciente = 1,
    @fecha_hora  = '2025-08-19 16:00:00',
    @nuevo_id    = @nuevo_turno_67 OUTPUT,
    @mensaje     = @msg_turno_67 OUTPUT;
PRINT N'Turno 2025-08-19 16:00:00 Dr/a López -> ' + @msg_turno_67;
DECLARE @msg_estado_67 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_67,
    @estado      = N'presente',
    @observacion = N'Se indica reposo relativo y nueva consulta en 15 días.',
    @mensaje     = @msg_estado_67 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_67;
GO
DECLARE @nuevo_turno_68 INT, @msg_turno_68 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 10,
    @id_paciente = 14,
    @fecha_hora  = '2024-07-04 09:00:00',
    @nuevo_id    = @nuevo_turno_68 OUTPUT,
    @mensaje     = @msg_turno_68 OUTPUT;
PRINT N'Turno 2024-07-04 09:00:00 Dr/a López -> ' + @msg_turno_68;
DECLARE @msg_estado_68 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_68,
    @estado      = N'presente',
    @observacion = N'Mejora notoria respecto a la consulta anterior.',
    @mensaje     = @msg_estado_68 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_68;
GO
DECLARE @nuevo_turno_69 INT, @msg_turno_69 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 10,
    @id_paciente = 20,
    @fecha_hora  = '2026-08-04 17:00:00',
    @nuevo_id    = @nuevo_turno_69 OUTPUT,
    @mensaje     = @msg_turno_69 OUTPUT;
PRINT N'Turno 2026-08-04 17:00:00 Dr/a López -> ' + @msg_turno_69;
GO
DECLARE @nuevo_turno_70 INT, @msg_turno_70 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 10,
    @id_paciente = 25,
    @fecha_hora  = '2026-08-04 14:00:00',
    @nuevo_id    = @nuevo_turno_70 OUTPUT,
    @mensaje     = @msg_turno_70 OUTPUT;
PRINT N'Turno 2026-08-04 14:00:00 Dr/a López -> ' + @msg_turno_70;
GO
DECLARE @nuevo_turno_71 INT, @msg_turno_71 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 11,
    @id_paciente = 21,
    @fecha_hora  = '2026-03-04 14:00:00',
    @nuevo_id    = @nuevo_turno_71 OUTPUT,
    @mensaje     = @msg_turno_71 OUTPUT;
PRINT N'Turno 2026-03-04 14:00:00 Dr/a Gutiérrez -> ' + @msg_turno_71;
DECLARE @msg_estado_71 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_71,
    @estado      = N'ausente',
    @mensaje     = @msg_estado_71 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_71;
GO
DECLARE @nuevo_turno_72 INT, @msg_turno_72 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 11,
    @id_paciente = 16,
    @fecha_hora  = '2025-04-21 10:00:00',
    @nuevo_id    = @nuevo_turno_72 OUTPUT,
    @mensaje     = @msg_turno_72 OUTPUT;
PRINT N'Turno 2025-04-21 10:00:00 Dr/a Gutiérrez -> ' + @msg_turno_72;
DECLARE @msg_estado_72 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_72,
    @estado      = N'ausente',
    @mensaje     = @msg_estado_72 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_72;
GO
DECLARE @nuevo_turno_73 INT, @msg_turno_73 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 11,
    @id_paciente = 10,
    @fecha_hora  = '2026-02-25 17:00:00',
    @nuevo_id    = @nuevo_turno_73 OUTPUT,
    @mensaje     = @msg_turno_73 OUTPUT;
PRINT N'Turno 2026-02-25 17:00:00 Dr/a Gutiérrez -> ' + @msg_turno_73;
DECLARE @msg_estado_73 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_73,
    @estado      = N'presente',
    @observacion = N'Se deriva a especialista para evaluación adicional.',
    @mensaje     = @msg_estado_73 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_73;
GO
DECLARE @nuevo_turno_74 INT, @msg_turno_74 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 11,
    @id_paciente = 14,
    @fecha_hora  = '2024-02-19 10:00:00',
    @nuevo_id    = @nuevo_turno_74 OUTPUT,
    @mensaje     = @msg_turno_74 OUTPUT;
PRINT N'Turno 2024-02-19 10:00:00 Dr/a Gutiérrez -> ' + @msg_turno_74;
DECLARE @msg_estado_74 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_74,
    @estado      = N'ausente',
    @mensaje     = @msg_estado_74 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_74;
GO
DECLARE @nuevo_turno_75 INT, @msg_turno_75 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 11,
    @id_paciente = 16,
    @fecha_hora  = '2025-07-07 09:00:00',
    @nuevo_id    = @nuevo_turno_75 OUTPUT,
    @mensaje     = @msg_turno_75 OUTPUT;
PRINT N'Turno 2025-07-07 09:00:00 Dr/a Gutiérrez -> ' + @msg_turno_75;
DECLARE @msg_estado_75 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_75,
    @estado      = N'presente',
    @observacion = N'Paciente estable, continúa con el tratamiento indicado.',
    @mensaje     = @msg_estado_75 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_75;
GO
DECLARE @nuevo_turno_76 INT, @msg_turno_76 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 11,
    @id_paciente = 13,
    @fecha_hora  = '2026-07-01 15:00:00',
    @nuevo_id    = @nuevo_turno_76 OUTPUT,
    @mensaje     = @msg_turno_76 OUTPUT;
PRINT N'Turno 2026-07-01 15:00:00 Dr/a Gutiérrez -> ' + @msg_turno_76;
DECLARE @msg_estado_76 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_76,
    @estado      = N'ausente',
    @mensaje     = @msg_estado_76 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_76;
GO
DECLARE @nuevo_turno_77 INT, @msg_turno_77 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 11,
    @id_paciente = 7,
    @fecha_hora  = '2026-08-10 09:00:00',
    @nuevo_id    = @nuevo_turno_77 OUTPUT,
    @mensaje     = @msg_turno_77 OUTPUT;
PRINT N'Turno 2026-08-10 09:00:00 Dr/a Gutiérrez -> ' + @msg_turno_77;
GO
DECLARE @nuevo_turno_78 INT, @msg_turno_78 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 12,
    @id_paciente = 8,
    @fecha_hora  = '2024-04-30 11:00:00',
    @nuevo_id    = @nuevo_turno_78 OUTPUT,
    @mensaje     = @msg_turno_78 OUTPUT;
PRINT N'Turno 2024-04-30 11:00:00 Dr/a Díaz -> ' + @msg_turno_78;
DECLARE @msg_estado_78 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_78,
    @estado      = N'ausente',
    @mensaje     = @msg_estado_78 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_78;
GO
DECLARE @nuevo_turno_79 INT, @msg_turno_79 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 12,
    @id_paciente = 14,
    @fecha_hora  = '2025-09-04 16:00:00',
    @nuevo_id    = @nuevo_turno_79 OUTPUT,
    @mensaje     = @msg_turno_79 OUTPUT;
PRINT N'Turno 2025-09-04 16:00:00 Dr/a Díaz -> ' + @msg_turno_79;
DECLARE @msg_estado_79 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_79,
    @estado      = N'presente',
    @observacion = N'Se indica reposo relativo y nueva consulta en 15 días.',
    @mensaje     = @msg_estado_79 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_79;
GO
DECLARE @nuevo_turno_80 INT, @msg_turno_80 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 12,
    @id_paciente = 23,
    @fecha_hora  = '2025-05-20 11:00:00',
    @nuevo_id    = @nuevo_turno_80 OUTPUT,
    @mensaje     = @msg_turno_80 OUTPUT;
PRINT N'Turno 2025-05-20 11:00:00 Dr/a Díaz -> ' + @msg_turno_80;
DECLARE @msg_estado_80 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_80,
    @estado      = N'ausente',
    @mensaje     = @msg_estado_80 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_80;
GO
DECLARE @nuevo_turno_81 INT, @msg_turno_81 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 12,
    @id_paciente = 13,
    @fecha_hora  = '2024-09-26 17:00:00',
    @nuevo_id    = @nuevo_turno_81 OUTPUT,
    @mensaje     = @msg_turno_81 OUTPUT;
PRINT N'Turno 2024-09-26 17:00:00 Dr/a Díaz -> ' + @msg_turno_81;
DECLARE @msg_estado_81 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_81,
    @estado      = N'presente',
    @observacion = N'Paciente estable, continúa con el tratamiento indicado.',
    @mensaje     = @msg_estado_81 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_81;
GO
DECLARE @nuevo_turno_82 INT, @msg_turno_82 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 12,
    @id_paciente = 16,
    @fecha_hora  = '2025-09-11 16:00:00',
    @nuevo_id    = @nuevo_turno_82 OUTPUT,
    @mensaje     = @msg_turno_82 OUTPUT;
PRINT N'Turno 2025-09-11 16:00:00 Dr/a Díaz -> ' + @msg_turno_82;
DECLARE @msg_estado_82 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_82,
    @estado      = N'ausente',
    @mensaje     = @msg_estado_82 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_82;
GO
DECLARE @nuevo_turno_83 INT, @msg_turno_83 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 12,
    @id_paciente = 5,
    @fecha_hora  = '2026-08-06 16:00:00',
    @nuevo_id    = @nuevo_turno_83 OUTPUT,
    @mensaje     = @msg_turno_83 OUTPUT;
PRINT N'Turno 2026-08-06 16:00:00 Dr/a Díaz -> ' + @msg_turno_83;
GO
DECLARE @nuevo_turno_84 INT, @msg_turno_84 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 12,
    @id_paciente = 17,
    @fecha_hora  = '2026-07-14 12:00:00',
    @nuevo_id    = @nuevo_turno_84 OUTPUT,
    @mensaje     = @msg_turno_84 OUTPUT;
PRINT N'Turno 2026-07-14 12:00:00 Dr/a Díaz -> ' + @msg_turno_84;
GO
DECLARE @nuevo_turno_85 INT, @msg_turno_85 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 13,
    @id_paciente = 11,
    @fecha_hora  = '2025-08-14 09:00:00',
    @nuevo_id    = @nuevo_turno_85 OUTPUT,
    @mensaje     = @msg_turno_85 OUTPUT;
PRINT N'Turno 2025-08-14 09:00:00 Dr/a Aguirre -> ' + @msg_turno_85;
DECLARE @msg_estado_85 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_85,
    @estado      = N'presente',
    @observacion = N'Se indica reposo relativo y nueva consulta en 15 días.',
    @mensaje     = @msg_estado_85 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_85;
GO
DECLARE @nuevo_turno_86 INT, @msg_turno_86 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 13,
    @id_paciente = 18,
    @fecha_hora  = '2024-06-28 17:00:00',
    @nuevo_id    = @nuevo_turno_86 OUTPUT,
    @mensaje     = @msg_turno_86 OUTPUT;
PRINT N'Turno 2024-06-28 17:00:00 Dr/a Aguirre -> ' + @msg_turno_86;
DECLARE @msg_estado_86 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_86,
    @estado      = N'presente',
    @observacion = N'Se ajusta medicación y se solicitan estudios complementarios.',
    @mensaje     = @msg_estado_86 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_86;
GO
DECLARE @nuevo_turno_87 INT, @msg_turno_87 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 13,
    @id_paciente = 8,
    @fecha_hora  = '2024-09-11 12:00:00',
    @nuevo_id    = @nuevo_turno_87 OUTPUT,
    @mensaje     = @msg_turno_87 OUTPUT;
PRINT N'Turno 2024-09-11 12:00:00 Dr/a Aguirre -> ' + @msg_turno_87;
DECLARE @msg_estado_87 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_87,
    @estado      = N'presente',
    @observacion = N'Se deriva a especialista para evaluación adicional.',
    @mensaje     = @msg_estado_87 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_87;
GO
DECLARE @nuevo_turno_88 INT, @msg_turno_88 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 13,
    @id_paciente = 8,
    @fecha_hora  = '2024-10-03 09:00:00',
    @nuevo_id    = @nuevo_turno_88 OUTPUT,
    @mensaje     = @msg_turno_88 OUTPUT;
PRINT N'Turno 2024-10-03 09:00:00 Dr/a Aguirre -> ' + @msg_turno_88;
DECLARE @msg_estado_88 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_88,
    @estado      = N'ausente',
    @mensaje     = @msg_estado_88 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_88;
GO
DECLARE @nuevo_turno_89 INT, @msg_turno_89 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 13,
    @id_paciente = 14,
    @fecha_hora  = '2025-04-18 16:00:00',
    @nuevo_id    = @nuevo_turno_89 OUTPUT,
    @mensaje     = @msg_turno_89 OUTPUT;
PRINT N'Turno 2025-04-18 16:00:00 Dr/a Aguirre -> ' + @msg_turno_89;
DECLARE @msg_estado_89 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_89,
    @estado      = N'ausente',
    @mensaje     = @msg_estado_89 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_89;
GO
DECLARE @nuevo_turno_90 INT, @msg_turno_90 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 13,
    @id_paciente = 25,
    @fecha_hora  = '2026-07-30 11:00:00',
    @nuevo_id    = @nuevo_turno_90 OUTPUT,
    @mensaje     = @msg_turno_90 OUTPUT;
PRINT N'Turno 2026-07-30 11:00:00 Dr/a Aguirre -> ' + @msg_turno_90;
GO
DECLARE @nuevo_turno_91 INT, @msg_turno_91 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 13,
    @id_paciente = 21,
    @fecha_hora  = '2026-07-29 12:00:00',
    @nuevo_id    = @nuevo_turno_91 OUTPUT,
    @mensaje     = @msg_turno_91 OUTPUT;
PRINT N'Turno 2026-07-29 12:00:00 Dr/a Aguirre -> ' + @msg_turno_91;
GO
DECLARE @nuevo_turno_92 INT, @msg_turno_92 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 14,
    @id_paciente = 20,
    @fecha_hora  = '2026-03-05 10:00:00',
    @nuevo_id    = @nuevo_turno_92 OUTPUT,
    @mensaje     = @msg_turno_92 OUTPUT;
PRINT N'Turno 2026-03-05 10:00:00 Dr/a Suárez -> ' + @msg_turno_92;
DECLARE @msg_estado_92 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_92,
    @estado      = N'presente',
    @observacion = N'Se indica reposo relativo y nueva consulta en 15 días.',
    @mensaje     = @msg_estado_92 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_92;
GO
DECLARE @nuevo_turno_93 INT, @msg_turno_93 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 14,
    @id_paciente = 19,
    @fecha_hora  = '2024-02-19 14:00:00',
    @nuevo_id    = @nuevo_turno_93 OUTPUT,
    @mensaje     = @msg_turno_93 OUTPUT;
PRINT N'Turno 2024-02-19 14:00:00 Dr/a Suárez -> ' + @msg_turno_93;
DECLARE @msg_estado_93 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_93,
    @estado      = N'presente',
    @observacion = N'Se indica reposo relativo y nueva consulta en 15 días.',
    @mensaje     = @msg_estado_93 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_93;
GO
DECLARE @nuevo_turno_94 INT, @msg_turno_94 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 14,
    @id_paciente = 21,
    @fecha_hora  = '2024-04-08 16:00:00',
    @nuevo_id    = @nuevo_turno_94 OUTPUT,
    @mensaje     = @msg_turno_94 OUTPUT;
PRINT N'Turno 2024-04-08 16:00:00 Dr/a Suárez -> ' + @msg_turno_94;
DECLARE @msg_estado_94 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_94,
    @estado      = N'presente',
    @observacion = N'Se deriva a especialista para evaluación adicional.',
    @mensaje     = @msg_estado_94 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_94;
GO
DECLARE @nuevo_turno_95 INT, @msg_turno_95 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 14,
    @id_paciente = 22,
    @fecha_hora  = '2025-10-27 17:00:00',
    @nuevo_id    = @nuevo_turno_95 OUTPUT,
    @mensaje     = @msg_turno_95 OUTPUT;
PRINT N'Turno 2025-10-27 17:00:00 Dr/a Suárez -> ' + @msg_turno_95;
DECLARE @msg_estado_95 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_95,
    @estado      = N'presente',
    @observacion = N'Se indica reposo relativo y nueva consulta en 15 días.',
    @mensaje     = @msg_estado_95 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_95;
GO
DECLARE @nuevo_turno_96 INT, @msg_turno_96 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 14,
    @id_paciente = 10,
    @fecha_hora  = '2025-03-13 12:00:00',
    @nuevo_id    = @nuevo_turno_96 OUTPUT,
    @mensaje     = @msg_turno_96 OUTPUT;
PRINT N'Turno 2025-03-13 12:00:00 Dr/a Suárez -> ' + @msg_turno_96;
DECLARE @msg_estado_96 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_96,
    @estado      = N'presente',
    @observacion = N'Paciente estable, continúa con el tratamiento indicado.',
    @mensaje     = @msg_estado_96 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_96;
GO
DECLARE @nuevo_turno_97 INT, @msg_turno_97 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 14,
    @id_paciente = 3,
    @fecha_hora  = '2026-07-02 10:00:00',
    @nuevo_id    = @nuevo_turno_97 OUTPUT,
    @mensaje     = @msg_turno_97 OUTPUT;
PRINT N'Turno 2026-07-02 10:00:00 Dr/a Suárez -> ' + @msg_turno_97;
GO
DECLARE @nuevo_turno_98 INT, @msg_turno_98 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 14,
    @id_paciente = 15,
    @fecha_hora  = '2026-08-20 12:00:00',
    @nuevo_id    = @nuevo_turno_98 OUTPUT,
    @mensaje     = @msg_turno_98 OUTPUT;
PRINT N'Turno 2026-08-20 12:00:00 Dr/a Suárez -> ' + @msg_turno_98;
GO
DECLARE @nuevo_turno_99 INT, @msg_turno_99 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 15,
    @id_paciente = 20,
    @fecha_hora  = '2025-06-17 17:00:00',
    @nuevo_id    = @nuevo_turno_99 OUTPUT,
    @mensaje     = @msg_turno_99 OUTPUT;
PRINT N'Turno 2025-06-17 17:00:00 Dr/a Rojas -> ' + @msg_turno_99;
DECLARE @msg_estado_99 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_99,
    @estado      = N'ausente',
    @mensaje     = @msg_estado_99 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_99;
GO
DECLARE @nuevo_turno_100 INT, @msg_turno_100 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 15,
    @id_paciente = 10,
    @fecha_hora  = '2026-03-24 16:00:00',
    @nuevo_id    = @nuevo_turno_100 OUTPUT,
    @mensaje     = @msg_turno_100 OUTPUT;
PRINT N'Turno 2026-03-24 16:00:00 Dr/a Rojas -> ' + @msg_turno_100;
DECLARE @msg_estado_100 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_100,
    @estado      = N'ausente',
    @mensaje     = @msg_estado_100 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_100;
GO
DECLARE @nuevo_turno_101 INT, @msg_turno_101 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 15,
    @id_paciente = 8,
    @fecha_hora  = '2025-11-21 12:00:00',
    @nuevo_id    = @nuevo_turno_101 OUTPUT,
    @mensaje     = @msg_turno_101 OUTPUT;
PRINT N'Turno 2025-11-21 12:00:00 Dr/a Rojas -> ' + @msg_turno_101;
DECLARE @msg_estado_101 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_101,
    @estado      = N'presente',
    @observacion = N'Mejora notoria respecto a la consulta anterior.',
    @mensaje     = @msg_estado_101 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_101;
GO
DECLARE @nuevo_turno_102 INT, @msg_turno_102 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 15,
    @id_paciente = 8,
    @fecha_hora  = '2025-02-28 12:00:00',
    @nuevo_id    = @nuevo_turno_102 OUTPUT,
    @mensaje     = @msg_turno_102 OUTPUT;
PRINT N'Turno 2025-02-28 12:00:00 Dr/a Rojas -> ' + @msg_turno_102;
DECLARE @msg_estado_102 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_102,
    @estado      = N'presente',
    @observacion = N'Se deriva a especialista para evaluación adicional.',
    @mensaje     = @msg_estado_102 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_102;
GO
DECLARE @nuevo_turno_103 INT, @msg_turno_103 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 15,
    @id_paciente = 22,
    @fecha_hora  = '2025-06-10 16:00:00',
    @nuevo_id    = @nuevo_turno_103 OUTPUT,
    @mensaje     = @msg_turno_103 OUTPUT;
PRINT N'Turno 2025-06-10 16:00:00 Dr/a Rojas -> ' + @msg_turno_103;
DECLARE @msg_estado_103 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_103,
    @estado      = N'ausente',
    @mensaje     = @msg_estado_103 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_103;
GO
DECLARE @nuevo_turno_104 INT, @msg_turno_104 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 15,
    @id_paciente = 25,
    @fecha_hora  = '2026-08-28 12:00:00',
    @nuevo_id    = @nuevo_turno_104 OUTPUT,
    @mensaje     = @msg_turno_104 OUTPUT;
PRINT N'Turno 2026-08-28 12:00:00 Dr/a Rojas -> ' + @msg_turno_104;
GO
DECLARE @nuevo_turno_105 INT, @msg_turno_105 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 15,
    @id_paciente = 22,
    @fecha_hora  = '2026-06-23 14:00:00',
    @nuevo_id    = @nuevo_turno_105 OUTPUT,
    @mensaje     = @msg_turno_105 OUTPUT;
PRINT N'Turno 2026-06-23 14:00:00 Dr/a Rojas -> ' + @msg_turno_105;
DECLARE @msg_estado_105 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_105,
    @estado      = N'presente',
    @observacion = N'Paciente refiere mejoría; se recomienda continuar el tratamiento y regresar en un mes.',
    @mensaje     = @msg_estado_105 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_105;
GO
DECLARE @nuevo_turno_106 INT, @msg_turno_106 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 16,
    @id_paciente = 17,
    @fecha_hora  = '2024-09-05 11:00:00',
    @nuevo_id    = @nuevo_turno_106 OUTPUT,
    @mensaje     = @msg_turno_106 OUTPUT;
PRINT N'Turno 2024-09-05 11:00:00 Dr/a Medina -> ' + @msg_turno_106;
DECLARE @msg_estado_106 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_106,
    @estado      = N'ausente',
    @mensaje     = @msg_estado_106 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_106;
GO
DECLARE @nuevo_turno_107 INT, @msg_turno_107 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 16,
    @id_paciente = 6,
    @fecha_hora  = '2024-03-11 11:00:00',
    @nuevo_id    = @nuevo_turno_107 OUTPUT,
    @mensaje     = @msg_turno_107 OUTPUT;
PRINT N'Turno 2024-03-11 11:00:00 Dr/a Medina -> ' + @msg_turno_107;
DECLARE @msg_estado_107 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_107,
    @estado      = N'presente',
    @observacion = N'Se indica reposo relativo y nueva consulta en 15 días.',
    @mensaje     = @msg_estado_107 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_107;
GO
DECLARE @nuevo_turno_108 INT, @msg_turno_108 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 16,
    @id_paciente = 10,
    @fecha_hora  = '2024-02-28 16:00:00',
    @nuevo_id    = @nuevo_turno_108 OUTPUT,
    @mensaje     = @msg_turno_108 OUTPUT;
PRINT N'Turno 2024-02-28 16:00:00 Dr/a Medina -> ' + @msg_turno_108;
DECLARE @msg_estado_108 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_108,
    @estado      = N'ausente',
    @mensaje     = @msg_estado_108 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_108;
GO
DECLARE @nuevo_turno_109 INT, @msg_turno_109 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 16,
    @id_paciente = 11,
    @fecha_hora  = '2024-08-22 09:00:00',
    @nuevo_id    = @nuevo_turno_109 OUTPUT,
    @mensaje     = @msg_turno_109 OUTPUT;
PRINT N'Turno 2024-08-22 09:00:00 Dr/a Medina -> ' + @msg_turno_109;
DECLARE @msg_estado_109 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_109,
    @estado      = N'ausente',
    @mensaje     = @msg_estado_109 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_109;
GO
DECLARE @nuevo_turno_110 INT, @msg_turno_110 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 16,
    @id_paciente = 15,
    @fecha_hora  = '2025-08-06 17:00:00',
    @nuevo_id    = @nuevo_turno_110 OUTPUT,
    @mensaje     = @msg_turno_110 OUTPUT;
PRINT N'Turno 2025-08-06 17:00:00 Dr/a Medina -> ' + @msg_turno_110;
DECLARE @msg_estado_110 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_110,
    @estado      = N'ausente',
    @mensaje     = @msg_estado_110 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_110;
GO
DECLARE @nuevo_turno_111 INT, @msg_turno_111 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 16,
    @id_paciente = 5,
    @fecha_hora  = '2026-07-13 10:00:00',
    @nuevo_id    = @nuevo_turno_111 OUTPUT,
    @mensaje     = @msg_turno_111 OUTPUT;
PRINT N'Turno 2026-07-13 10:00:00 Dr/a Medina -> ' + @msg_turno_111;
GO
DECLARE @nuevo_turno_112 INT, @msg_turno_112 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 16,
    @id_paciente = 25,
    @fecha_hora  = '2026-07-23 11:00:00',
    @nuevo_id    = @nuevo_turno_112 OUTPUT,
    @mensaje     = @msg_turno_112 OUTPUT;
PRINT N'Turno 2026-07-23 11:00:00 Dr/a Medina -> ' + @msg_turno_112;
GO
DECLARE @nuevo_turno_113 INT, @msg_turno_113 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 17,
    @id_paciente = 23,
    @fecha_hora  = '2025-12-09 11:00:00',
    @nuevo_id    = @nuevo_turno_113 OUTPUT,
    @mensaje     = @msg_turno_113 OUTPUT;
PRINT N'Turno 2025-12-09 11:00:00 Dr/a Castro -> ' + @msg_turno_113;
DECLARE @msg_estado_113 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_113,
    @estado      = N'presente',
    @observacion = N'Se solicitan análisis de laboratorio de control.',
    @mensaje     = @msg_estado_113 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_113;
GO
DECLARE @nuevo_turno_114 INT, @msg_turno_114 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 17,
    @id_paciente = 4,
    @fecha_hora  = '2025-12-09 09:00:00',
    @nuevo_id    = @nuevo_turno_114 OUTPUT,
    @mensaje     = @msg_turno_114 OUTPUT;
PRINT N'Turno 2025-12-09 09:00:00 Dr/a Castro -> ' + @msg_turno_114;
DECLARE @msg_estado_114 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_114,
    @estado      = N'presente',
    @observacion = N'Buen estado general, se indica control en 6 meses.',
    @mensaje     = @msg_estado_114 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_114;
GO
DECLARE @nuevo_turno_115 INT, @msg_turno_115 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 17,
    @id_paciente = 10,
    @fecha_hora  = '2024-08-08 17:00:00',
    @nuevo_id    = @nuevo_turno_115 OUTPUT,
    @mensaje     = @msg_turno_115 OUTPUT;
PRINT N'Turno 2024-08-08 17:00:00 Dr/a Castro -> ' + @msg_turno_115;
DECLARE @msg_estado_115 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_115,
    @estado      = N'ausente',
    @mensaje     = @msg_estado_115 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_115;
GO
DECLARE @nuevo_turno_116 INT, @msg_turno_116 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 17,
    @id_paciente = 4,
    @fecha_hora  = '2025-04-17 17:00:00',
    @nuevo_id    = @nuevo_turno_116 OUTPUT,
    @mensaje     = @msg_turno_116 OUTPUT;
PRINT N'Turno 2025-04-17 17:00:00 Dr/a Castro -> ' + @msg_turno_116;
DECLARE @msg_estado_116 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_116,
    @estado      = N'presente',
    @observacion = N'Paciente estable, continúa con el tratamiento indicado.',
    @mensaje     = @msg_estado_116 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_116;
GO
DECLARE @nuevo_turno_117 INT, @msg_turno_117 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 17,
    @id_paciente = 13,
    @fecha_hora  = '2024-07-11 15:00:00',
    @nuevo_id    = @nuevo_turno_117 OUTPUT,
    @mensaje     = @msg_turno_117 OUTPUT;
PRINT N'Turno 2024-07-11 15:00:00 Dr/a Castro -> ' + @msg_turno_117;
DECLARE @msg_estado_117 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_117,
    @estado      = N'presente',
    @observacion = N'Se solicitan análisis de laboratorio de control.',
    @mensaje     = @msg_estado_117 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_117;
GO
DECLARE @nuevo_turno_118 INT, @msg_turno_118 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 17,
    @id_paciente = 19,
    @fecha_hora  = '2026-06-18 16:00:00',
    @nuevo_id    = @nuevo_turno_118 OUTPUT,
    @mensaje     = @msg_turno_118 OUTPUT;
PRINT N'Turno 2026-06-18 16:00:00 Dr/a Castro -> ' + @msg_turno_118;
DECLARE @msg_estado_118 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_118,
    @estado      = N'ausente',
    @mensaje     = @msg_estado_118 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_118;
GO
DECLARE @nuevo_turno_119 INT, @msg_turno_119 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 17,
    @id_paciente = 24,
    @fecha_hora  = '2026-06-30 12:00:00',
    @nuevo_id    = @nuevo_turno_119 OUTPUT,
    @mensaje     = @msg_turno_119 OUTPUT;
PRINT N'Turno 2026-06-30 12:00:00 Dr/a Castro -> ' + @msg_turno_119;
DECLARE @msg_estado_119 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_119,
    @estado      = N'presente',
    @observacion = N'Se realiza evaluación completa; paciente responde bien al tratamiento indicado en consulta previa.',
    @mensaje     = @msg_estado_119 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_119;
GO
DECLARE @nuevo_turno_120 INT, @msg_turno_120 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 18,
    @id_paciente = 15,
    @fecha_hora  = '2026-01-14 09:00:00',
    @nuevo_id    = @nuevo_turno_120 OUTPUT,
    @mensaje     = @msg_turno_120 OUTPUT;
PRINT N'Turno 2026-01-14 09:00:00 Dr/a Aguirre -> ' + @msg_turno_120;
DECLARE @msg_estado_120 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_120,
    @estado      = N'presente',
    @observacion = N'Se realiza control de rutina, sin hallazgos relevantes.',
    @mensaje     = @msg_estado_120 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_120;
GO
DECLARE @nuevo_turno_121 INT, @msg_turno_121 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 18,
    @id_paciente = 21,
    @fecha_hora  = '2026-01-02 16:00:00',
    @nuevo_id    = @nuevo_turno_121 OUTPUT,
    @mensaje     = @msg_turno_121 OUTPUT;
PRINT N'Turno 2026-01-02 16:00:00 Dr/a Aguirre -> ' + @msg_turno_121;
DECLARE @msg_estado_121 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_121,
    @estado      = N'presente',
    @observacion = N'Buen estado general, se indica control en 6 meses.',
    @mensaje     = @msg_estado_121 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_121;
GO
DECLARE @nuevo_turno_122 INT, @msg_turno_122 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 18,
    @id_paciente = 2,
    @fecha_hora  = '2025-10-22 10:00:00',
    @nuevo_id    = @nuevo_turno_122 OUTPUT,
    @mensaje     = @msg_turno_122 OUTPUT;
PRINT N'Turno 2025-10-22 10:00:00 Dr/a Aguirre -> ' + @msg_turno_122;
DECLARE @msg_estado_122 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_122,
    @estado      = N'ausente',
    @mensaje     = @msg_estado_122 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_122;
GO
DECLARE @nuevo_turno_123 INT, @msg_turno_123 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 18,
    @id_paciente = 8,
    @fecha_hora  = '2026-03-06 15:00:00',
    @nuevo_id    = @nuevo_turno_123 OUTPUT,
    @mensaje     = @msg_turno_123 OUTPUT;
PRINT N'Turno 2026-03-06 15:00:00 Dr/a Aguirre -> ' + @msg_turno_123;
DECLARE @msg_estado_123 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_123,
    @estado      = N'ausente',
    @mensaje     = @msg_estado_123 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_123;
GO
DECLARE @nuevo_turno_124 INT, @msg_turno_124 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 18,
    @id_paciente = 19,
    @fecha_hora  = '2024-06-28 16:00:00',
    @nuevo_id    = @nuevo_turno_124 OUTPUT,
    @mensaje     = @msg_turno_124 OUTPUT;
PRINT N'Turno 2024-06-28 16:00:00 Dr/a Aguirre -> ' + @msg_turno_124;
DECLARE @msg_estado_124 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_124,
    @estado      = N'presente',
    @observacion = N'Se realiza control de rutina, sin hallazgos relevantes.',
    @mensaje     = @msg_estado_124 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_124;
GO
DECLARE @nuevo_turno_125 INT, @msg_turno_125 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 18,
    @id_paciente = 19,
    @fecha_hora  = '2026-06-19 17:00:00',
    @nuevo_id    = @nuevo_turno_125 OUTPUT,
    @mensaje     = @msg_turno_125 OUTPUT;
PRINT N'Turno 2026-06-19 17:00:00 Dr/a Aguirre -> ' + @msg_turno_125;
DECLARE @msg_estado_125 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_125,
    @estado      = N'ausente',
    @mensaje     = @msg_estado_125 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_125;
GO
DECLARE @nuevo_turno_126 INT, @msg_turno_126 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 18,
    @id_paciente = 7,
    @fecha_hora  = '2026-07-10 14:00:00',
    @nuevo_id    = @nuevo_turno_126 OUTPUT,
    @mensaje     = @msg_turno_126 OUTPUT;
PRINT N'Turno 2026-07-10 14:00:00 Dr/a Aguirre -> ' + @msg_turno_126;
GO
DECLARE @nuevo_turno_127 INT, @msg_turno_127 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 19,
    @id_paciente = 2,
    @fecha_hora  = '2025-08-14 10:00:00',
    @nuevo_id    = @nuevo_turno_127 OUTPUT,
    @mensaje     = @msg_turno_127 OUTPUT;
PRINT N'Turno 2025-08-14 10:00:00 Dr/a Castro -> ' + @msg_turno_127;
DECLARE @msg_estado_127 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_127,
    @estado      = N'presente',
    @observacion = N'Se solicitan análisis de laboratorio de control.',
    @mensaje     = @msg_estado_127 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_127;
GO
DECLARE @nuevo_turno_128 INT, @msg_turno_128 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 19,
    @id_paciente = 17,
    @fecha_hora  = '2024-01-02 10:00:00',
    @nuevo_id    = @nuevo_turno_128 OUTPUT,
    @mensaje     = @msg_turno_128 OUTPUT;
PRINT N'Turno 2024-01-02 10:00:00 Dr/a Castro -> ' + @msg_turno_128;
DECLARE @msg_estado_128 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_128,
    @estado      = N'presente',
    @observacion = N'Se ajusta medicación y se solicitan estudios complementarios.',
    @mensaje     = @msg_estado_128 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_128;
GO
DECLARE @nuevo_turno_129 INT, @msg_turno_129 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 19,
    @id_paciente = 16,
    @fecha_hora  = '2024-08-22 11:00:00',
    @nuevo_id    = @nuevo_turno_129 OUTPUT,
    @mensaje     = @msg_turno_129 OUTPUT;
PRINT N'Turno 2024-08-22 11:00:00 Dr/a Castro -> ' + @msg_turno_129;
DECLARE @msg_estado_129 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_129,
    @estado      = N'presente',
    @observacion = N'Mejora notoria respecto a la consulta anterior.',
    @mensaje     = @msg_estado_129 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_129;
GO
DECLARE @nuevo_turno_130 INT, @msg_turno_130 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 19,
    @id_paciente = 17,
    @fecha_hora  = '2024-07-18 09:00:00',
    @nuevo_id    = @nuevo_turno_130 OUTPUT,
    @mensaje     = @msg_turno_130 OUTPUT;
PRINT N'Turno 2024-07-18 09:00:00 Dr/a Castro -> ' + @msg_turno_130;
DECLARE @msg_estado_130 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_130,
    @estado      = N'presente',
    @observacion = N'Se indica reposo relativo y nueva consulta en 15 días.',
    @mensaje     = @msg_estado_130 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_130;
GO
DECLARE @nuevo_turno_131 INT, @msg_turno_131 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 19,
    @id_paciente = 17,
    @fecha_hora  = '2024-01-25 11:00:00',
    @nuevo_id    = @nuevo_turno_131 OUTPUT,
    @mensaje     = @msg_turno_131 OUTPUT;
PRINT N'Turno 2024-01-25 11:00:00 Dr/a Castro -> ' + @msg_turno_131;
DECLARE @msg_estado_131 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_131,
    @estado      = N'presente',
    @observacion = N'Buen estado general, se indica control en 6 meses.',
    @mensaje     = @msg_estado_131 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_131;
GO
DECLARE @nuevo_turno_132 INT, @msg_turno_132 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 19,
    @id_paciente = 24,
    @fecha_hora  = '2026-08-20 11:00:00',
    @nuevo_id    = @nuevo_turno_132 OUTPUT,
    @mensaje     = @msg_turno_132 OUTPUT;
PRINT N'Turno 2026-08-20 11:00:00 Dr/a Castro -> ' + @msg_turno_132;
GO
DECLARE @nuevo_turno_133 INT, @msg_turno_133 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 19,
    @id_paciente = 22,
    @fecha_hora  = '2026-07-02 11:00:00',
    @nuevo_id    = @nuevo_turno_133 OUTPUT,
    @mensaje     = @msg_turno_133 OUTPUT;
PRINT N'Turno 2026-07-02 11:00:00 Dr/a Castro -> ' + @msg_turno_133;
GO
DECLARE @nuevo_turno_134 INT, @msg_turno_134 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 20,
    @id_paciente = 15,
    @fecha_hora  = '2026-03-31 14:00:00',
    @nuevo_id    = @nuevo_turno_134 OUTPUT,
    @mensaje     = @msg_turno_134 OUTPUT;
PRINT N'Turno 2026-03-31 14:00:00 Dr/a Acosta -> ' + @msg_turno_134;
DECLARE @msg_estado_134 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_134,
    @estado      = N'presente',
    @observacion = N'Se solicitan análisis de laboratorio de control.',
    @mensaje     = @msg_estado_134 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_134;
GO
DECLARE @nuevo_turno_135 INT, @msg_turno_135 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 20,
    @id_paciente = 4,
    @fecha_hora  = '2026-05-08 12:00:00',
    @nuevo_id    = @nuevo_turno_135 OUTPUT,
    @mensaje     = @msg_turno_135 OUTPUT;
PRINT N'Turno 2026-05-08 12:00:00 Dr/a Acosta -> ' + @msg_turno_135;
DECLARE @msg_estado_135 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_135,
    @estado      = N'ausente',
    @mensaje     = @msg_estado_135 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_135;
GO
DECLARE @nuevo_turno_136 INT, @msg_turno_136 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 20,
    @id_paciente = 4,
    @fecha_hora  = '2024-07-09 17:00:00',
    @nuevo_id    = @nuevo_turno_136 OUTPUT,
    @mensaje     = @msg_turno_136 OUTPUT;
PRINT N'Turno 2024-07-09 17:00:00 Dr/a Acosta -> ' + @msg_turno_136;
DECLARE @msg_estado_136 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_136,
    @estado      = N'ausente',
    @mensaje     = @msg_estado_136 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_136;
GO
DECLARE @nuevo_turno_137 INT, @msg_turno_137 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 20,
    @id_paciente = 21,
    @fecha_hora  = '2024-05-07 14:00:00',
    @nuevo_id    = @nuevo_turno_137 OUTPUT,
    @mensaje     = @msg_turno_137 OUTPUT;
PRINT N'Turno 2024-05-07 14:00:00 Dr/a Acosta -> ' + @msg_turno_137;
DECLARE @msg_estado_137 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_137,
    @estado      = N'ausente',
    @mensaje     = @msg_estado_137 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_137;
GO
DECLARE @nuevo_turno_138 INT, @msg_turno_138 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 20,
    @id_paciente = 18,
    @fecha_hora  = '2024-09-17 14:00:00',
    @nuevo_id    = @nuevo_turno_138 OUTPUT,
    @mensaje     = @msg_turno_138 OUTPUT;
PRINT N'Turno 2024-09-17 14:00:00 Dr/a Acosta -> ' + @msg_turno_138;
DECLARE @msg_estado_138 NVARCHAR(200);
EXEC [dbo].[sp_Turno_RegistrarEstado]
    @id_turno    = @nuevo_turno_138,
    @estado      = N'ausente',
    @mensaje     = @msg_estado_138 OUTPUT;
PRINT N'  Estado registrado -> ' + @msg_estado_138;
GO
DECLARE @nuevo_turno_139 INT, @msg_turno_139 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 20,
    @id_paciente = 7,
    @fecha_hora  = '2026-07-17 11:00:00',
    @nuevo_id    = @nuevo_turno_139 OUTPUT,
    @mensaje     = @msg_turno_139 OUTPUT;
PRINT N'Turno 2026-07-17 11:00:00 Dr/a Acosta -> ' + @msg_turno_139;
GO
DECLARE @nuevo_turno_140 INT, @msg_turno_140 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 20,
    @id_paciente = 14,
    @fecha_hora  = '2026-08-25 16:00:00',
    @nuevo_id    = @nuevo_turno_140 OUTPUT,
    @mensaje     = @msg_turno_140 OUTPUT;
PRINT N'Turno 2026-08-25 16:00:00 Dr/a Acosta -> ' + @msg_turno_140;
GO

DECLARE @nuevo_turno_141 INT, @msg_turno_141 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 1,
    @id_paciente = 1,
    @fecha_hora  = '2026-07-06 09:00:00',
    @nuevo_id    = @nuevo_turno_141 OUTPUT,
    @mensaje     = @msg_turno_141 OUTPUT;
PRINT N'Turno 2026-07-06 09:00:00 Dr/a Gómez -> ' + @msg_turno_141;
GO
DECLARE @nuevo_turno_142 INT, @msg_turno_142 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 1,
    @id_paciente = 2,
    @fecha_hora  = '2026-07-06 10:00:00',
    @nuevo_id    = @nuevo_turno_142 OUTPUT,
    @mensaje     = @msg_turno_142 OUTPUT;
PRINT N'Turno 2026-07-06 10:00:00 Dr/a Gómez -> ' + @msg_turno_142;
GO
DECLARE @nuevo_turno_143 INT, @msg_turno_143 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 1,
    @id_paciente = 3,
    @fecha_hora  = '2026-07-06 11:00:00',
    @nuevo_id    = @nuevo_turno_143 OUTPUT,
    @mensaje     = @msg_turno_143 OUTPUT;
PRINT N'Turno 2026-07-06 11:00:00 Dr/a Gómez -> ' + @msg_turno_143;
GO
DECLARE @nuevo_turno_144 INT, @msg_turno_144 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 1,
    @id_paciente = 4,
    @fecha_hora  = '2026-07-06 12:00:00',
    @nuevo_id    = @nuevo_turno_144 OUTPUT,
    @mensaje     = @msg_turno_144 OUTPUT;
PRINT N'Turno 2026-07-06 12:00:00 Dr/a Gómez -> ' + @msg_turno_144;
GO
DECLARE @nuevo_turno_145 INT, @msg_turno_145 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 1,
    @id_paciente = 5,
    @fecha_hora  = '2026-07-27 09:00:00',
    @nuevo_id    = @nuevo_turno_145 OUTPUT,
    @mensaje     = @msg_turno_145 OUTPUT;
PRINT N'Turno 2026-07-27 09:00:00 Dr/a Gómez -> ' + @msg_turno_145;
GO
DECLARE @nuevo_turno_146 INT, @msg_turno_146 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 1,
    @id_paciente = 6,
    @fecha_hora  = '2026-07-27 10:00:00',
    @nuevo_id    = @nuevo_turno_146 OUTPUT,
    @mensaje     = @msg_turno_146 OUTPUT;
PRINT N'Turno 2026-07-27 10:00:00 Dr/a Gómez -> ' + @msg_turno_146;
GO
DECLARE @nuevo_turno_147 INT, @msg_turno_147 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 1,
    @id_paciente = 7,
    @fecha_hora  = '2026-07-27 11:00:00',
    @nuevo_id    = @nuevo_turno_147 OUTPUT,
    @mensaje     = @msg_turno_147 OUTPUT;
PRINT N'Turno 2026-07-27 11:00:00 Dr/a Gómez -> ' + @msg_turno_147;
GO
DECLARE @nuevo_turno_148 INT, @msg_turno_148 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 1,
    @id_paciente = 8,
    @fecha_hora  = '2026-07-27 12:00:00',
    @nuevo_id    = @nuevo_turno_148 OUTPUT,
    @mensaje     = @msg_turno_148 OUTPUT;
PRINT N'Turno 2026-07-27 12:00:00 Dr/a Gómez -> ' + @msg_turno_148;
GO
DECLARE @nuevo_turno_149 INT, @msg_turno_149 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 1,
    @id_paciente = 9,
    @fecha_hora  = '2026-08-10 09:00:00',
    @nuevo_id    = @nuevo_turno_149 OUTPUT,
    @mensaje     = @msg_turno_149 OUTPUT;
PRINT N'Turno 2026-08-10 09:00:00 Dr/a Gómez -> ' + @msg_turno_149;
GO
DECLARE @nuevo_turno_150 INT, @msg_turno_150 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 1,
    @id_paciente = 10,
    @fecha_hora  = '2026-08-10 10:00:00',
    @nuevo_id    = @nuevo_turno_150 OUTPUT,
    @mensaje     = @msg_turno_150 OUTPUT;
PRINT N'Turno 2026-08-10 10:00:00 Dr/a Gómez -> ' + @msg_turno_150;
GO
DECLARE @nuevo_turno_151 INT, @msg_turno_151 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 1,
    @id_paciente = 11,
    @fecha_hora  = '2026-08-10 11:00:00',
    @nuevo_id    = @nuevo_turno_151 OUTPUT,
    @mensaje     = @msg_turno_151 OUTPUT;
PRINT N'Turno 2026-08-10 11:00:00 Dr/a Gómez -> ' + @msg_turno_151;
GO
DECLARE @nuevo_turno_152 INT, @msg_turno_152 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 1,
    @id_paciente = 12,
    @fecha_hora  = '2026-08-10 12:00:00',
    @nuevo_id    = @nuevo_turno_152 OUTPUT,
    @mensaje     = @msg_turno_152 OUTPUT;
PRINT N'Turno 2026-08-10 12:00:00 Dr/a Gómez -> ' + @msg_turno_152;
GO
DECLARE @nuevo_turno_153 INT, @msg_turno_153 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 1,
    @id_paciente = 13,
    @fecha_hora  = '2026-08-24 09:00:00',
    @nuevo_id    = @nuevo_turno_153 OUTPUT,
    @mensaje     = @msg_turno_153 OUTPUT;
PRINT N'Turno 2026-08-24 09:00:00 Dr/a Gómez -> ' + @msg_turno_153;
GO
DECLARE @nuevo_turno_154 INT, @msg_turno_154 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 1,
    @id_paciente = 14,
    @fecha_hora  = '2026-08-24 10:00:00',
    @nuevo_id    = @nuevo_turno_154 OUTPUT,
    @mensaje     = @msg_turno_154 OUTPUT;
PRINT N'Turno 2026-08-24 10:00:00 Dr/a Gómez -> ' + @msg_turno_154;
GO
DECLARE @nuevo_turno_155 INT, @msg_turno_155 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 1,
    @id_paciente = 15,
    @fecha_hora  = '2026-08-24 11:00:00',
    @nuevo_id    = @nuevo_turno_155 OUTPUT,
    @mensaje     = @msg_turno_155 OUTPUT;
PRINT N'Turno 2026-08-24 11:00:00 Dr/a Gómez -> ' + @msg_turno_155;
GO
DECLARE @nuevo_turno_156 INT, @msg_turno_156 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 1,
    @id_paciente = 16,
    @fecha_hora  = '2026-08-24 12:00:00',
    @nuevo_id    = @nuevo_turno_156 OUTPUT,
    @mensaje     = @msg_turno_156 OUTPUT;
PRINT N'Turno 2026-08-24 12:00:00 Dr/a Gómez -> ' + @msg_turno_156;
GO
DECLARE @nuevo_turno_157 INT, @msg_turno_157 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 1,
    @id_paciente = 17,
    @fecha_hora  = '2026-09-07 09:00:00',
    @nuevo_id    = @nuevo_turno_157 OUTPUT,
    @mensaje     = @msg_turno_157 OUTPUT;
PRINT N'Turno 2026-09-07 09:00:00 Dr/a Gómez -> ' + @msg_turno_157;
GO
DECLARE @nuevo_turno_158 INT, @msg_turno_158 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 1,
    @id_paciente = 18,
    @fecha_hora  = '2026-09-07 10:00:00',
    @nuevo_id    = @nuevo_turno_158 OUTPUT,
    @mensaje     = @msg_turno_158 OUTPUT;
PRINT N'Turno 2026-09-07 10:00:00 Dr/a Gómez -> ' + @msg_turno_158;
GO
DECLARE @nuevo_turno_159 INT, @msg_turno_159 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 1,
    @id_paciente = 19,
    @fecha_hora  = '2026-09-07 11:00:00',
    @nuevo_id    = @nuevo_turno_159 OUTPUT,
    @mensaje     = @msg_turno_159 OUTPUT;
PRINT N'Turno 2026-09-07 11:00:00 Dr/a Gómez -> ' + @msg_turno_159;
GO
DECLARE @nuevo_turno_160 INT, @msg_turno_160 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 1,
    @id_paciente = 20,
    @fecha_hora  = '2026-09-07 12:00:00',
    @nuevo_id    = @nuevo_turno_160 OUTPUT,
    @mensaje     = @msg_turno_160 OUTPUT;
PRINT N'Turno 2026-09-07 12:00:00 Dr/a Gómez -> ' + @msg_turno_160;
GO
DECLARE @nuevo_turno_161 INT, @msg_turno_161 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 1,
    @id_paciente = 21,
    @fecha_hora  = '2026-10-05 09:00:00',
    @nuevo_id    = @nuevo_turno_161 OUTPUT,
    @mensaje     = @msg_turno_161 OUTPUT;
PRINT N'Turno 2026-10-05 09:00:00 Dr/a Gómez -> ' + @msg_turno_161;
GO
DECLARE @nuevo_turno_162 INT, @msg_turno_162 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 1,
    @id_paciente = 22,
    @fecha_hora  = '2026-10-05 10:00:00',
    @nuevo_id    = @nuevo_turno_162 OUTPUT,
    @mensaje     = @msg_turno_162 OUTPUT;
PRINT N'Turno 2026-10-05 10:00:00 Dr/a Gómez -> ' + @msg_turno_162;
GO
DECLARE @nuevo_turno_163 INT, @msg_turno_163 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 1,
    @id_paciente = 23,
    @fecha_hora  = '2026-10-05 11:00:00',
    @nuevo_id    = @nuevo_turno_163 OUTPUT,
    @mensaje     = @msg_turno_163 OUTPUT;
PRINT N'Turno 2026-10-05 11:00:00 Dr/a Gómez -> ' + @msg_turno_163;
GO
DECLARE @nuevo_turno_164 INT, @msg_turno_164 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 1,
    @id_paciente = 24,
    @fecha_hora  = '2026-10-05 12:00:00',
    @nuevo_id    = @nuevo_turno_164 OUTPUT,
    @mensaje     = @msg_turno_164 OUTPUT;
PRINT N'Turno 2026-10-05 12:00:00 Dr/a Gómez -> ' + @msg_turno_164;
GO
DECLARE @nuevo_turno_165 INT, @msg_turno_165 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 2,
    @id_paciente = 25,
    @fecha_hora  = '2026-07-07 09:00:00',
    @nuevo_id    = @nuevo_turno_165 OUTPUT,
    @mensaje     = @msg_turno_165 OUTPUT;
PRINT N'Turno 2026-07-07 09:00:00 Dr/a Suárez -> ' + @msg_turno_165;
GO
DECLARE @nuevo_turno_166 INT, @msg_turno_166 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 2,
    @id_paciente = 1,
    @fecha_hora  = '2026-07-07 10:00:00',
    @nuevo_id    = @nuevo_turno_166 OUTPUT,
    @mensaje     = @msg_turno_166 OUTPUT;
PRINT N'Turno 2026-07-07 10:00:00 Dr/a Suárez -> ' + @msg_turno_166;
GO
DECLARE @nuevo_turno_167 INT, @msg_turno_167 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 2,
    @id_paciente = 2,
    @fecha_hora  = '2026-07-07 11:00:00',
    @nuevo_id    = @nuevo_turno_167 OUTPUT,
    @mensaje     = @msg_turno_167 OUTPUT;
PRINT N'Turno 2026-07-07 11:00:00 Dr/a Suárez -> ' + @msg_turno_167;
GO
DECLARE @nuevo_turno_168 INT, @msg_turno_168 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 2,
    @id_paciente = 3,
    @fecha_hora  = '2026-07-07 12:00:00',
    @nuevo_id    = @nuevo_turno_168 OUTPUT,
    @mensaje     = @msg_turno_168 OUTPUT;
PRINT N'Turno 2026-07-07 12:00:00 Dr/a Suárez -> ' + @msg_turno_168;
GO
DECLARE @nuevo_turno_169 INT, @msg_turno_169 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 2,
    @id_paciente = 4,
    @fecha_hora  = '2026-07-28 09:00:00',
    @nuevo_id    = @nuevo_turno_169 OUTPUT,
    @mensaje     = @msg_turno_169 OUTPUT;
PRINT N'Turno 2026-07-28 09:00:00 Dr/a Suárez -> ' + @msg_turno_169;
GO
DECLARE @nuevo_turno_170 INT, @msg_turno_170 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 2,
    @id_paciente = 5,
    @fecha_hora  = '2026-07-28 10:00:00',
    @nuevo_id    = @nuevo_turno_170 OUTPUT,
    @mensaje     = @msg_turno_170 OUTPUT;
PRINT N'Turno 2026-07-28 10:00:00 Dr/a Suárez -> ' + @msg_turno_170;
GO
DECLARE @nuevo_turno_171 INT, @msg_turno_171 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 2,
    @id_paciente = 6,
    @fecha_hora  = '2026-07-28 11:00:00',
    @nuevo_id    = @nuevo_turno_171 OUTPUT,
    @mensaje     = @msg_turno_171 OUTPUT;
PRINT N'Turno 2026-07-28 11:00:00 Dr/a Suárez -> ' + @msg_turno_171;
GO
DECLARE @nuevo_turno_172 INT, @msg_turno_172 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 2,
    @id_paciente = 7,
    @fecha_hora  = '2026-07-28 12:00:00',
    @nuevo_id    = @nuevo_turno_172 OUTPUT,
    @mensaje     = @msg_turno_172 OUTPUT;
PRINT N'Turno 2026-07-28 12:00:00 Dr/a Suárez -> ' + @msg_turno_172;
GO
DECLARE @nuevo_turno_173 INT, @msg_turno_173 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 2,
    @id_paciente = 8,
    @fecha_hora  = '2026-08-11 09:00:00',
    @nuevo_id    = @nuevo_turno_173 OUTPUT,
    @mensaje     = @msg_turno_173 OUTPUT;
PRINT N'Turno 2026-08-11 09:00:00 Dr/a Suárez -> ' + @msg_turno_173;
GO
DECLARE @nuevo_turno_174 INT, @msg_turno_174 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 2,
    @id_paciente = 9,
    @fecha_hora  = '2026-08-11 10:00:00',
    @nuevo_id    = @nuevo_turno_174 OUTPUT,
    @mensaje     = @msg_turno_174 OUTPUT;
PRINT N'Turno 2026-08-11 10:00:00 Dr/a Suárez -> ' + @msg_turno_174;
GO
DECLARE @nuevo_turno_175 INT, @msg_turno_175 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 2,
    @id_paciente = 10,
    @fecha_hora  = '2026-08-11 11:00:00',
    @nuevo_id    = @nuevo_turno_175 OUTPUT,
    @mensaje     = @msg_turno_175 OUTPUT;
PRINT N'Turno 2026-08-11 11:00:00 Dr/a Suárez -> ' + @msg_turno_175;
GO
DECLARE @nuevo_turno_176 INT, @msg_turno_176 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 2,
    @id_paciente = 11,
    @fecha_hora  = '2026-08-11 12:00:00',
    @nuevo_id    = @nuevo_turno_176 OUTPUT,
    @mensaje     = @msg_turno_176 OUTPUT;
PRINT N'Turno 2026-08-11 12:00:00 Dr/a Suárez -> ' + @msg_turno_176;
GO
DECLARE @nuevo_turno_177 INT, @msg_turno_177 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 2,
    @id_paciente = 12,
    @fecha_hora  = '2026-08-25 09:00:00',
    @nuevo_id    = @nuevo_turno_177 OUTPUT,
    @mensaje     = @msg_turno_177 OUTPUT;
PRINT N'Turno 2026-08-25 09:00:00 Dr/a Suárez -> ' + @msg_turno_177;
GO
DECLARE @nuevo_turno_178 INT, @msg_turno_178 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 2,
    @id_paciente = 13,
    @fecha_hora  = '2026-08-25 10:00:00',
    @nuevo_id    = @nuevo_turno_178 OUTPUT,
    @mensaje     = @msg_turno_178 OUTPUT;
PRINT N'Turno 2026-08-25 10:00:00 Dr/a Suárez -> ' + @msg_turno_178;
GO
DECLARE @nuevo_turno_179 INT, @msg_turno_179 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 2,
    @id_paciente = 14,
    @fecha_hora  = '2026-08-25 11:00:00',
    @nuevo_id    = @nuevo_turno_179 OUTPUT,
    @mensaje     = @msg_turno_179 OUTPUT;
PRINT N'Turno 2026-08-25 11:00:00 Dr/a Suárez -> ' + @msg_turno_179;
GO
DECLARE @nuevo_turno_180 INT, @msg_turno_180 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 2,
    @id_paciente = 15,
    @fecha_hora  = '2026-08-25 12:00:00',
    @nuevo_id    = @nuevo_turno_180 OUTPUT,
    @mensaje     = @msg_turno_180 OUTPUT;
PRINT N'Turno 2026-08-25 12:00:00 Dr/a Suárez -> ' + @msg_turno_180;
GO
DECLARE @nuevo_turno_181 INT, @msg_turno_181 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 2,
    @id_paciente = 16,
    @fecha_hora  = '2026-09-08 09:00:00',
    @nuevo_id    = @nuevo_turno_181 OUTPUT,
    @mensaje     = @msg_turno_181 OUTPUT;
PRINT N'Turno 2026-09-08 09:00:00 Dr/a Suárez -> ' + @msg_turno_181;
GO
DECLARE @nuevo_turno_182 INT, @msg_turno_182 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 2,
    @id_paciente = 17,
    @fecha_hora  = '2026-09-08 10:00:00',
    @nuevo_id    = @nuevo_turno_182 OUTPUT,
    @mensaje     = @msg_turno_182 OUTPUT;
PRINT N'Turno 2026-09-08 10:00:00 Dr/a Suárez -> ' + @msg_turno_182;
GO
DECLARE @nuevo_turno_183 INT, @msg_turno_183 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 2,
    @id_paciente = 18,
    @fecha_hora  = '2026-09-08 11:00:00',
    @nuevo_id    = @nuevo_turno_183 OUTPUT,
    @mensaje     = @msg_turno_183 OUTPUT;
PRINT N'Turno 2026-09-08 11:00:00 Dr/a Suárez -> ' + @msg_turno_183;
GO
DECLARE @nuevo_turno_184 INT, @msg_turno_184 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 2,
    @id_paciente = 19,
    @fecha_hora  = '2026-09-08 12:00:00',
    @nuevo_id    = @nuevo_turno_184 OUTPUT,
    @mensaje     = @msg_turno_184 OUTPUT;
PRINT N'Turno 2026-09-08 12:00:00 Dr/a Suárez -> ' + @msg_turno_184;
GO
DECLARE @nuevo_turno_185 INT, @msg_turno_185 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 2,
    @id_paciente = 20,
    @fecha_hora  = '2026-10-06 09:00:00',
    @nuevo_id    = @nuevo_turno_185 OUTPUT,
    @mensaje     = @msg_turno_185 OUTPUT;
PRINT N'Turno 2026-10-06 09:00:00 Dr/a Suárez -> ' + @msg_turno_185;
GO
DECLARE @nuevo_turno_186 INT, @msg_turno_186 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 2,
    @id_paciente = 21,
    @fecha_hora  = '2026-10-06 10:00:00',
    @nuevo_id    = @nuevo_turno_186 OUTPUT,
    @mensaje     = @msg_turno_186 OUTPUT;
PRINT N'Turno 2026-10-06 10:00:00 Dr/a Suárez -> ' + @msg_turno_186;
GO
DECLARE @nuevo_turno_187 INT, @msg_turno_187 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 2,
    @id_paciente = 22,
    @fecha_hora  = '2026-10-06 11:00:00',
    @nuevo_id    = @nuevo_turno_187 OUTPUT,
    @mensaje     = @msg_turno_187 OUTPUT;
PRINT N'Turno 2026-10-06 11:00:00 Dr/a Suárez -> ' + @msg_turno_187;
GO
DECLARE @nuevo_turno_188 INT, @msg_turno_188 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 2,
    @id_paciente = 23,
    @fecha_hora  = '2026-10-06 12:00:00',
    @nuevo_id    = @nuevo_turno_188 OUTPUT,
    @mensaje     = @msg_turno_188 OUTPUT;
PRINT N'Turno 2026-10-06 12:00:00 Dr/a Suárez -> ' + @msg_turno_188;
GO
DECLARE @nuevo_turno_189 INT, @msg_turno_189 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 3,
    @id_paciente = 24,
    @fecha_hora  = '2026-07-08 09:00:00',
    @nuevo_id    = @nuevo_turno_189 OUTPUT,
    @mensaje     = @msg_turno_189 OUTPUT;
PRINT N'Turno 2026-07-08 09:00:00 Dr/a Torres -> ' + @msg_turno_189;
GO
DECLARE @nuevo_turno_190 INT, @msg_turno_190 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 3,
    @id_paciente = 25,
    @fecha_hora  = '2026-07-08 10:00:00',
    @nuevo_id    = @nuevo_turno_190 OUTPUT,
    @mensaje     = @msg_turno_190 OUTPUT;
PRINT N'Turno 2026-07-08 10:00:00 Dr/a Torres -> ' + @msg_turno_190;
GO
DECLARE @nuevo_turno_191 INT, @msg_turno_191 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 3,
    @id_paciente = 1,
    @fecha_hora  = '2026-07-08 11:00:00',
    @nuevo_id    = @nuevo_turno_191 OUTPUT,
    @mensaje     = @msg_turno_191 OUTPUT;
PRINT N'Turno 2026-07-08 11:00:00 Dr/a Torres -> ' + @msg_turno_191;
GO
DECLARE @nuevo_turno_192 INT, @msg_turno_192 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 3,
    @id_paciente = 2,
    @fecha_hora  = '2026-07-08 12:00:00',
    @nuevo_id    = @nuevo_turno_192 OUTPUT,
    @mensaje     = @msg_turno_192 OUTPUT;
PRINT N'Turno 2026-07-08 12:00:00 Dr/a Torres -> ' + @msg_turno_192;
GO
DECLARE @nuevo_turno_193 INT, @msg_turno_193 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 3,
    @id_paciente = 3,
    @fecha_hora  = '2026-07-29 09:00:00',
    @nuevo_id    = @nuevo_turno_193 OUTPUT,
    @mensaje     = @msg_turno_193 OUTPUT;
PRINT N'Turno 2026-07-29 09:00:00 Dr/a Torres -> ' + @msg_turno_193;
GO
DECLARE @nuevo_turno_194 INT, @msg_turno_194 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 3,
    @id_paciente = 4,
    @fecha_hora  = '2026-07-29 10:00:00',
    @nuevo_id    = @nuevo_turno_194 OUTPUT,
    @mensaje     = @msg_turno_194 OUTPUT;
PRINT N'Turno 2026-07-29 10:00:00 Dr/a Torres -> ' + @msg_turno_194;
GO
DECLARE @nuevo_turno_195 INT, @msg_turno_195 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 3,
    @id_paciente = 5,
    @fecha_hora  = '2026-07-29 11:00:00',
    @nuevo_id    = @nuevo_turno_195 OUTPUT,
    @mensaje     = @msg_turno_195 OUTPUT;
PRINT N'Turno 2026-07-29 11:00:00 Dr/a Torres -> ' + @msg_turno_195;
GO
DECLARE @nuevo_turno_196 INT, @msg_turno_196 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 3,
    @id_paciente = 6,
    @fecha_hora  = '2026-07-29 12:00:00',
    @nuevo_id    = @nuevo_turno_196 OUTPUT,
    @mensaje     = @msg_turno_196 OUTPUT;
PRINT N'Turno 2026-07-29 12:00:00 Dr/a Torres -> ' + @msg_turno_196;
GO
DECLARE @nuevo_turno_197 INT, @msg_turno_197 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 3,
    @id_paciente = 7,
    @fecha_hora  = '2026-08-12 09:00:00',
    @nuevo_id    = @nuevo_turno_197 OUTPUT,
    @mensaje     = @msg_turno_197 OUTPUT;
PRINT N'Turno 2026-08-12 09:00:00 Dr/a Torres -> ' + @msg_turno_197;
GO
DECLARE @nuevo_turno_198 INT, @msg_turno_198 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 3,
    @id_paciente = 8,
    @fecha_hora  = '2026-08-12 10:00:00',
    @nuevo_id    = @nuevo_turno_198 OUTPUT,
    @mensaje     = @msg_turno_198 OUTPUT;
PRINT N'Turno 2026-08-12 10:00:00 Dr/a Torres -> ' + @msg_turno_198;
GO
DECLARE @nuevo_turno_199 INT, @msg_turno_199 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 3,
    @id_paciente = 9,
    @fecha_hora  = '2026-08-12 11:00:00',
    @nuevo_id    = @nuevo_turno_199 OUTPUT,
    @mensaje     = @msg_turno_199 OUTPUT;
PRINT N'Turno 2026-08-12 11:00:00 Dr/a Torres -> ' + @msg_turno_199;
GO
DECLARE @nuevo_turno_200 INT, @msg_turno_200 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 3,
    @id_paciente = 10,
    @fecha_hora  = '2026-08-12 12:00:00',
    @nuevo_id    = @nuevo_turno_200 OUTPUT,
    @mensaje     = @msg_turno_200 OUTPUT;
PRINT N'Turno 2026-08-12 12:00:00 Dr/a Torres -> ' + @msg_turno_200;
GO
DECLARE @nuevo_turno_201 INT, @msg_turno_201 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 3,
    @id_paciente = 11,
    @fecha_hora  = '2026-08-26 09:00:00',
    @nuevo_id    = @nuevo_turno_201 OUTPUT,
    @mensaje     = @msg_turno_201 OUTPUT;
PRINT N'Turno 2026-08-26 09:00:00 Dr/a Torres -> ' + @msg_turno_201;
GO
DECLARE @nuevo_turno_202 INT, @msg_turno_202 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 3,
    @id_paciente = 12,
    @fecha_hora  = '2026-08-26 10:00:00',
    @nuevo_id    = @nuevo_turno_202 OUTPUT,
    @mensaje     = @msg_turno_202 OUTPUT;
PRINT N'Turno 2026-08-26 10:00:00 Dr/a Torres -> ' + @msg_turno_202;
GO
DECLARE @nuevo_turno_203 INT, @msg_turno_203 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 3,
    @id_paciente = 13,
    @fecha_hora  = '2026-08-26 11:00:00',
    @nuevo_id    = @nuevo_turno_203 OUTPUT,
    @mensaje     = @msg_turno_203 OUTPUT;
PRINT N'Turno 2026-08-26 11:00:00 Dr/a Torres -> ' + @msg_turno_203;
GO
DECLARE @nuevo_turno_204 INT, @msg_turno_204 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 3,
    @id_paciente = 14,
    @fecha_hora  = '2026-08-26 12:00:00',
    @nuevo_id    = @nuevo_turno_204 OUTPUT,
    @mensaje     = @msg_turno_204 OUTPUT;
PRINT N'Turno 2026-08-26 12:00:00 Dr/a Torres -> ' + @msg_turno_204;
GO
DECLARE @nuevo_turno_205 INT, @msg_turno_205 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 3,
    @id_paciente = 15,
    @fecha_hora  = '2026-09-09 09:00:00',
    @nuevo_id    = @nuevo_turno_205 OUTPUT,
    @mensaje     = @msg_turno_205 OUTPUT;
PRINT N'Turno 2026-09-09 09:00:00 Dr/a Torres -> ' + @msg_turno_205;
GO
DECLARE @nuevo_turno_206 INT, @msg_turno_206 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 3,
    @id_paciente = 16,
    @fecha_hora  = '2026-09-09 10:00:00',
    @nuevo_id    = @nuevo_turno_206 OUTPUT,
    @mensaje     = @msg_turno_206 OUTPUT;
PRINT N'Turno 2026-09-09 10:00:00 Dr/a Torres -> ' + @msg_turno_206;
GO
DECLARE @nuevo_turno_207 INT, @msg_turno_207 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 3,
    @id_paciente = 17,
    @fecha_hora  = '2026-09-09 11:00:00',
    @nuevo_id    = @nuevo_turno_207 OUTPUT,
    @mensaje     = @msg_turno_207 OUTPUT;
PRINT N'Turno 2026-09-09 11:00:00 Dr/a Torres -> ' + @msg_turno_207;
GO
DECLARE @nuevo_turno_208 INT, @msg_turno_208 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 3,
    @id_paciente = 18,
    @fecha_hora  = '2026-09-09 12:00:00',
    @nuevo_id    = @nuevo_turno_208 OUTPUT,
    @mensaje     = @msg_turno_208 OUTPUT;
PRINT N'Turno 2026-09-09 12:00:00 Dr/a Torres -> ' + @msg_turno_208;
GO
DECLARE @nuevo_turno_209 INT, @msg_turno_209 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 3,
    @id_paciente = 19,
    @fecha_hora  = '2026-10-07 09:00:00',
    @nuevo_id    = @nuevo_turno_209 OUTPUT,
    @mensaje     = @msg_turno_209 OUTPUT;
PRINT N'Turno 2026-10-07 09:00:00 Dr/a Torres -> ' + @msg_turno_209;
GO
DECLARE @nuevo_turno_210 INT, @msg_turno_210 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 3,
    @id_paciente = 20,
    @fecha_hora  = '2026-10-07 10:00:00',
    @nuevo_id    = @nuevo_turno_210 OUTPUT,
    @mensaje     = @msg_turno_210 OUTPUT;
PRINT N'Turno 2026-10-07 10:00:00 Dr/a Torres -> ' + @msg_turno_210;
GO
DECLARE @nuevo_turno_211 INT, @msg_turno_211 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 3,
    @id_paciente = 21,
    @fecha_hora  = '2026-10-07 11:00:00',
    @nuevo_id    = @nuevo_turno_211 OUTPUT,
    @mensaje     = @msg_turno_211 OUTPUT;
PRINT N'Turno 2026-10-07 11:00:00 Dr/a Torres -> ' + @msg_turno_211;
GO
DECLARE @nuevo_turno_212 INT, @msg_turno_212 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 3,
    @id_paciente = 22,
    @fecha_hora  = '2026-10-07 12:00:00',
    @nuevo_id    = @nuevo_turno_212 OUTPUT,
    @mensaje     = @msg_turno_212 OUTPUT;
PRINT N'Turno 2026-10-07 12:00:00 Dr/a Torres -> ' + @msg_turno_212;
GO
DECLARE @nuevo_turno_213 INT, @msg_turno_213 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 4,
    @id_paciente = 23,
    @fecha_hora  = '2026-07-09 09:00:00',
    @nuevo_id    = @nuevo_turno_213 OUTPUT,
    @mensaje     = @msg_turno_213 OUTPUT;
PRINT N'Turno 2026-07-09 09:00:00 Dr/a Medina -> ' + @msg_turno_213;
GO
DECLARE @nuevo_turno_214 INT, @msg_turno_214 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 4,
    @id_paciente = 24,
    @fecha_hora  = '2026-07-09 10:00:00',
    @nuevo_id    = @nuevo_turno_214 OUTPUT,
    @mensaje     = @msg_turno_214 OUTPUT;
PRINT N'Turno 2026-07-09 10:00:00 Dr/a Medina -> ' + @msg_turno_214;
GO
DECLARE @nuevo_turno_215 INT, @msg_turno_215 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 4,
    @id_paciente = 25,
    @fecha_hora  = '2026-07-09 11:00:00',
    @nuevo_id    = @nuevo_turno_215 OUTPUT,
    @mensaje     = @msg_turno_215 OUTPUT;
PRINT N'Turno 2026-07-09 11:00:00 Dr/a Medina -> ' + @msg_turno_215;
GO
DECLARE @nuevo_turno_216 INT, @msg_turno_216 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 4,
    @id_paciente = 1,
    @fecha_hora  = '2026-07-09 12:00:00',
    @nuevo_id    = @nuevo_turno_216 OUTPUT,
    @mensaje     = @msg_turno_216 OUTPUT;
PRINT N'Turno 2026-07-09 12:00:00 Dr/a Medina -> ' + @msg_turno_216;
GO
DECLARE @nuevo_turno_217 INT, @msg_turno_217 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 4,
    @id_paciente = 2,
    @fecha_hora  = '2026-07-23 09:00:00',
    @nuevo_id    = @nuevo_turno_217 OUTPUT,
    @mensaje     = @msg_turno_217 OUTPUT;
PRINT N'Turno 2026-07-23 09:00:00 Dr/a Medina -> ' + @msg_turno_217;
GO
DECLARE @nuevo_turno_218 INT, @msg_turno_218 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 4,
    @id_paciente = 3,
    @fecha_hora  = '2026-07-23 10:00:00',
    @nuevo_id    = @nuevo_turno_218 OUTPUT,
    @mensaje     = @msg_turno_218 OUTPUT;
PRINT N'Turno 2026-07-23 10:00:00 Dr/a Medina -> ' + @msg_turno_218;
GO
DECLARE @nuevo_turno_219 INT, @msg_turno_219 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 4,
    @id_paciente = 4,
    @fecha_hora  = '2026-07-23 11:00:00',
    @nuevo_id    = @nuevo_turno_219 OUTPUT,
    @mensaje     = @msg_turno_219 OUTPUT;
PRINT N'Turno 2026-07-23 11:00:00 Dr/a Medina -> ' + @msg_turno_219;
GO
DECLARE @nuevo_turno_220 INT, @msg_turno_220 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 4,
    @id_paciente = 5,
    @fecha_hora  = '2026-07-23 12:00:00',
    @nuevo_id    = @nuevo_turno_220 OUTPUT,
    @mensaje     = @msg_turno_220 OUTPUT;
PRINT N'Turno 2026-07-23 12:00:00 Dr/a Medina -> ' + @msg_turno_220;
GO
DECLARE @nuevo_turno_221 INT, @msg_turno_221 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 4,
    @id_paciente = 6,
    @fecha_hora  = '2026-08-06 09:00:00',
    @nuevo_id    = @nuevo_turno_221 OUTPUT,
    @mensaje     = @msg_turno_221 OUTPUT;
PRINT N'Turno 2026-08-06 09:00:00 Dr/a Medina -> ' + @msg_turno_221;
GO
DECLARE @nuevo_turno_222 INT, @msg_turno_222 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 4,
    @id_paciente = 7,
    @fecha_hora  = '2026-08-06 10:00:00',
    @nuevo_id    = @nuevo_turno_222 OUTPUT,
    @mensaje     = @msg_turno_222 OUTPUT;
PRINT N'Turno 2026-08-06 10:00:00 Dr/a Medina -> ' + @msg_turno_222;
GO
DECLARE @nuevo_turno_223 INT, @msg_turno_223 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 4,
    @id_paciente = 8,
    @fecha_hora  = '2026-08-06 11:00:00',
    @nuevo_id    = @nuevo_turno_223 OUTPUT,
    @mensaje     = @msg_turno_223 OUTPUT;
PRINT N'Turno 2026-08-06 11:00:00 Dr/a Medina -> ' + @msg_turno_223;
GO
DECLARE @nuevo_turno_224 INT, @msg_turno_224 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 4,
    @id_paciente = 9,
    @fecha_hora  = '2026-08-06 12:00:00',
    @nuevo_id    = @nuevo_turno_224 OUTPUT,
    @mensaje     = @msg_turno_224 OUTPUT;
PRINT N'Turno 2026-08-06 12:00:00 Dr/a Medina -> ' + @msg_turno_224;
GO
DECLARE @nuevo_turno_225 INT, @msg_turno_225 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 4,
    @id_paciente = 10,
    @fecha_hora  = '2026-08-20 09:00:00',
    @nuevo_id    = @nuevo_turno_225 OUTPUT,
    @mensaje     = @msg_turno_225 OUTPUT;
PRINT N'Turno 2026-08-20 09:00:00 Dr/a Medina -> ' + @msg_turno_225;
GO
DECLARE @nuevo_turno_226 INT, @msg_turno_226 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 4,
    @id_paciente = 11,
    @fecha_hora  = '2026-08-20 10:00:00',
    @nuevo_id    = @nuevo_turno_226 OUTPUT,
    @mensaje     = @msg_turno_226 OUTPUT;
PRINT N'Turno 2026-08-20 10:00:00 Dr/a Medina -> ' + @msg_turno_226;
GO
DECLARE @nuevo_turno_227 INT, @msg_turno_227 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 4,
    @id_paciente = 12,
    @fecha_hora  = '2026-08-20 11:00:00',
    @nuevo_id    = @nuevo_turno_227 OUTPUT,
    @mensaje     = @msg_turno_227 OUTPUT;
PRINT N'Turno 2026-08-20 11:00:00 Dr/a Medina -> ' + @msg_turno_227;
GO
DECLARE @nuevo_turno_228 INT, @msg_turno_228 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 4,
    @id_paciente = 13,
    @fecha_hora  = '2026-08-20 12:00:00',
    @nuevo_id    = @nuevo_turno_228 OUTPUT,
    @mensaje     = @msg_turno_228 OUTPUT;
PRINT N'Turno 2026-08-20 12:00:00 Dr/a Medina -> ' + @msg_turno_228;
GO
DECLARE @nuevo_turno_229 INT, @msg_turno_229 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 4,
    @id_paciente = 14,
    @fecha_hora  = '2026-09-03 09:00:00',
    @nuevo_id    = @nuevo_turno_229 OUTPUT,
    @mensaje     = @msg_turno_229 OUTPUT;
PRINT N'Turno 2026-09-03 09:00:00 Dr/a Medina -> ' + @msg_turno_229;
GO
DECLARE @nuevo_turno_230 INT, @msg_turno_230 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 4,
    @id_paciente = 15,
    @fecha_hora  = '2026-09-03 10:00:00',
    @nuevo_id    = @nuevo_turno_230 OUTPUT,
    @mensaje     = @msg_turno_230 OUTPUT;
PRINT N'Turno 2026-09-03 10:00:00 Dr/a Medina -> ' + @msg_turno_230;
GO
DECLARE @nuevo_turno_231 INT, @msg_turno_231 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 4,
    @id_paciente = 16,
    @fecha_hora  = '2026-09-03 11:00:00',
    @nuevo_id    = @nuevo_turno_231 OUTPUT,
    @mensaje     = @msg_turno_231 OUTPUT;
PRINT N'Turno 2026-09-03 11:00:00 Dr/a Medina -> ' + @msg_turno_231;
GO
DECLARE @nuevo_turno_232 INT, @msg_turno_232 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 4,
    @id_paciente = 17,
    @fecha_hora  = '2026-09-03 12:00:00',
    @nuevo_id    = @nuevo_turno_232 OUTPUT,
    @mensaje     = @msg_turno_232 OUTPUT;
PRINT N'Turno 2026-09-03 12:00:00 Dr/a Medina -> ' + @msg_turno_232;
GO
DECLARE @nuevo_turno_233 INT, @msg_turno_233 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 4,
    @id_paciente = 18,
    @fecha_hora  = '2026-10-08 09:00:00',
    @nuevo_id    = @nuevo_turno_233 OUTPUT,
    @mensaje     = @msg_turno_233 OUTPUT;
PRINT N'Turno 2026-10-08 09:00:00 Dr/a Medina -> ' + @msg_turno_233;
GO
DECLARE @nuevo_turno_234 INT, @msg_turno_234 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 4,
    @id_paciente = 19,
    @fecha_hora  = '2026-10-08 10:00:00',
    @nuevo_id    = @nuevo_turno_234 OUTPUT,
    @mensaje     = @msg_turno_234 OUTPUT;
PRINT N'Turno 2026-10-08 10:00:00 Dr/a Medina -> ' + @msg_turno_234;
GO
DECLARE @nuevo_turno_235 INT, @msg_turno_235 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 4,
    @id_paciente = 20,
    @fecha_hora  = '2026-10-08 11:00:00',
    @nuevo_id    = @nuevo_turno_235 OUTPUT,
    @mensaje     = @msg_turno_235 OUTPUT;
PRINT N'Turno 2026-10-08 11:00:00 Dr/a Medina -> ' + @msg_turno_235;
GO
DECLARE @nuevo_turno_236 INT, @msg_turno_236 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 4,
    @id_paciente = 21,
    @fecha_hora  = '2026-10-08 12:00:00',
    @nuevo_id    = @nuevo_turno_236 OUTPUT,
    @mensaje     = @msg_turno_236 OUTPUT;
PRINT N'Turno 2026-10-08 12:00:00 Dr/a Medina -> ' + @msg_turno_236;
GO
DECLARE @nuevo_turno_237 INT, @msg_turno_237 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 5,
    @id_paciente = 22,
    @fecha_hora  = '2026-07-10 09:00:00',
    @nuevo_id    = @nuevo_turno_237 OUTPUT,
    @mensaje     = @msg_turno_237 OUTPUT;
PRINT N'Turno 2026-07-10 09:00:00 Dr/a Sosa -> ' + @msg_turno_237;
GO
DECLARE @nuevo_turno_238 INT, @msg_turno_238 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 5,
    @id_paciente = 23,
    @fecha_hora  = '2026-07-10 10:00:00',
    @nuevo_id    = @nuevo_turno_238 OUTPUT,
    @mensaje     = @msg_turno_238 OUTPUT;
PRINT N'Turno 2026-07-10 10:00:00 Dr/a Sosa -> ' + @msg_turno_238;
GO
DECLARE @nuevo_turno_239 INT, @msg_turno_239 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 5,
    @id_paciente = 24,
    @fecha_hora  = '2026-07-10 11:00:00',
    @nuevo_id    = @nuevo_turno_239 OUTPUT,
    @mensaje     = @msg_turno_239 OUTPUT;
PRINT N'Turno 2026-07-10 11:00:00 Dr/a Sosa -> ' + @msg_turno_239;
GO
DECLARE @nuevo_turno_240 INT, @msg_turno_240 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 5,
    @id_paciente = 25,
    @fecha_hora  = '2026-07-10 12:00:00',
    @nuevo_id    = @nuevo_turno_240 OUTPUT,
    @mensaje     = @msg_turno_240 OUTPUT;
PRINT N'Turno 2026-07-10 12:00:00 Dr/a Sosa -> ' + @msg_turno_240;
GO
DECLARE @nuevo_turno_241 INT, @msg_turno_241 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 5,
    @id_paciente = 1,
    @fecha_hora  = '2026-07-24 09:00:00',
    @nuevo_id    = @nuevo_turno_241 OUTPUT,
    @mensaje     = @msg_turno_241 OUTPUT;
PRINT N'Turno 2026-07-24 09:00:00 Dr/a Sosa -> ' + @msg_turno_241;
GO
DECLARE @nuevo_turno_242 INT, @msg_turno_242 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 5,
    @id_paciente = 2,
    @fecha_hora  = '2026-07-24 10:00:00',
    @nuevo_id    = @nuevo_turno_242 OUTPUT,
    @mensaje     = @msg_turno_242 OUTPUT;
PRINT N'Turno 2026-07-24 10:00:00 Dr/a Sosa -> ' + @msg_turno_242;
GO
DECLARE @nuevo_turno_243 INT, @msg_turno_243 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 5,
    @id_paciente = 3,
    @fecha_hora  = '2026-07-24 11:00:00',
    @nuevo_id    = @nuevo_turno_243 OUTPUT,
    @mensaje     = @msg_turno_243 OUTPUT;
PRINT N'Turno 2026-07-24 11:00:00 Dr/a Sosa -> ' + @msg_turno_243;
GO
DECLARE @nuevo_turno_244 INT, @msg_turno_244 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 5,
    @id_paciente = 4,
    @fecha_hora  = '2026-07-24 12:00:00',
    @nuevo_id    = @nuevo_turno_244 OUTPUT,
    @mensaje     = @msg_turno_244 OUTPUT;
PRINT N'Turno 2026-07-24 12:00:00 Dr/a Sosa -> ' + @msg_turno_244;
GO
DECLARE @nuevo_turno_245 INT, @msg_turno_245 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 5,
    @id_paciente = 5,
    @fecha_hora  = '2026-08-07 09:00:00',
    @nuevo_id    = @nuevo_turno_245 OUTPUT,
    @mensaje     = @msg_turno_245 OUTPUT;
PRINT N'Turno 2026-08-07 09:00:00 Dr/a Sosa -> ' + @msg_turno_245;
GO
DECLARE @nuevo_turno_246 INT, @msg_turno_246 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 5,
    @id_paciente = 6,
    @fecha_hora  = '2026-08-07 10:00:00',
    @nuevo_id    = @nuevo_turno_246 OUTPUT,
    @mensaje     = @msg_turno_246 OUTPUT;
PRINT N'Turno 2026-08-07 10:00:00 Dr/a Sosa -> ' + @msg_turno_246;
GO
DECLARE @nuevo_turno_247 INT, @msg_turno_247 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 5,
    @id_paciente = 7,
    @fecha_hora  = '2026-08-07 11:00:00',
    @nuevo_id    = @nuevo_turno_247 OUTPUT,
    @mensaje     = @msg_turno_247 OUTPUT;
PRINT N'Turno 2026-08-07 11:00:00 Dr/a Sosa -> ' + @msg_turno_247;
GO
DECLARE @nuevo_turno_248 INT, @msg_turno_248 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 5,
    @id_paciente = 8,
    @fecha_hora  = '2026-08-07 12:00:00',
    @nuevo_id    = @nuevo_turno_248 OUTPUT,
    @mensaje     = @msg_turno_248 OUTPUT;
PRINT N'Turno 2026-08-07 12:00:00 Dr/a Sosa -> ' + @msg_turno_248;
GO
DECLARE @nuevo_turno_249 INT, @msg_turno_249 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 5,
    @id_paciente = 9,
    @fecha_hora  = '2026-08-21 09:00:00',
    @nuevo_id    = @nuevo_turno_249 OUTPUT,
    @mensaje     = @msg_turno_249 OUTPUT;
PRINT N'Turno 2026-08-21 09:00:00 Dr/a Sosa -> ' + @msg_turno_249;
GO
DECLARE @nuevo_turno_250 INT, @msg_turno_250 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 5,
    @id_paciente = 10,
    @fecha_hora  = '2026-08-21 10:00:00',
    @nuevo_id    = @nuevo_turno_250 OUTPUT,
    @mensaje     = @msg_turno_250 OUTPUT;
PRINT N'Turno 2026-08-21 10:00:00 Dr/a Sosa -> ' + @msg_turno_250;
GO
DECLARE @nuevo_turno_251 INT, @msg_turno_251 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 5,
    @id_paciente = 11,
    @fecha_hora  = '2026-08-21 11:00:00',
    @nuevo_id    = @nuevo_turno_251 OUTPUT,
    @mensaje     = @msg_turno_251 OUTPUT;
PRINT N'Turno 2026-08-21 11:00:00 Dr/a Sosa -> ' + @msg_turno_251;
GO
DECLARE @nuevo_turno_252 INT, @msg_turno_252 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 5,
    @id_paciente = 12,
    @fecha_hora  = '2026-08-21 12:00:00',
    @nuevo_id    = @nuevo_turno_252 OUTPUT,
    @mensaje     = @msg_turno_252 OUTPUT;
PRINT N'Turno 2026-08-21 12:00:00 Dr/a Sosa -> ' + @msg_turno_252;
GO
DECLARE @nuevo_turno_253 INT, @msg_turno_253 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 5,
    @id_paciente = 13,
    @fecha_hora  = '2026-09-04 09:00:00',
    @nuevo_id    = @nuevo_turno_253 OUTPUT,
    @mensaje     = @msg_turno_253 OUTPUT;
PRINT N'Turno 2026-09-04 09:00:00 Dr/a Sosa -> ' + @msg_turno_253;
GO
DECLARE @nuevo_turno_254 INT, @msg_turno_254 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 5,
    @id_paciente = 14,
    @fecha_hora  = '2026-09-04 10:00:00',
    @nuevo_id    = @nuevo_turno_254 OUTPUT,
    @mensaje     = @msg_turno_254 OUTPUT;
PRINT N'Turno 2026-09-04 10:00:00 Dr/a Sosa -> ' + @msg_turno_254;
GO
DECLARE @nuevo_turno_255 INT, @msg_turno_255 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 5,
    @id_paciente = 15,
    @fecha_hora  = '2026-09-04 11:00:00',
    @nuevo_id    = @nuevo_turno_255 OUTPUT,
    @mensaje     = @msg_turno_255 OUTPUT;
PRINT N'Turno 2026-09-04 11:00:00 Dr/a Sosa -> ' + @msg_turno_255;
GO
DECLARE @nuevo_turno_256 INT, @msg_turno_256 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 5,
    @id_paciente = 16,
    @fecha_hora  = '2026-09-04 12:00:00',
    @nuevo_id    = @nuevo_turno_256 OUTPUT,
    @mensaje     = @msg_turno_256 OUTPUT;
PRINT N'Turno 2026-09-04 12:00:00 Dr/a Sosa -> ' + @msg_turno_256;
GO
DECLARE @nuevo_turno_257 INT, @msg_turno_257 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 5,
    @id_paciente = 17,
    @fecha_hora  = '2026-10-09 09:00:00',
    @nuevo_id    = @nuevo_turno_257 OUTPUT,
    @mensaje     = @msg_turno_257 OUTPUT;
PRINT N'Turno 2026-10-09 09:00:00 Dr/a Sosa -> ' + @msg_turno_257;
GO
DECLARE @nuevo_turno_258 INT, @msg_turno_258 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 5,
    @id_paciente = 18,
    @fecha_hora  = '2026-10-09 10:00:00',
    @nuevo_id    = @nuevo_turno_258 OUTPUT,
    @mensaje     = @msg_turno_258 OUTPUT;
PRINT N'Turno 2026-10-09 10:00:00 Dr/a Sosa -> ' + @msg_turno_258;
GO
DECLARE @nuevo_turno_259 INT, @msg_turno_259 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 5,
    @id_paciente = 19,
    @fecha_hora  = '2026-10-09 11:00:00',
    @nuevo_id    = @nuevo_turno_259 OUTPUT,
    @mensaje     = @msg_turno_259 OUTPUT;
PRINT N'Turno 2026-10-09 11:00:00 Dr/a Sosa -> ' + @msg_turno_259;
GO
DECLARE @nuevo_turno_260 INT, @msg_turno_260 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 5,
    @id_paciente = 20,
    @fecha_hora  = '2026-10-09 12:00:00',
    @nuevo_id    = @nuevo_turno_260 OUTPUT,
    @mensaje     = @msg_turno_260 OUTPUT;
PRINT N'Turno 2026-10-09 12:00:00 Dr/a Sosa -> ' + @msg_turno_260;
GO
DECLARE @nuevo_turno_261 INT, @msg_turno_261 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 6,
    @id_paciente = 21,
    @fecha_hora  = '2026-07-06 09:00:00',
    @nuevo_id    = @nuevo_turno_261 OUTPUT,
    @mensaje     = @msg_turno_261 OUTPUT;
PRINT N'Turno 2026-07-06 09:00:00 Dr/a García -> ' + @msg_turno_261;
GO
DECLARE @nuevo_turno_262 INT, @msg_turno_262 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 6,
    @id_paciente = 22,
    @fecha_hora  = '2026-07-06 10:00:00',
    @nuevo_id    = @nuevo_turno_262 OUTPUT,
    @mensaje     = @msg_turno_262 OUTPUT;
PRINT N'Turno 2026-07-06 10:00:00 Dr/a García -> ' + @msg_turno_262;
GO
DECLARE @nuevo_turno_263 INT, @msg_turno_263 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 6,
    @id_paciente = 23,
    @fecha_hora  = '2026-07-06 11:00:00',
    @nuevo_id    = @nuevo_turno_263 OUTPUT,
    @mensaje     = @msg_turno_263 OUTPUT;
PRINT N'Turno 2026-07-06 11:00:00 Dr/a García -> ' + @msg_turno_263;
GO
DECLARE @nuevo_turno_264 INT, @msg_turno_264 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 6,
    @id_paciente = 24,
    @fecha_hora  = '2026-07-06 12:00:00',
    @nuevo_id    = @nuevo_turno_264 OUTPUT,
    @mensaje     = @msg_turno_264 OUTPUT;
PRINT N'Turno 2026-07-06 12:00:00 Dr/a García -> ' + @msg_turno_264;
GO
DECLARE @nuevo_turno_265 INT, @msg_turno_265 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 6,
    @id_paciente = 25,
    @fecha_hora  = '2026-07-20 09:00:00',
    @nuevo_id    = @nuevo_turno_265 OUTPUT,
    @mensaje     = @msg_turno_265 OUTPUT;
PRINT N'Turno 2026-07-20 09:00:00 Dr/a García -> ' + @msg_turno_265;
GO
DECLARE @nuevo_turno_266 INT, @msg_turno_266 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 6,
    @id_paciente = 1,
    @fecha_hora  = '2026-07-20 10:00:00',
    @nuevo_id    = @nuevo_turno_266 OUTPUT,
    @mensaje     = @msg_turno_266 OUTPUT;
PRINT N'Turno 2026-07-20 10:00:00 Dr/a García -> ' + @msg_turno_266;
GO
DECLARE @nuevo_turno_267 INT, @msg_turno_267 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 6,
    @id_paciente = 2,
    @fecha_hora  = '2026-07-20 11:00:00',
    @nuevo_id    = @nuevo_turno_267 OUTPUT,
    @mensaje     = @msg_turno_267 OUTPUT;
PRINT N'Turno 2026-07-20 11:00:00 Dr/a García -> ' + @msg_turno_267;
GO
DECLARE @nuevo_turno_268 INT, @msg_turno_268 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 6,
    @id_paciente = 3,
    @fecha_hora  = '2026-07-20 12:00:00',
    @nuevo_id    = @nuevo_turno_268 OUTPUT,
    @mensaje     = @msg_turno_268 OUTPUT;
PRINT N'Turno 2026-07-20 12:00:00 Dr/a García -> ' + @msg_turno_268;
GO
DECLARE @nuevo_turno_269 INT, @msg_turno_269 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 6,
    @id_paciente = 4,
    @fecha_hora  = '2026-08-03 09:00:00',
    @nuevo_id    = @nuevo_turno_269 OUTPUT,
    @mensaje     = @msg_turno_269 OUTPUT;
PRINT N'Turno 2026-08-03 09:00:00 Dr/a García -> ' + @msg_turno_269;
GO
DECLARE @nuevo_turno_270 INT, @msg_turno_270 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 6,
    @id_paciente = 5,
    @fecha_hora  = '2026-08-03 10:00:00',
    @nuevo_id    = @nuevo_turno_270 OUTPUT,
    @mensaje     = @msg_turno_270 OUTPUT;
PRINT N'Turno 2026-08-03 10:00:00 Dr/a García -> ' + @msg_turno_270;
GO
DECLARE @nuevo_turno_271 INT, @msg_turno_271 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 6,
    @id_paciente = 6,
    @fecha_hora  = '2026-08-03 11:00:00',
    @nuevo_id    = @nuevo_turno_271 OUTPUT,
    @mensaje     = @msg_turno_271 OUTPUT;
PRINT N'Turno 2026-08-03 11:00:00 Dr/a García -> ' + @msg_turno_271;
GO
DECLARE @nuevo_turno_272 INT, @msg_turno_272 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 6,
    @id_paciente = 7,
    @fecha_hora  = '2026-08-03 12:00:00',
    @nuevo_id    = @nuevo_turno_272 OUTPUT,
    @mensaje     = @msg_turno_272 OUTPUT;
PRINT N'Turno 2026-08-03 12:00:00 Dr/a García -> ' + @msg_turno_272;
GO
DECLARE @nuevo_turno_273 INT, @msg_turno_273 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 6,
    @id_paciente = 8,
    @fecha_hora  = '2026-08-17 09:00:00',
    @nuevo_id    = @nuevo_turno_273 OUTPUT,
    @mensaje     = @msg_turno_273 OUTPUT;
PRINT N'Turno 2026-08-17 09:00:00 Dr/a García -> ' + @msg_turno_273;
GO
DECLARE @nuevo_turno_274 INT, @msg_turno_274 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 6,
    @id_paciente = 9,
    @fecha_hora  = '2026-08-17 10:00:00',
    @nuevo_id    = @nuevo_turno_274 OUTPUT,
    @mensaje     = @msg_turno_274 OUTPUT;
PRINT N'Turno 2026-08-17 10:00:00 Dr/a García -> ' + @msg_turno_274;
GO
DECLARE @nuevo_turno_275 INT, @msg_turno_275 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 6,
    @id_paciente = 10,
    @fecha_hora  = '2026-08-17 11:00:00',
    @nuevo_id    = @nuevo_turno_275 OUTPUT,
    @mensaje     = @msg_turno_275 OUTPUT;
PRINT N'Turno 2026-08-17 11:00:00 Dr/a García -> ' + @msg_turno_275;
GO
DECLARE @nuevo_turno_276 INT, @msg_turno_276 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 6,
    @id_paciente = 11,
    @fecha_hora  = '2026-08-17 12:00:00',
    @nuevo_id    = @nuevo_turno_276 OUTPUT,
    @mensaje     = @msg_turno_276 OUTPUT;
PRINT N'Turno 2026-08-17 12:00:00 Dr/a García -> ' + @msg_turno_276;
GO
DECLARE @nuevo_turno_277 INT, @msg_turno_277 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 6,
    @id_paciente = 12,
    @fecha_hora  = '2026-09-07 09:00:00',
    @nuevo_id    = @nuevo_turno_277 OUTPUT,
    @mensaje     = @msg_turno_277 OUTPUT;
PRINT N'Turno 2026-09-07 09:00:00 Dr/a García -> ' + @msg_turno_277;
GO
DECLARE @nuevo_turno_278 INT, @msg_turno_278 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 6,
    @id_paciente = 13,
    @fecha_hora  = '2026-09-07 10:00:00',
    @nuevo_id    = @nuevo_turno_278 OUTPUT,
    @mensaje     = @msg_turno_278 OUTPUT;
PRINT N'Turno 2026-09-07 10:00:00 Dr/a García -> ' + @msg_turno_278;
GO
DECLARE @nuevo_turno_279 INT, @msg_turno_279 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 6,
    @id_paciente = 14,
    @fecha_hora  = '2026-09-07 11:00:00',
    @nuevo_id    = @nuevo_turno_279 OUTPUT,
    @mensaje     = @msg_turno_279 OUTPUT;
PRINT N'Turno 2026-09-07 11:00:00 Dr/a García -> ' + @msg_turno_279;
GO
DECLARE @nuevo_turno_280 INT, @msg_turno_280 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 6,
    @id_paciente = 15,
    @fecha_hora  = '2026-09-07 12:00:00',
    @nuevo_id    = @nuevo_turno_280 OUTPUT,
    @mensaje     = @msg_turno_280 OUTPUT;
PRINT N'Turno 2026-09-07 12:00:00 Dr/a García -> ' + @msg_turno_280;
GO
DECLARE @nuevo_turno_281 INT, @msg_turno_281 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 6,
    @id_paciente = 16,
    @fecha_hora  = '2026-10-05 09:00:00',
    @nuevo_id    = @nuevo_turno_281 OUTPUT,
    @mensaje     = @msg_turno_281 OUTPUT;
PRINT N'Turno 2026-10-05 09:00:00 Dr/a García -> ' + @msg_turno_281;
GO
DECLARE @nuevo_turno_282 INT, @msg_turno_282 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 6,
    @id_paciente = 17,
    @fecha_hora  = '2026-10-05 10:00:00',
    @nuevo_id    = @nuevo_turno_282 OUTPUT,
    @mensaje     = @msg_turno_282 OUTPUT;
PRINT N'Turno 2026-10-05 10:00:00 Dr/a García -> ' + @msg_turno_282;
GO
DECLARE @nuevo_turno_283 INT, @msg_turno_283 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 6,
    @id_paciente = 18,
    @fecha_hora  = '2026-10-05 11:00:00',
    @nuevo_id    = @nuevo_turno_283 OUTPUT,
    @mensaje     = @msg_turno_283 OUTPUT;
PRINT N'Turno 2026-10-05 11:00:00 Dr/a García -> ' + @msg_turno_283;
GO
DECLARE @nuevo_turno_284 INT, @msg_turno_284 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 6,
    @id_paciente = 19,
    @fecha_hora  = '2026-10-05 12:00:00',
    @nuevo_id    = @nuevo_turno_284 OUTPUT,
    @mensaje     = @msg_turno_284 OUTPUT;
PRINT N'Turno 2026-10-05 12:00:00 Dr/a García -> ' + @msg_turno_284;
GO
DECLARE @nuevo_turno_285 INT, @msg_turno_285 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 7,
    @id_paciente = 20,
    @fecha_hora  = '2026-07-07 09:00:00',
    @nuevo_id    = @nuevo_turno_285 OUTPUT,
    @mensaje     = @msg_turno_285 OUTPUT;
PRINT N'Turno 2026-07-07 09:00:00 Dr/a Suárez -> ' + @msg_turno_285;
GO
DECLARE @nuevo_turno_286 INT, @msg_turno_286 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 7,
    @id_paciente = 21,
    @fecha_hora  = '2026-07-07 10:00:00',
    @nuevo_id    = @nuevo_turno_286 OUTPUT,
    @mensaje     = @msg_turno_286 OUTPUT;
PRINT N'Turno 2026-07-07 10:00:00 Dr/a Suárez -> ' + @msg_turno_286;
GO
DECLARE @nuevo_turno_287 INT, @msg_turno_287 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 7,
    @id_paciente = 22,
    @fecha_hora  = '2026-07-07 11:00:00',
    @nuevo_id    = @nuevo_turno_287 OUTPUT,
    @mensaje     = @msg_turno_287 OUTPUT;
PRINT N'Turno 2026-07-07 11:00:00 Dr/a Suárez -> ' + @msg_turno_287;
GO
DECLARE @nuevo_turno_288 INT, @msg_turno_288 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 7,
    @id_paciente = 23,
    @fecha_hora  = '2026-07-07 12:00:00',
    @nuevo_id    = @nuevo_turno_288 OUTPUT,
    @mensaje     = @msg_turno_288 OUTPUT;
PRINT N'Turno 2026-07-07 12:00:00 Dr/a Suárez -> ' + @msg_turno_288;
GO
DECLARE @nuevo_turno_289 INT, @msg_turno_289 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 7,
    @id_paciente = 24,
    @fecha_hora  = '2026-07-28 09:00:00',
    @nuevo_id    = @nuevo_turno_289 OUTPUT,
    @mensaje     = @msg_turno_289 OUTPUT;
PRINT N'Turno 2026-07-28 09:00:00 Dr/a Suárez -> ' + @msg_turno_289;
GO
DECLARE @nuevo_turno_290 INT, @msg_turno_290 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 7,
    @id_paciente = 25,
    @fecha_hora  = '2026-07-28 10:00:00',
    @nuevo_id    = @nuevo_turno_290 OUTPUT,
    @mensaje     = @msg_turno_290 OUTPUT;
PRINT N'Turno 2026-07-28 10:00:00 Dr/a Suárez -> ' + @msg_turno_290;
GO
DECLARE @nuevo_turno_291 INT, @msg_turno_291 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 7,
    @id_paciente = 1,
    @fecha_hora  = '2026-07-28 11:00:00',
    @nuevo_id    = @nuevo_turno_291 OUTPUT,
    @mensaje     = @msg_turno_291 OUTPUT;
PRINT N'Turno 2026-07-28 11:00:00 Dr/a Suárez -> ' + @msg_turno_291;
GO
DECLARE @nuevo_turno_292 INT, @msg_turno_292 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 7,
    @id_paciente = 2,
    @fecha_hora  = '2026-07-28 12:00:00',
    @nuevo_id    = @nuevo_turno_292 OUTPUT,
    @mensaje     = @msg_turno_292 OUTPUT;
PRINT N'Turno 2026-07-28 12:00:00 Dr/a Suárez -> ' + @msg_turno_292;
GO
DECLARE @nuevo_turno_293 INT, @msg_turno_293 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 7,
    @id_paciente = 3,
    @fecha_hora  = '2026-08-11 09:00:00',
    @nuevo_id    = @nuevo_turno_293 OUTPUT,
    @mensaje     = @msg_turno_293 OUTPUT;
PRINT N'Turno 2026-08-11 09:00:00 Dr/a Suárez -> ' + @msg_turno_293;
GO
DECLARE @nuevo_turno_294 INT, @msg_turno_294 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 7,
    @id_paciente = 4,
    @fecha_hora  = '2026-08-11 10:00:00',
    @nuevo_id    = @nuevo_turno_294 OUTPUT,
    @mensaje     = @msg_turno_294 OUTPUT;
PRINT N'Turno 2026-08-11 10:00:00 Dr/a Suárez -> ' + @msg_turno_294;
GO
DECLARE @nuevo_turno_295 INT, @msg_turno_295 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 7,
    @id_paciente = 5,
    @fecha_hora  = '2026-08-11 11:00:00',
    @nuevo_id    = @nuevo_turno_295 OUTPUT,
    @mensaje     = @msg_turno_295 OUTPUT;
PRINT N'Turno 2026-08-11 11:00:00 Dr/a Suárez -> ' + @msg_turno_295;
GO
DECLARE @nuevo_turno_296 INT, @msg_turno_296 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 7,
    @id_paciente = 6,
    @fecha_hora  = '2026-08-11 12:00:00',
    @nuevo_id    = @nuevo_turno_296 OUTPUT,
    @mensaje     = @msg_turno_296 OUTPUT;
PRINT N'Turno 2026-08-11 12:00:00 Dr/a Suárez -> ' + @msg_turno_296;
GO
DECLARE @nuevo_turno_297 INT, @msg_turno_297 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 7,
    @id_paciente = 7,
    @fecha_hora  = '2026-08-25 09:00:00',
    @nuevo_id    = @nuevo_turno_297 OUTPUT,
    @mensaje     = @msg_turno_297 OUTPUT;
PRINT N'Turno 2026-08-25 09:00:00 Dr/a Suárez -> ' + @msg_turno_297;
GO
DECLARE @nuevo_turno_298 INT, @msg_turno_298 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 7,
    @id_paciente = 8,
    @fecha_hora  = '2026-08-25 10:00:00',
    @nuevo_id    = @nuevo_turno_298 OUTPUT,
    @mensaje     = @msg_turno_298 OUTPUT;
PRINT N'Turno 2026-08-25 10:00:00 Dr/a Suárez -> ' + @msg_turno_298;
GO
DECLARE @nuevo_turno_299 INT, @msg_turno_299 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 7,
    @id_paciente = 9,
    @fecha_hora  = '2026-08-25 11:00:00',
    @nuevo_id    = @nuevo_turno_299 OUTPUT,
    @mensaje     = @msg_turno_299 OUTPUT;
PRINT N'Turno 2026-08-25 11:00:00 Dr/a Suárez -> ' + @msg_turno_299;
GO
DECLARE @nuevo_turno_300 INT, @msg_turno_300 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 7,
    @id_paciente = 10,
    @fecha_hora  = '2026-08-25 12:00:00',
    @nuevo_id    = @nuevo_turno_300 OUTPUT,
    @mensaje     = @msg_turno_300 OUTPUT;
PRINT N'Turno 2026-08-25 12:00:00 Dr/a Suárez -> ' + @msg_turno_300;
GO
DECLARE @nuevo_turno_301 INT, @msg_turno_301 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 7,
    @id_paciente = 11,
    @fecha_hora  = '2026-09-01 09:00:00',
    @nuevo_id    = @nuevo_turno_301 OUTPUT,
    @mensaje     = @msg_turno_301 OUTPUT;
PRINT N'Turno 2026-09-01 09:00:00 Dr/a Suárez -> ' + @msg_turno_301;
GO
DECLARE @nuevo_turno_302 INT, @msg_turno_302 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 7,
    @id_paciente = 12,
    @fecha_hora  = '2026-09-01 10:00:00',
    @nuevo_id    = @nuevo_turno_302 OUTPUT,
    @mensaje     = @msg_turno_302 OUTPUT;
PRINT N'Turno 2026-09-01 10:00:00 Dr/a Suárez -> ' + @msg_turno_302;
GO
DECLARE @nuevo_turno_303 INT, @msg_turno_303 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 7,
    @id_paciente = 13,
    @fecha_hora  = '2026-09-01 11:00:00',
    @nuevo_id    = @nuevo_turno_303 OUTPUT,
    @mensaje     = @msg_turno_303 OUTPUT;
PRINT N'Turno 2026-09-01 11:00:00 Dr/a Suárez -> ' + @msg_turno_303;
GO
DECLARE @nuevo_turno_304 INT, @msg_turno_304 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 7,
    @id_paciente = 14,
    @fecha_hora  = '2026-09-01 12:00:00',
    @nuevo_id    = @nuevo_turno_304 OUTPUT,
    @mensaje     = @msg_turno_304 OUTPUT;
PRINT N'Turno 2026-09-01 12:00:00 Dr/a Suárez -> ' + @msg_turno_304;
GO
DECLARE @nuevo_turno_305 INT, @msg_turno_305 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 7,
    @id_paciente = 15,
    @fecha_hora  = '2026-10-06 09:00:00',
    @nuevo_id    = @nuevo_turno_305 OUTPUT,
    @mensaje     = @msg_turno_305 OUTPUT;
PRINT N'Turno 2026-10-06 09:00:00 Dr/a Suárez -> ' + @msg_turno_305;
GO
DECLARE @nuevo_turno_306 INT, @msg_turno_306 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 7,
    @id_paciente = 16,
    @fecha_hora  = '2026-10-06 10:00:00',
    @nuevo_id    = @nuevo_turno_306 OUTPUT,
    @mensaje     = @msg_turno_306 OUTPUT;
PRINT N'Turno 2026-10-06 10:00:00 Dr/a Suárez -> ' + @msg_turno_306;
GO
DECLARE @nuevo_turno_307 INT, @msg_turno_307 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 7,
    @id_paciente = 17,
    @fecha_hora  = '2026-10-06 11:00:00',
    @nuevo_id    = @nuevo_turno_307 OUTPUT,
    @mensaje     = @msg_turno_307 OUTPUT;
PRINT N'Turno 2026-10-06 11:00:00 Dr/a Suárez -> ' + @msg_turno_307;
GO
DECLARE @nuevo_turno_308 INT, @msg_turno_308 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 7,
    @id_paciente = 18,
    @fecha_hora  = '2026-10-06 12:00:00',
    @nuevo_id    = @nuevo_turno_308 OUTPUT,
    @mensaje     = @msg_turno_308 OUTPUT;
PRINT N'Turno 2026-10-06 12:00:00 Dr/a Suárez -> ' + @msg_turno_308;
GO
DECLARE @nuevo_turno_309 INT, @msg_turno_309 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 8,
    @id_paciente = 19,
    @fecha_hora  = '2026-07-22 09:00:00',
    @nuevo_id    = @nuevo_turno_309 OUTPUT,
    @mensaje     = @msg_turno_309 OUTPUT;
PRINT N'Turno 2026-07-22 09:00:00 Dr/a Álvarez -> ' + @msg_turno_309;
GO
DECLARE @nuevo_turno_310 INT, @msg_turno_310 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 8,
    @id_paciente = 20,
    @fecha_hora  = '2026-07-22 10:00:00',
    @nuevo_id    = @nuevo_turno_310 OUTPUT,
    @mensaje     = @msg_turno_310 OUTPUT;
PRINT N'Turno 2026-07-22 10:00:00 Dr/a Álvarez -> ' + @msg_turno_310;
GO
DECLARE @nuevo_turno_311 INT, @msg_turno_311 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 8,
    @id_paciente = 21,
    @fecha_hora  = '2026-07-22 11:00:00',
    @nuevo_id    = @nuevo_turno_311 OUTPUT,
    @mensaje     = @msg_turno_311 OUTPUT;
PRINT N'Turno 2026-07-22 11:00:00 Dr/a Álvarez -> ' + @msg_turno_311;
GO
DECLARE @nuevo_turno_312 INT, @msg_turno_312 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 8,
    @id_paciente = 22,
    @fecha_hora  = '2026-07-22 12:00:00',
    @nuevo_id    = @nuevo_turno_312 OUTPUT,
    @mensaje     = @msg_turno_312 OUTPUT;
PRINT N'Turno 2026-07-22 12:00:00 Dr/a Álvarez -> ' + @msg_turno_312;
GO
DECLARE @nuevo_turno_313 INT, @msg_turno_313 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 8,
    @id_paciente = 23,
    @fecha_hora  = '2026-08-05 09:00:00',
    @nuevo_id    = @nuevo_turno_313 OUTPUT,
    @mensaje     = @msg_turno_313 OUTPUT;
PRINT N'Turno 2026-08-05 09:00:00 Dr/a Álvarez -> ' + @msg_turno_313;
GO
DECLARE @nuevo_turno_314 INT, @msg_turno_314 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 8,
    @id_paciente = 24,
    @fecha_hora  = '2026-08-05 10:00:00',
    @nuevo_id    = @nuevo_turno_314 OUTPUT,
    @mensaje     = @msg_turno_314 OUTPUT;
PRINT N'Turno 2026-08-05 10:00:00 Dr/a Álvarez -> ' + @msg_turno_314;
GO
DECLARE @nuevo_turno_315 INT, @msg_turno_315 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 8,
    @id_paciente = 25,
    @fecha_hora  = '2026-08-05 11:00:00',
    @nuevo_id    = @nuevo_turno_315 OUTPUT,
    @mensaje     = @msg_turno_315 OUTPUT;
PRINT N'Turno 2026-08-05 11:00:00 Dr/a Álvarez -> ' + @msg_turno_315;
GO
DECLARE @nuevo_turno_316 INT, @msg_turno_316 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 8,
    @id_paciente = 1,
    @fecha_hora  = '2026-08-05 12:00:00',
    @nuevo_id    = @nuevo_turno_316 OUTPUT,
    @mensaje     = @msg_turno_316 OUTPUT;
PRINT N'Turno 2026-08-05 12:00:00 Dr/a Álvarez -> ' + @msg_turno_316;
GO
DECLARE @nuevo_turno_317 INT, @msg_turno_317 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 8,
    @id_paciente = 2,
    @fecha_hora  = '2026-08-19 09:00:00',
    @nuevo_id    = @nuevo_turno_317 OUTPUT,
    @mensaje     = @msg_turno_317 OUTPUT;
PRINT N'Turno 2026-08-19 09:00:00 Dr/a Álvarez -> ' + @msg_turno_317;
GO
DECLARE @nuevo_turno_318 INT, @msg_turno_318 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 8,
    @id_paciente = 3,
    @fecha_hora  = '2026-08-19 10:00:00',
    @nuevo_id    = @nuevo_turno_318 OUTPUT,
    @mensaje     = @msg_turno_318 OUTPUT;
PRINT N'Turno 2026-08-19 10:00:00 Dr/a Álvarez -> ' + @msg_turno_318;
GO
DECLARE @nuevo_turno_319 INT, @msg_turno_319 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 8,
    @id_paciente = 4,
    @fecha_hora  = '2026-08-19 11:00:00',
    @nuevo_id    = @nuevo_turno_319 OUTPUT,
    @mensaje     = @msg_turno_319 OUTPUT;
PRINT N'Turno 2026-08-19 11:00:00 Dr/a Álvarez -> ' + @msg_turno_319;
GO
DECLARE @nuevo_turno_320 INT, @msg_turno_320 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 8,
    @id_paciente = 5,
    @fecha_hora  = '2026-08-19 12:00:00',
    @nuevo_id    = @nuevo_turno_320 OUTPUT,
    @mensaje     = @msg_turno_320 OUTPUT;
PRINT N'Turno 2026-08-19 12:00:00 Dr/a Álvarez -> ' + @msg_turno_320;
GO
DECLARE @nuevo_turno_321 INT, @msg_turno_321 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 8,
    @id_paciente = 6,
    @fecha_hora  = '2026-09-02 09:00:00',
    @nuevo_id    = @nuevo_turno_321 OUTPUT,
    @mensaje     = @msg_turno_321 OUTPUT;
PRINT N'Turno 2026-09-02 09:00:00 Dr/a Álvarez -> ' + @msg_turno_321;
GO
DECLARE @nuevo_turno_322 INT, @msg_turno_322 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 8,
    @id_paciente = 7,
    @fecha_hora  = '2026-09-02 10:00:00',
    @nuevo_id    = @nuevo_turno_322 OUTPUT,
    @mensaje     = @msg_turno_322 OUTPUT;
PRINT N'Turno 2026-09-02 10:00:00 Dr/a Álvarez -> ' + @msg_turno_322;
GO
DECLARE @nuevo_turno_323 INT, @msg_turno_323 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 8,
    @id_paciente = 8,
    @fecha_hora  = '2026-09-02 11:00:00',
    @nuevo_id    = @nuevo_turno_323 OUTPUT,
    @mensaje     = @msg_turno_323 OUTPUT;
PRINT N'Turno 2026-09-02 11:00:00 Dr/a Álvarez -> ' + @msg_turno_323;
GO
DECLARE @nuevo_turno_324 INT, @msg_turno_324 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 8,
    @id_paciente = 9,
    @fecha_hora  = '2026-09-02 12:00:00',
    @nuevo_id    = @nuevo_turno_324 OUTPUT,
    @mensaje     = @msg_turno_324 OUTPUT;
PRINT N'Turno 2026-09-02 12:00:00 Dr/a Álvarez -> ' + @msg_turno_324;
GO
DECLARE @nuevo_turno_325 INT, @msg_turno_325 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 8,
    @id_paciente = 10,
    @fecha_hora  = '2026-09-16 09:00:00',
    @nuevo_id    = @nuevo_turno_325 OUTPUT,
    @mensaje     = @msg_turno_325 OUTPUT;
PRINT N'Turno 2026-09-16 09:00:00 Dr/a Álvarez -> ' + @msg_turno_325;
GO
DECLARE @nuevo_turno_326 INT, @msg_turno_326 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 8,
    @id_paciente = 11,
    @fecha_hora  = '2026-09-16 10:00:00',
    @nuevo_id    = @nuevo_turno_326 OUTPUT,
    @mensaje     = @msg_turno_326 OUTPUT;
PRINT N'Turno 2026-09-16 10:00:00 Dr/a Álvarez -> ' + @msg_turno_326;
GO
DECLARE @nuevo_turno_327 INT, @msg_turno_327 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 8,
    @id_paciente = 12,
    @fecha_hora  = '2026-09-16 11:00:00',
    @nuevo_id    = @nuevo_turno_327 OUTPUT,
    @mensaje     = @msg_turno_327 OUTPUT;
PRINT N'Turno 2026-09-16 11:00:00 Dr/a Álvarez -> ' + @msg_turno_327;
GO
DECLARE @nuevo_turno_328 INT, @msg_turno_328 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 8,
    @id_paciente = 13,
    @fecha_hora  = '2026-09-16 12:00:00',
    @nuevo_id    = @nuevo_turno_328 OUTPUT,
    @mensaje     = @msg_turno_328 OUTPUT;
PRINT N'Turno 2026-09-16 12:00:00 Dr/a Álvarez -> ' + @msg_turno_328;
GO
DECLARE @nuevo_turno_329 INT, @msg_turno_329 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 8,
    @id_paciente = 14,
    @fecha_hora  = '2026-10-07 09:00:00',
    @nuevo_id    = @nuevo_turno_329 OUTPUT,
    @mensaje     = @msg_turno_329 OUTPUT;
PRINT N'Turno 2026-10-07 09:00:00 Dr/a Álvarez -> ' + @msg_turno_329;
GO
DECLARE @nuevo_turno_330 INT, @msg_turno_330 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 8,
    @id_paciente = 15,
    @fecha_hora  = '2026-10-07 10:00:00',
    @nuevo_id    = @nuevo_turno_330 OUTPUT,
    @mensaje     = @msg_turno_330 OUTPUT;
PRINT N'Turno 2026-10-07 10:00:00 Dr/a Álvarez -> ' + @msg_turno_330;
GO
DECLARE @nuevo_turno_331 INT, @msg_turno_331 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 8,
    @id_paciente = 16,
    @fecha_hora  = '2026-10-07 11:00:00',
    @nuevo_id    = @nuevo_turno_331 OUTPUT,
    @mensaje     = @msg_turno_331 OUTPUT;
PRINT N'Turno 2026-10-07 11:00:00 Dr/a Álvarez -> ' + @msg_turno_331;
GO
DECLARE @nuevo_turno_332 INT, @msg_turno_332 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 8,
    @id_paciente = 17,
    @fecha_hora  = '2026-10-07 12:00:00',
    @nuevo_id    = @nuevo_turno_332 OUTPUT,
    @mensaje     = @msg_turno_332 OUTPUT;
PRINT N'Turno 2026-10-07 12:00:00 Dr/a Álvarez -> ' + @msg_turno_332;
GO
DECLARE @nuevo_turno_333 INT, @msg_turno_333 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 9,
    @id_paciente = 18,
    @fecha_hora  = '2026-07-09 09:00:00',
    @nuevo_id    = @nuevo_turno_333 OUTPUT,
    @mensaje     = @msg_turno_333 OUTPUT;
PRINT N'Turno 2026-07-09 09:00:00 Dr/a González -> ' + @msg_turno_333;
GO
DECLARE @nuevo_turno_334 INT, @msg_turno_334 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 9,
    @id_paciente = 19,
    @fecha_hora  = '2026-07-09 10:00:00',
    @nuevo_id    = @nuevo_turno_334 OUTPUT,
    @mensaje     = @msg_turno_334 OUTPUT;
PRINT N'Turno 2026-07-09 10:00:00 Dr/a González -> ' + @msg_turno_334;
GO
DECLARE @nuevo_turno_335 INT, @msg_turno_335 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 9,
    @id_paciente = 20,
    @fecha_hora  = '2026-07-09 11:00:00',
    @nuevo_id    = @nuevo_turno_335 OUTPUT,
    @mensaje     = @msg_turno_335 OUTPUT;
PRINT N'Turno 2026-07-09 11:00:00 Dr/a González -> ' + @msg_turno_335;
GO
DECLARE @nuevo_turno_336 INT, @msg_turno_336 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 9,
    @id_paciente = 21,
    @fecha_hora  = '2026-07-09 12:00:00',
    @nuevo_id    = @nuevo_turno_336 OUTPUT,
    @mensaje     = @msg_turno_336 OUTPUT;
PRINT N'Turno 2026-07-09 12:00:00 Dr/a González -> ' + @msg_turno_336;
GO
DECLARE @nuevo_turno_337 INT, @msg_turno_337 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 9,
    @id_paciente = 22,
    @fecha_hora  = '2026-07-16 09:00:00',
    @nuevo_id    = @nuevo_turno_337 OUTPUT,
    @mensaje     = @msg_turno_337 OUTPUT;
PRINT N'Turno 2026-07-16 09:00:00 Dr/a González -> ' + @msg_turno_337;
GO
DECLARE @nuevo_turno_338 INT, @msg_turno_338 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 9,
    @id_paciente = 23,
    @fecha_hora  = '2026-07-16 10:00:00',
    @nuevo_id    = @nuevo_turno_338 OUTPUT,
    @mensaje     = @msg_turno_338 OUTPUT;
PRINT N'Turno 2026-07-16 10:00:00 Dr/a González -> ' + @msg_turno_338;
GO
DECLARE @nuevo_turno_339 INT, @msg_turno_339 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 9,
    @id_paciente = 24,
    @fecha_hora  = '2026-07-16 11:00:00',
    @nuevo_id    = @nuevo_turno_339 OUTPUT,
    @mensaje     = @msg_turno_339 OUTPUT;
PRINT N'Turno 2026-07-16 11:00:00 Dr/a González -> ' + @msg_turno_339;
GO
DECLARE @nuevo_turno_340 INT, @msg_turno_340 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 9,
    @id_paciente = 25,
    @fecha_hora  = '2026-07-16 12:00:00',
    @nuevo_id    = @nuevo_turno_340 OUTPUT,
    @mensaje     = @msg_turno_340 OUTPUT;
PRINT N'Turno 2026-07-16 12:00:00 Dr/a González -> ' + @msg_turno_340;
GO
DECLARE @nuevo_turno_341 INT, @msg_turno_341 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 9,
    @id_paciente = 1,
    @fecha_hora  = '2026-08-13 09:00:00',
    @nuevo_id    = @nuevo_turno_341 OUTPUT,
    @mensaje     = @msg_turno_341 OUTPUT;
PRINT N'Turno 2026-08-13 09:00:00 Dr/a González -> ' + @msg_turno_341;
GO
DECLARE @nuevo_turno_342 INT, @msg_turno_342 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 9,
    @id_paciente = 2,
    @fecha_hora  = '2026-08-13 10:00:00',
    @nuevo_id    = @nuevo_turno_342 OUTPUT,
    @mensaje     = @msg_turno_342 OUTPUT;
PRINT N'Turno 2026-08-13 10:00:00 Dr/a González -> ' + @msg_turno_342;
GO
DECLARE @nuevo_turno_343 INT, @msg_turno_343 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 9,
    @id_paciente = 3,
    @fecha_hora  = '2026-08-13 11:00:00',
    @nuevo_id    = @nuevo_turno_343 OUTPUT,
    @mensaje     = @msg_turno_343 OUTPUT;
PRINT N'Turno 2026-08-13 11:00:00 Dr/a González -> ' + @msg_turno_343;
GO
DECLARE @nuevo_turno_344 INT, @msg_turno_344 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 9,
    @id_paciente = 4,
    @fecha_hora  = '2026-08-13 12:00:00',
    @nuevo_id    = @nuevo_turno_344 OUTPUT,
    @mensaje     = @msg_turno_344 OUTPUT;
PRINT N'Turno 2026-08-13 12:00:00 Dr/a González -> ' + @msg_turno_344;
GO
DECLARE @nuevo_turno_345 INT, @msg_turno_345 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 9,
    @id_paciente = 5,
    @fecha_hora  = '2026-08-27 09:00:00',
    @nuevo_id    = @nuevo_turno_345 OUTPUT,
    @mensaje     = @msg_turno_345 OUTPUT;
PRINT N'Turno 2026-08-27 09:00:00 Dr/a González -> ' + @msg_turno_345;
GO
DECLARE @nuevo_turno_346 INT, @msg_turno_346 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 9,
    @id_paciente = 6,
    @fecha_hora  = '2026-08-27 10:00:00',
    @nuevo_id    = @nuevo_turno_346 OUTPUT,
    @mensaje     = @msg_turno_346 OUTPUT;
PRINT N'Turno 2026-08-27 10:00:00 Dr/a González -> ' + @msg_turno_346;
GO
DECLARE @nuevo_turno_347 INT, @msg_turno_347 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 9,
    @id_paciente = 7,
    @fecha_hora  = '2026-08-27 11:00:00',
    @nuevo_id    = @nuevo_turno_347 OUTPUT,
    @mensaje     = @msg_turno_347 OUTPUT;
PRINT N'Turno 2026-08-27 11:00:00 Dr/a González -> ' + @msg_turno_347;
GO
DECLARE @nuevo_turno_348 INT, @msg_turno_348 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 9,
    @id_paciente = 8,
    @fecha_hora  = '2026-08-27 12:00:00',
    @nuevo_id    = @nuevo_turno_348 OUTPUT,
    @mensaje     = @msg_turno_348 OUTPUT;
PRINT N'Turno 2026-08-27 12:00:00 Dr/a González -> ' + @msg_turno_348;
GO
DECLARE @nuevo_turno_349 INT, @msg_turno_349 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 9,
    @id_paciente = 9,
    @fecha_hora  = '2026-09-10 09:00:00',
    @nuevo_id    = @nuevo_turno_349 OUTPUT,
    @mensaje     = @msg_turno_349 OUTPUT;
PRINT N'Turno 2026-09-10 09:00:00 Dr/a González -> ' + @msg_turno_349;
GO
DECLARE @nuevo_turno_350 INT, @msg_turno_350 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 9,
    @id_paciente = 10,
    @fecha_hora  = '2026-09-10 10:00:00',
    @nuevo_id    = @nuevo_turno_350 OUTPUT,
    @mensaje     = @msg_turno_350 OUTPUT;
PRINT N'Turno 2026-09-10 10:00:00 Dr/a González -> ' + @msg_turno_350;
GO
DECLARE @nuevo_turno_351 INT, @msg_turno_351 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 9,
    @id_paciente = 11,
    @fecha_hora  = '2026-09-10 11:00:00',
    @nuevo_id    = @nuevo_turno_351 OUTPUT,
    @mensaje     = @msg_turno_351 OUTPUT;
PRINT N'Turno 2026-09-10 11:00:00 Dr/a González -> ' + @msg_turno_351;
GO
DECLARE @nuevo_turno_352 INT, @msg_turno_352 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 9,
    @id_paciente = 12,
    @fecha_hora  = '2026-09-10 12:00:00',
    @nuevo_id    = @nuevo_turno_352 OUTPUT,
    @mensaje     = @msg_turno_352 OUTPUT;
PRINT N'Turno 2026-09-10 12:00:00 Dr/a González -> ' + @msg_turno_352;
GO
DECLARE @nuevo_turno_353 INT, @msg_turno_353 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 9,
    @id_paciente = 13,
    @fecha_hora  = '2026-10-08 09:00:00',
    @nuevo_id    = @nuevo_turno_353 OUTPUT,
    @mensaje     = @msg_turno_353 OUTPUT;
PRINT N'Turno 2026-10-08 09:00:00 Dr/a González -> ' + @msg_turno_353;
GO
DECLARE @nuevo_turno_354 INT, @msg_turno_354 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 9,
    @id_paciente = 14,
    @fecha_hora  = '2026-10-08 10:00:00',
    @nuevo_id    = @nuevo_turno_354 OUTPUT,
    @mensaje     = @msg_turno_354 OUTPUT;
PRINT N'Turno 2026-10-08 10:00:00 Dr/a González -> ' + @msg_turno_354;
GO
DECLARE @nuevo_turno_355 INT, @msg_turno_355 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 9,
    @id_paciente = 15,
    @fecha_hora  = '2026-10-08 11:00:00',
    @nuevo_id    = @nuevo_turno_355 OUTPUT,
    @mensaje     = @msg_turno_355 OUTPUT;
PRINT N'Turno 2026-10-08 11:00:00 Dr/a González -> ' + @msg_turno_355;
GO
DECLARE @nuevo_turno_356 INT, @msg_turno_356 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 9,
    @id_paciente = 16,
    @fecha_hora  = '2026-10-08 12:00:00',
    @nuevo_id    = @nuevo_turno_356 OUTPUT,
    @mensaje     = @msg_turno_356 OUTPUT;
PRINT N'Turno 2026-10-08 12:00:00 Dr/a González -> ' + @msg_turno_356;
GO
DECLARE @nuevo_turno_357 INT, @msg_turno_357 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 10,
    @id_paciente = 17,
    @fecha_hora  = '2026-07-10 09:00:00',
    @nuevo_id    = @nuevo_turno_357 OUTPUT,
    @mensaje     = @msg_turno_357 OUTPUT;
PRINT N'Turno 2026-07-10 09:00:00 Dr/a López -> ' + @msg_turno_357;
GO
DECLARE @nuevo_turno_358 INT, @msg_turno_358 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 10,
    @id_paciente = 18,
    @fecha_hora  = '2026-07-10 10:00:00',
    @nuevo_id    = @nuevo_turno_358 OUTPUT,
    @mensaje     = @msg_turno_358 OUTPUT;
PRINT N'Turno 2026-07-10 10:00:00 Dr/a López -> ' + @msg_turno_358;
GO
DECLARE @nuevo_turno_359 INT, @msg_turno_359 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 10,
    @id_paciente = 19,
    @fecha_hora  = '2026-07-10 11:00:00',
    @nuevo_id    = @nuevo_turno_359 OUTPUT,
    @mensaje     = @msg_turno_359 OUTPUT;
PRINT N'Turno 2026-07-10 11:00:00 Dr/a López -> ' + @msg_turno_359;
GO
DECLARE @nuevo_turno_360 INT, @msg_turno_360 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 10,
    @id_paciente = 20,
    @fecha_hora  = '2026-07-10 12:00:00',
    @nuevo_id    = @nuevo_turno_360 OUTPUT,
    @mensaje     = @msg_turno_360 OUTPUT;
PRINT N'Turno 2026-07-10 12:00:00 Dr/a López -> ' + @msg_turno_360;
GO
DECLARE @nuevo_turno_361 INT, @msg_turno_361 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 10,
    @id_paciente = 21,
    @fecha_hora  = '2026-07-24 09:00:00',
    @nuevo_id    = @nuevo_turno_361 OUTPUT,
    @mensaje     = @msg_turno_361 OUTPUT;
PRINT N'Turno 2026-07-24 09:00:00 Dr/a López -> ' + @msg_turno_361;
GO
DECLARE @nuevo_turno_362 INT, @msg_turno_362 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 10,
    @id_paciente = 22,
    @fecha_hora  = '2026-07-24 10:00:00',
    @nuevo_id    = @nuevo_turno_362 OUTPUT,
    @mensaje     = @msg_turno_362 OUTPUT;
PRINT N'Turno 2026-07-24 10:00:00 Dr/a López -> ' + @msg_turno_362;
GO
DECLARE @nuevo_turno_363 INT, @msg_turno_363 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 10,
    @id_paciente = 23,
    @fecha_hora  = '2026-07-24 11:00:00',
    @nuevo_id    = @nuevo_turno_363 OUTPUT,
    @mensaje     = @msg_turno_363 OUTPUT;
PRINT N'Turno 2026-07-24 11:00:00 Dr/a López -> ' + @msg_turno_363;
GO
DECLARE @nuevo_turno_364 INT, @msg_turno_364 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 10,
    @id_paciente = 24,
    @fecha_hora  = '2026-07-24 12:00:00',
    @nuevo_id    = @nuevo_turno_364 OUTPUT,
    @mensaje     = @msg_turno_364 OUTPUT;
PRINT N'Turno 2026-07-24 12:00:00 Dr/a López -> ' + @msg_turno_364;
GO
DECLARE @nuevo_turno_365 INT, @msg_turno_365 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 10,
    @id_paciente = 25,
    @fecha_hora  = '2026-08-07 09:00:00',
    @nuevo_id    = @nuevo_turno_365 OUTPUT,
    @mensaje     = @msg_turno_365 OUTPUT;
PRINT N'Turno 2026-08-07 09:00:00 Dr/a López -> ' + @msg_turno_365;
GO
DECLARE @nuevo_turno_366 INT, @msg_turno_366 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 10,
    @id_paciente = 1,
    @fecha_hora  = '2026-08-07 10:00:00',
    @nuevo_id    = @nuevo_turno_366 OUTPUT,
    @mensaje     = @msg_turno_366 OUTPUT;
PRINT N'Turno 2026-08-07 10:00:00 Dr/a López -> ' + @msg_turno_366;
GO
DECLARE @nuevo_turno_367 INT, @msg_turno_367 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 10,
    @id_paciente = 2,
    @fecha_hora  = '2026-08-07 11:00:00',
    @nuevo_id    = @nuevo_turno_367 OUTPUT,
    @mensaje     = @msg_turno_367 OUTPUT;
PRINT N'Turno 2026-08-07 11:00:00 Dr/a López -> ' + @msg_turno_367;
GO
DECLARE @nuevo_turno_368 INT, @msg_turno_368 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 10,
    @id_paciente = 3,
    @fecha_hora  = '2026-08-07 12:00:00',
    @nuevo_id    = @nuevo_turno_368 OUTPUT,
    @mensaje     = @msg_turno_368 OUTPUT;
PRINT N'Turno 2026-08-07 12:00:00 Dr/a López -> ' + @msg_turno_368;
GO
DECLARE @nuevo_turno_369 INT, @msg_turno_369 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 10,
    @id_paciente = 4,
    @fecha_hora  = '2026-08-21 09:00:00',
    @nuevo_id    = @nuevo_turno_369 OUTPUT,
    @mensaje     = @msg_turno_369 OUTPUT;
PRINT N'Turno 2026-08-21 09:00:00 Dr/a López -> ' + @msg_turno_369;
GO
DECLARE @nuevo_turno_370 INT, @msg_turno_370 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 10,
    @id_paciente = 5,
    @fecha_hora  = '2026-08-21 10:00:00',
    @nuevo_id    = @nuevo_turno_370 OUTPUT,
    @mensaje     = @msg_turno_370 OUTPUT;
PRINT N'Turno 2026-08-21 10:00:00 Dr/a López -> ' + @msg_turno_370;
GO
DECLARE @nuevo_turno_371 INT, @msg_turno_371 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 10,
    @id_paciente = 6,
    @fecha_hora  = '2026-08-21 11:00:00',
    @nuevo_id    = @nuevo_turno_371 OUTPUT,
    @mensaje     = @msg_turno_371 OUTPUT;
PRINT N'Turno 2026-08-21 11:00:00 Dr/a López -> ' + @msg_turno_371;
GO
DECLARE @nuevo_turno_372 INT, @msg_turno_372 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 10,
    @id_paciente = 7,
    @fecha_hora  = '2026-08-21 12:00:00',
    @nuevo_id    = @nuevo_turno_372 OUTPUT,
    @mensaje     = @msg_turno_372 OUTPUT;
PRINT N'Turno 2026-08-21 12:00:00 Dr/a López -> ' + @msg_turno_372;
GO
DECLARE @nuevo_turno_373 INT, @msg_turno_373 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 10,
    @id_paciente = 8,
    @fecha_hora  = '2026-09-04 09:00:00',
    @nuevo_id    = @nuevo_turno_373 OUTPUT,
    @mensaje     = @msg_turno_373 OUTPUT;
PRINT N'Turno 2026-09-04 09:00:00 Dr/a López -> ' + @msg_turno_373;
GO
DECLARE @nuevo_turno_374 INT, @msg_turno_374 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 10,
    @id_paciente = 9,
    @fecha_hora  = '2026-09-04 10:00:00',
    @nuevo_id    = @nuevo_turno_374 OUTPUT,
    @mensaje     = @msg_turno_374 OUTPUT;
PRINT N'Turno 2026-09-04 10:00:00 Dr/a López -> ' + @msg_turno_374;
GO
DECLARE @nuevo_turno_375 INT, @msg_turno_375 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 10,
    @id_paciente = 10,
    @fecha_hora  = '2026-09-04 11:00:00',
    @nuevo_id    = @nuevo_turno_375 OUTPUT,
    @mensaje     = @msg_turno_375 OUTPUT;
PRINT N'Turno 2026-09-04 11:00:00 Dr/a López -> ' + @msg_turno_375;
GO
DECLARE @nuevo_turno_376 INT, @msg_turno_376 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 10,
    @id_paciente = 11,
    @fecha_hora  = '2026-09-04 12:00:00',
    @nuevo_id    = @nuevo_turno_376 OUTPUT,
    @mensaje     = @msg_turno_376 OUTPUT;
PRINT N'Turno 2026-09-04 12:00:00 Dr/a López -> ' + @msg_turno_376;
GO
DECLARE @nuevo_turno_377 INT, @msg_turno_377 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 10,
    @id_paciente = 12,
    @fecha_hora  = '2026-10-09 09:00:00',
    @nuevo_id    = @nuevo_turno_377 OUTPUT,
    @mensaje     = @msg_turno_377 OUTPUT;
PRINT N'Turno 2026-10-09 09:00:00 Dr/a López -> ' + @msg_turno_377;
GO
DECLARE @nuevo_turno_378 INT, @msg_turno_378 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 10,
    @id_paciente = 13,
    @fecha_hora  = '2026-10-09 10:00:00',
    @nuevo_id    = @nuevo_turno_378 OUTPUT,
    @mensaje     = @msg_turno_378 OUTPUT;
PRINT N'Turno 2026-10-09 10:00:00 Dr/a López -> ' + @msg_turno_378;
GO
DECLARE @nuevo_turno_379 INT, @msg_turno_379 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 10,
    @id_paciente = 14,
    @fecha_hora  = '2026-10-09 11:00:00',
    @nuevo_id    = @nuevo_turno_379 OUTPUT,
    @mensaje     = @msg_turno_379 OUTPUT;
PRINT N'Turno 2026-10-09 11:00:00 Dr/a López -> ' + @msg_turno_379;
GO
DECLARE @nuevo_turno_380 INT, @msg_turno_380 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 10,
    @id_paciente = 15,
    @fecha_hora  = '2026-10-09 12:00:00',
    @nuevo_id    = @nuevo_turno_380 OUTPUT,
    @mensaje     = @msg_turno_380 OUTPUT;
PRINT N'Turno 2026-10-09 12:00:00 Dr/a López -> ' + @msg_turno_380;
GO
DECLARE @nuevo_turno_381 INT, @msg_turno_381 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 11,
    @id_paciente = 16,
    @fecha_hora  = '2026-07-13 09:00:00',
    @nuevo_id    = @nuevo_turno_381 OUTPUT,
    @mensaje     = @msg_turno_381 OUTPUT;
PRINT N'Turno 2026-07-13 09:00:00 Dr/a Gutiérrez -> ' + @msg_turno_381;
GO
DECLARE @nuevo_turno_382 INT, @msg_turno_382 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 11,
    @id_paciente = 17,
    @fecha_hora  = '2026-07-13 10:00:00',
    @nuevo_id    = @nuevo_turno_382 OUTPUT,
    @mensaje     = @msg_turno_382 OUTPUT;
PRINT N'Turno 2026-07-13 10:00:00 Dr/a Gutiérrez -> ' + @msg_turno_382;
GO
DECLARE @nuevo_turno_383 INT, @msg_turno_383 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 11,
    @id_paciente = 18,
    @fecha_hora  = '2026-07-13 11:00:00',
    @nuevo_id    = @nuevo_turno_383 OUTPUT,
    @mensaje     = @msg_turno_383 OUTPUT;
PRINT N'Turno 2026-07-13 11:00:00 Dr/a Gutiérrez -> ' + @msg_turno_383;
GO
DECLARE @nuevo_turno_384 INT, @msg_turno_384 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 11,
    @id_paciente = 19,
    @fecha_hora  = '2026-07-13 12:00:00',
    @nuevo_id    = @nuevo_turno_384 OUTPUT,
    @mensaje     = @msg_turno_384 OUTPUT;
PRINT N'Turno 2026-07-13 12:00:00 Dr/a Gutiérrez -> ' + @msg_turno_384;
GO
DECLARE @nuevo_turno_385 INT, @msg_turno_385 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 11,
    @id_paciente = 20,
    @fecha_hora  = '2026-07-27 09:00:00',
    @nuevo_id    = @nuevo_turno_385 OUTPUT,
    @mensaje     = @msg_turno_385 OUTPUT;
PRINT N'Turno 2026-07-27 09:00:00 Dr/a Gutiérrez -> ' + @msg_turno_385;
GO
DECLARE @nuevo_turno_386 INT, @msg_turno_386 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 11,
    @id_paciente = 21,
    @fecha_hora  = '2026-07-27 10:00:00',
    @nuevo_id    = @nuevo_turno_386 OUTPUT,
    @mensaje     = @msg_turno_386 OUTPUT;
PRINT N'Turno 2026-07-27 10:00:00 Dr/a Gutiérrez -> ' + @msg_turno_386;
GO
DECLARE @nuevo_turno_387 INT, @msg_turno_387 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 11,
    @id_paciente = 22,
    @fecha_hora  = '2026-07-27 11:00:00',
    @nuevo_id    = @nuevo_turno_387 OUTPUT,
    @mensaje     = @msg_turno_387 OUTPUT;
PRINT N'Turno 2026-07-27 11:00:00 Dr/a Gutiérrez -> ' + @msg_turno_387;
GO
DECLARE @nuevo_turno_388 INT, @msg_turno_388 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 11,
    @id_paciente = 23,
    @fecha_hora  = '2026-07-27 12:00:00',
    @nuevo_id    = @nuevo_turno_388 OUTPUT,
    @mensaje     = @msg_turno_388 OUTPUT;
PRINT N'Turno 2026-07-27 12:00:00 Dr/a Gutiérrez -> ' + @msg_turno_388;
GO
DECLARE @nuevo_turno_389 INT, @msg_turno_389 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 11,
    @id_paciente = 24,
    @fecha_hora  = '2026-08-17 09:00:00',
    @nuevo_id    = @nuevo_turno_389 OUTPUT,
    @mensaje     = @msg_turno_389 OUTPUT;
PRINT N'Turno 2026-08-17 09:00:00 Dr/a Gutiérrez -> ' + @msg_turno_389;
GO
DECLARE @nuevo_turno_390 INT, @msg_turno_390 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 11,
    @id_paciente = 25,
    @fecha_hora  = '2026-08-17 10:00:00',
    @nuevo_id    = @nuevo_turno_390 OUTPUT,
    @mensaje     = @msg_turno_390 OUTPUT;
PRINT N'Turno 2026-08-17 10:00:00 Dr/a Gutiérrez -> ' + @msg_turno_390;
GO
DECLARE @nuevo_turno_391 INT, @msg_turno_391 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 11,
    @id_paciente = 1,
    @fecha_hora  = '2026-08-17 11:00:00',
    @nuevo_id    = @nuevo_turno_391 OUTPUT,
    @mensaje     = @msg_turno_391 OUTPUT;
PRINT N'Turno 2026-08-17 11:00:00 Dr/a Gutiérrez -> ' + @msg_turno_391;
GO
DECLARE @nuevo_turno_392 INT, @msg_turno_392 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 11,
    @id_paciente = 2,
    @fecha_hora  = '2026-08-17 12:00:00',
    @nuevo_id    = @nuevo_turno_392 OUTPUT,
    @mensaje     = @msg_turno_392 OUTPUT;
PRINT N'Turno 2026-08-17 12:00:00 Dr/a Gutiérrez -> ' + @msg_turno_392;
GO
DECLARE @nuevo_turno_393 INT, @msg_turno_393 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 11,
    @id_paciente = 3,
    @fecha_hora  = '2026-08-31 09:00:00',
    @nuevo_id    = @nuevo_turno_393 OUTPUT,
    @mensaje     = @msg_turno_393 OUTPUT;
PRINT N'Turno 2026-08-31 09:00:00 Dr/a Gutiérrez -> ' + @msg_turno_393;
GO
DECLARE @nuevo_turno_394 INT, @msg_turno_394 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 11,
    @id_paciente = 4,
    @fecha_hora  = '2026-08-31 10:00:00',
    @nuevo_id    = @nuevo_turno_394 OUTPUT,
    @mensaje     = @msg_turno_394 OUTPUT;
PRINT N'Turno 2026-08-31 10:00:00 Dr/a Gutiérrez -> ' + @msg_turno_394;
GO
DECLARE @nuevo_turno_395 INT, @msg_turno_395 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 11,
    @id_paciente = 5,
    @fecha_hora  = '2026-08-31 11:00:00',
    @nuevo_id    = @nuevo_turno_395 OUTPUT,
    @mensaje     = @msg_turno_395 OUTPUT;
PRINT N'Turno 2026-08-31 11:00:00 Dr/a Gutiérrez -> ' + @msg_turno_395;
GO
DECLARE @nuevo_turno_396 INT, @msg_turno_396 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 11,
    @id_paciente = 6,
    @fecha_hora  = '2026-08-31 12:00:00',
    @nuevo_id    = @nuevo_turno_396 OUTPUT,
    @mensaje     = @msg_turno_396 OUTPUT;
PRINT N'Turno 2026-08-31 12:00:00 Dr/a Gutiérrez -> ' + @msg_turno_396;
GO
DECLARE @nuevo_turno_397 INT, @msg_turno_397 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 11,
    @id_paciente = 7,
    @fecha_hora  = '2026-09-14 09:00:00',
    @nuevo_id    = @nuevo_turno_397 OUTPUT,
    @mensaje     = @msg_turno_397 OUTPUT;
PRINT N'Turno 2026-09-14 09:00:00 Dr/a Gutiérrez -> ' + @msg_turno_397;
GO
DECLARE @nuevo_turno_398 INT, @msg_turno_398 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 11,
    @id_paciente = 8,
    @fecha_hora  = '2026-09-14 10:00:00',
    @nuevo_id    = @nuevo_turno_398 OUTPUT,
    @mensaje     = @msg_turno_398 OUTPUT;
PRINT N'Turno 2026-09-14 10:00:00 Dr/a Gutiérrez -> ' + @msg_turno_398;
GO
DECLARE @nuevo_turno_399 INT, @msg_turno_399 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 11,
    @id_paciente = 9,
    @fecha_hora  = '2026-09-14 11:00:00',
    @nuevo_id    = @nuevo_turno_399 OUTPUT,
    @mensaje     = @msg_turno_399 OUTPUT;
PRINT N'Turno 2026-09-14 11:00:00 Dr/a Gutiérrez -> ' + @msg_turno_399;
GO
DECLARE @nuevo_turno_400 INT, @msg_turno_400 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 11,
    @id_paciente = 10,
    @fecha_hora  = '2026-09-14 12:00:00',
    @nuevo_id    = @nuevo_turno_400 OUTPUT,
    @mensaje     = @msg_turno_400 OUTPUT;
PRINT N'Turno 2026-09-14 12:00:00 Dr/a Gutiérrez -> ' + @msg_turno_400;
GO
DECLARE @nuevo_turno_401 INT, @msg_turno_401 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 11,
    @id_paciente = 11,
    @fecha_hora  = '2026-10-12 09:00:00',
    @nuevo_id    = @nuevo_turno_401 OUTPUT,
    @mensaje     = @msg_turno_401 OUTPUT;
PRINT N'Turno 2026-10-12 09:00:00 Dr/a Gutiérrez -> ' + @msg_turno_401;
GO
DECLARE @nuevo_turno_402 INT, @msg_turno_402 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 11,
    @id_paciente = 12,
    @fecha_hora  = '2026-10-12 10:00:00',
    @nuevo_id    = @nuevo_turno_402 OUTPUT,
    @mensaje     = @msg_turno_402 OUTPUT;
PRINT N'Turno 2026-10-12 10:00:00 Dr/a Gutiérrez -> ' + @msg_turno_402;
GO
DECLARE @nuevo_turno_403 INT, @msg_turno_403 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 11,
    @id_paciente = 13,
    @fecha_hora  = '2026-10-12 11:00:00',
    @nuevo_id    = @nuevo_turno_403 OUTPUT,
    @mensaje     = @msg_turno_403 OUTPUT;
PRINT N'Turno 2026-10-12 11:00:00 Dr/a Gutiérrez -> ' + @msg_turno_403;
GO
DECLARE @nuevo_turno_404 INT, @msg_turno_404 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 11,
    @id_paciente = 14,
    @fecha_hora  = '2026-10-12 12:00:00',
    @nuevo_id    = @nuevo_turno_404 OUTPUT,
    @mensaje     = @msg_turno_404 OUTPUT;
PRINT N'Turno 2026-10-12 12:00:00 Dr/a Gutiérrez -> ' + @msg_turno_404;
GO
DECLARE @nuevo_turno_405 INT, @msg_turno_405 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 12,
    @id_paciente = 15,
    @fecha_hora  = '2026-07-07 09:00:00',
    @nuevo_id    = @nuevo_turno_405 OUTPUT,
    @mensaje     = @msg_turno_405 OUTPUT;
PRINT N'Turno 2026-07-07 09:00:00 Dr/a Díaz -> ' + @msg_turno_405;
GO
DECLARE @nuevo_turno_406 INT, @msg_turno_406 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 12,
    @id_paciente = 16,
    @fecha_hora  = '2026-07-07 10:00:00',
    @nuevo_id    = @nuevo_turno_406 OUTPUT,
    @mensaje     = @msg_turno_406 OUTPUT;
PRINT N'Turno 2026-07-07 10:00:00 Dr/a Díaz -> ' + @msg_turno_406;
GO
DECLARE @nuevo_turno_407 INT, @msg_turno_407 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 12,
    @id_paciente = 17,
    @fecha_hora  = '2026-07-07 11:00:00',
    @nuevo_id    = @nuevo_turno_407 OUTPUT,
    @mensaje     = @msg_turno_407 OUTPUT;
PRINT N'Turno 2026-07-07 11:00:00 Dr/a Díaz -> ' + @msg_turno_407;
GO
DECLARE @nuevo_turno_408 INT, @msg_turno_408 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 12,
    @id_paciente = 18,
    @fecha_hora  = '2026-07-07 12:00:00',
    @nuevo_id    = @nuevo_turno_408 OUTPUT,
    @mensaje     = @msg_turno_408 OUTPUT;
PRINT N'Turno 2026-07-07 12:00:00 Dr/a Díaz -> ' + @msg_turno_408;
GO
DECLARE @nuevo_turno_409 INT, @msg_turno_409 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 12,
    @id_paciente = 19,
    @fecha_hora  = '2026-07-21 09:00:00',
    @nuevo_id    = @nuevo_turno_409 OUTPUT,
    @mensaje     = @msg_turno_409 OUTPUT;
PRINT N'Turno 2026-07-21 09:00:00 Dr/a Díaz -> ' + @msg_turno_409;
GO
DECLARE @nuevo_turno_410 INT, @msg_turno_410 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 12,
    @id_paciente = 20,
    @fecha_hora  = '2026-07-21 10:00:00',
    @nuevo_id    = @nuevo_turno_410 OUTPUT,
    @mensaje     = @msg_turno_410 OUTPUT;
PRINT N'Turno 2026-07-21 10:00:00 Dr/a Díaz -> ' + @msg_turno_410;
GO
DECLARE @nuevo_turno_411 INT, @msg_turno_411 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 12,
    @id_paciente = 21,
    @fecha_hora  = '2026-07-21 11:00:00',
    @nuevo_id    = @nuevo_turno_411 OUTPUT,
    @mensaje     = @msg_turno_411 OUTPUT;
PRINT N'Turno 2026-07-21 11:00:00 Dr/a Díaz -> ' + @msg_turno_411;
GO
DECLARE @nuevo_turno_412 INT, @msg_turno_412 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 12,
    @id_paciente = 22,
    @fecha_hora  = '2026-07-21 12:00:00',
    @nuevo_id    = @nuevo_turno_412 OUTPUT,
    @mensaje     = @msg_turno_412 OUTPUT;
PRINT N'Turno 2026-07-21 12:00:00 Dr/a Díaz -> ' + @msg_turno_412;
GO
DECLARE @nuevo_turno_413 INT, @msg_turno_413 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 12,
    @id_paciente = 23,
    @fecha_hora  = '2026-08-11 09:00:00',
    @nuevo_id    = @nuevo_turno_413 OUTPUT,
    @mensaje     = @msg_turno_413 OUTPUT;
PRINT N'Turno 2026-08-11 09:00:00 Dr/a Díaz -> ' + @msg_turno_413;
GO
DECLARE @nuevo_turno_414 INT, @msg_turno_414 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 12,
    @id_paciente = 24,
    @fecha_hora  = '2026-08-11 10:00:00',
    @nuevo_id    = @nuevo_turno_414 OUTPUT,
    @mensaje     = @msg_turno_414 OUTPUT;
PRINT N'Turno 2026-08-11 10:00:00 Dr/a Díaz -> ' + @msg_turno_414;
GO
DECLARE @nuevo_turno_415 INT, @msg_turno_415 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 12,
    @id_paciente = 25,
    @fecha_hora  = '2026-08-11 11:00:00',
    @nuevo_id    = @nuevo_turno_415 OUTPUT,
    @mensaje     = @msg_turno_415 OUTPUT;
PRINT N'Turno 2026-08-11 11:00:00 Dr/a Díaz -> ' + @msg_turno_415;
GO
DECLARE @nuevo_turno_416 INT, @msg_turno_416 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 12,
    @id_paciente = 1,
    @fecha_hora  = '2026-08-11 12:00:00',
    @nuevo_id    = @nuevo_turno_416 OUTPUT,
    @mensaje     = @msg_turno_416 OUTPUT;
PRINT N'Turno 2026-08-11 12:00:00 Dr/a Díaz -> ' + @msg_turno_416;
GO
DECLARE @nuevo_turno_417 INT, @msg_turno_417 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 12,
    @id_paciente = 2,
    @fecha_hora  = '2026-08-25 09:00:00',
    @nuevo_id    = @nuevo_turno_417 OUTPUT,
    @mensaje     = @msg_turno_417 OUTPUT;
PRINT N'Turno 2026-08-25 09:00:00 Dr/a Díaz -> ' + @msg_turno_417;
GO
DECLARE @nuevo_turno_418 INT, @msg_turno_418 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 12,
    @id_paciente = 3,
    @fecha_hora  = '2026-08-25 10:00:00',
    @nuevo_id    = @nuevo_turno_418 OUTPUT,
    @mensaje     = @msg_turno_418 OUTPUT;
PRINT N'Turno 2026-08-25 10:00:00 Dr/a Díaz -> ' + @msg_turno_418;
GO
DECLARE @nuevo_turno_419 INT, @msg_turno_419 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 12,
    @id_paciente = 4,
    @fecha_hora  = '2026-08-25 11:00:00',
    @nuevo_id    = @nuevo_turno_419 OUTPUT,
    @mensaje     = @msg_turno_419 OUTPUT;
PRINT N'Turno 2026-08-25 11:00:00 Dr/a Díaz -> ' + @msg_turno_419;
GO
DECLARE @nuevo_turno_420 INT, @msg_turno_420 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 12,
    @id_paciente = 5,
    @fecha_hora  = '2026-08-25 12:00:00',
    @nuevo_id    = @nuevo_turno_420 OUTPUT,
    @mensaje     = @msg_turno_420 OUTPUT;
PRINT N'Turno 2026-08-25 12:00:00 Dr/a Díaz -> ' + @msg_turno_420;
GO
DECLARE @nuevo_turno_421 INT, @msg_turno_421 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 12,
    @id_paciente = 6,
    @fecha_hora  = '2026-09-08 09:00:00',
    @nuevo_id    = @nuevo_turno_421 OUTPUT,
    @mensaje     = @msg_turno_421 OUTPUT;
PRINT N'Turno 2026-09-08 09:00:00 Dr/a Díaz -> ' + @msg_turno_421;
GO
DECLARE @nuevo_turno_422 INT, @msg_turno_422 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 12,
    @id_paciente = 7,
    @fecha_hora  = '2026-09-08 10:00:00',
    @nuevo_id    = @nuevo_turno_422 OUTPUT,
    @mensaje     = @msg_turno_422 OUTPUT;
PRINT N'Turno 2026-09-08 10:00:00 Dr/a Díaz -> ' + @msg_turno_422;
GO
DECLARE @nuevo_turno_423 INT, @msg_turno_423 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 12,
    @id_paciente = 8,
    @fecha_hora  = '2026-09-08 11:00:00',
    @nuevo_id    = @nuevo_turno_423 OUTPUT,
    @mensaje     = @msg_turno_423 OUTPUT;
PRINT N'Turno 2026-09-08 11:00:00 Dr/a Díaz -> ' + @msg_turno_423;
GO
DECLARE @nuevo_turno_424 INT, @msg_turno_424 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 12,
    @id_paciente = 9,
    @fecha_hora  = '2026-09-08 12:00:00',
    @nuevo_id    = @nuevo_turno_424 OUTPUT,
    @mensaje     = @msg_turno_424 OUTPUT;
PRINT N'Turno 2026-09-08 12:00:00 Dr/a Díaz -> ' + @msg_turno_424;
GO
DECLARE @nuevo_turno_425 INT, @msg_turno_425 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 12,
    @id_paciente = 10,
    @fecha_hora  = '2026-10-13 09:00:00',
    @nuevo_id    = @nuevo_turno_425 OUTPUT,
    @mensaje     = @msg_turno_425 OUTPUT;
PRINT N'Turno 2026-10-13 09:00:00 Dr/a Díaz -> ' + @msg_turno_425;
GO
DECLARE @nuevo_turno_426 INT, @msg_turno_426 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 12,
    @id_paciente = 11,
    @fecha_hora  = '2026-10-13 10:00:00',
    @nuevo_id    = @nuevo_turno_426 OUTPUT,
    @mensaje     = @msg_turno_426 OUTPUT;
PRINT N'Turno 2026-10-13 10:00:00 Dr/a Díaz -> ' + @msg_turno_426;
GO
DECLARE @nuevo_turno_427 INT, @msg_turno_427 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 12,
    @id_paciente = 12,
    @fecha_hora  = '2026-10-13 11:00:00',
    @nuevo_id    = @nuevo_turno_427 OUTPUT,
    @mensaje     = @msg_turno_427 OUTPUT;
PRINT N'Turno 2026-10-13 11:00:00 Dr/a Díaz -> ' + @msg_turno_427;
GO
DECLARE @nuevo_turno_428 INT, @msg_turno_428 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 12,
    @id_paciente = 13,
    @fecha_hora  = '2026-10-13 12:00:00',
    @nuevo_id    = @nuevo_turno_428 OUTPUT,
    @mensaje     = @msg_turno_428 OUTPUT;
PRINT N'Turno 2026-10-13 12:00:00 Dr/a Díaz -> ' + @msg_turno_428;
GO
DECLARE @nuevo_turno_429 INT, @msg_turno_429 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 13,
    @id_paciente = 14,
    @fecha_hora  = '2026-07-08 09:00:00',
    @nuevo_id    = @nuevo_turno_429 OUTPUT,
    @mensaje     = @msg_turno_429 OUTPUT;
PRINT N'Turno 2026-07-08 09:00:00 Dr/a Aguirre -> ' + @msg_turno_429;
GO
DECLARE @nuevo_turno_430 INT, @msg_turno_430 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 13,
    @id_paciente = 15,
    @fecha_hora  = '2026-07-08 10:00:00',
    @nuevo_id    = @nuevo_turno_430 OUTPUT,
    @mensaje     = @msg_turno_430 OUTPUT;
PRINT N'Turno 2026-07-08 10:00:00 Dr/a Aguirre -> ' + @msg_turno_430;
GO
DECLARE @nuevo_turno_431 INT, @msg_turno_431 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 13,
    @id_paciente = 16,
    @fecha_hora  = '2026-07-08 11:00:00',
    @nuevo_id    = @nuevo_turno_431 OUTPUT,
    @mensaje     = @msg_turno_431 OUTPUT;
PRINT N'Turno 2026-07-08 11:00:00 Dr/a Aguirre -> ' + @msg_turno_431;
GO
DECLARE @nuevo_turno_432 INT, @msg_turno_432 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 13,
    @id_paciente = 17,
    @fecha_hora  = '2026-07-08 12:00:00',
    @nuevo_id    = @nuevo_turno_432 OUTPUT,
    @mensaje     = @msg_turno_432 OUTPUT;
PRINT N'Turno 2026-07-08 12:00:00 Dr/a Aguirre -> ' + @msg_turno_432;
GO
DECLARE @nuevo_turno_433 INT, @msg_turno_433 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 13,
    @id_paciente = 18,
    @fecha_hora  = '2026-07-22 09:00:00',
    @nuevo_id    = @nuevo_turno_433 OUTPUT,
    @mensaje     = @msg_turno_433 OUTPUT;
PRINT N'Turno 2026-07-22 09:00:00 Dr/a Aguirre -> ' + @msg_turno_433;
GO
DECLARE @nuevo_turno_434 INT, @msg_turno_434 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 13,
    @id_paciente = 19,
    @fecha_hora  = '2026-07-22 10:00:00',
    @nuevo_id    = @nuevo_turno_434 OUTPUT,
    @mensaje     = @msg_turno_434 OUTPUT;
PRINT N'Turno 2026-07-22 10:00:00 Dr/a Aguirre -> ' + @msg_turno_434;
GO
DECLARE @nuevo_turno_435 INT, @msg_turno_435 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 13,
    @id_paciente = 20,
    @fecha_hora  = '2026-07-22 11:00:00',
    @nuevo_id    = @nuevo_turno_435 OUTPUT,
    @mensaje     = @msg_turno_435 OUTPUT;
PRINT N'Turno 2026-07-22 11:00:00 Dr/a Aguirre -> ' + @msg_turno_435;
GO
DECLARE @nuevo_turno_436 INT, @msg_turno_436 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 13,
    @id_paciente = 21,
    @fecha_hora  = '2026-07-22 12:00:00',
    @nuevo_id    = @nuevo_turno_436 OUTPUT,
    @mensaje     = @msg_turno_436 OUTPUT;
PRINT N'Turno 2026-07-22 12:00:00 Dr/a Aguirre -> ' + @msg_turno_436;
GO
DECLARE @nuevo_turno_437 INT, @msg_turno_437 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 13,
    @id_paciente = 22,
    @fecha_hora  = '2026-08-05 09:00:00',
    @nuevo_id    = @nuevo_turno_437 OUTPUT,
    @mensaje     = @msg_turno_437 OUTPUT;
PRINT N'Turno 2026-08-05 09:00:00 Dr/a Aguirre -> ' + @msg_turno_437;
GO
DECLARE @nuevo_turno_438 INT, @msg_turno_438 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 13,
    @id_paciente = 23,
    @fecha_hora  = '2026-08-05 10:00:00',
    @nuevo_id    = @nuevo_turno_438 OUTPUT,
    @mensaje     = @msg_turno_438 OUTPUT;
PRINT N'Turno 2026-08-05 10:00:00 Dr/a Aguirre -> ' + @msg_turno_438;
GO
DECLARE @nuevo_turno_439 INT, @msg_turno_439 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 13,
    @id_paciente = 24,
    @fecha_hora  = '2026-08-05 11:00:00',
    @nuevo_id    = @nuevo_turno_439 OUTPUT,
    @mensaje     = @msg_turno_439 OUTPUT;
PRINT N'Turno 2026-08-05 11:00:00 Dr/a Aguirre -> ' + @msg_turno_439;
GO
DECLARE @nuevo_turno_440 INT, @msg_turno_440 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 13,
    @id_paciente = 25,
    @fecha_hora  = '2026-08-05 12:00:00',
    @nuevo_id    = @nuevo_turno_440 OUTPUT,
    @mensaje     = @msg_turno_440 OUTPUT;
PRINT N'Turno 2026-08-05 12:00:00 Dr/a Aguirre -> ' + @msg_turno_440;
GO
DECLARE @nuevo_turno_441 INT, @msg_turno_441 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 13,
    @id_paciente = 1,
    @fecha_hora  = '2026-08-19 09:00:00',
    @nuevo_id    = @nuevo_turno_441 OUTPUT,
    @mensaje     = @msg_turno_441 OUTPUT;
PRINT N'Turno 2026-08-19 09:00:00 Dr/a Aguirre -> ' + @msg_turno_441;
GO
DECLARE @nuevo_turno_442 INT, @msg_turno_442 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 13,
    @id_paciente = 2,
    @fecha_hora  = '2026-08-19 10:00:00',
    @nuevo_id    = @nuevo_turno_442 OUTPUT,
    @mensaje     = @msg_turno_442 OUTPUT;
PRINT N'Turno 2026-08-19 10:00:00 Dr/a Aguirre -> ' + @msg_turno_442;
GO
DECLARE @nuevo_turno_443 INT, @msg_turno_443 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 13,
    @id_paciente = 3,
    @fecha_hora  = '2026-08-19 11:00:00',
    @nuevo_id    = @nuevo_turno_443 OUTPUT,
    @mensaje     = @msg_turno_443 OUTPUT;
PRINT N'Turno 2026-08-19 11:00:00 Dr/a Aguirre -> ' + @msg_turno_443;
GO
DECLARE @nuevo_turno_444 INT, @msg_turno_444 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 13,
    @id_paciente = 4,
    @fecha_hora  = '2026-08-19 12:00:00',
    @nuevo_id    = @nuevo_turno_444 OUTPUT,
    @mensaje     = @msg_turno_444 OUTPUT;
PRINT N'Turno 2026-08-19 12:00:00 Dr/a Aguirre -> ' + @msg_turno_444;
GO
DECLARE @nuevo_turno_445 INT, @msg_turno_445 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 13,
    @id_paciente = 5,
    @fecha_hora  = '2026-09-02 09:00:00',
    @nuevo_id    = @nuevo_turno_445 OUTPUT,
    @mensaje     = @msg_turno_445 OUTPUT;
PRINT N'Turno 2026-09-02 09:00:00 Dr/a Aguirre -> ' + @msg_turno_445;
GO
DECLARE @nuevo_turno_446 INT, @msg_turno_446 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 13,
    @id_paciente = 6,
    @fecha_hora  = '2026-09-02 10:00:00',
    @nuevo_id    = @nuevo_turno_446 OUTPUT,
    @mensaje     = @msg_turno_446 OUTPUT;
PRINT N'Turno 2026-09-02 10:00:00 Dr/a Aguirre -> ' + @msg_turno_446;
GO
DECLARE @nuevo_turno_447 INT, @msg_turno_447 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 13,
    @id_paciente = 7,
    @fecha_hora  = '2026-09-02 11:00:00',
    @nuevo_id    = @nuevo_turno_447 OUTPUT,
    @mensaje     = @msg_turno_447 OUTPUT;
PRINT N'Turno 2026-09-02 11:00:00 Dr/a Aguirre -> ' + @msg_turno_447;
GO
DECLARE @nuevo_turno_448 INT, @msg_turno_448 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 13,
    @id_paciente = 8,
    @fecha_hora  = '2026-09-02 12:00:00',
    @nuevo_id    = @nuevo_turno_448 OUTPUT,
    @mensaje     = @msg_turno_448 OUTPUT;
PRINT N'Turno 2026-09-02 12:00:00 Dr/a Aguirre -> ' + @msg_turno_448;
GO
DECLARE @nuevo_turno_449 INT, @msg_turno_449 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 13,
    @id_paciente = 9,
    @fecha_hora  = '2026-10-14 09:00:00',
    @nuevo_id    = @nuevo_turno_449 OUTPUT,
    @mensaje     = @msg_turno_449 OUTPUT;
PRINT N'Turno 2026-10-14 09:00:00 Dr/a Aguirre -> ' + @msg_turno_449;
GO
DECLARE @nuevo_turno_450 INT, @msg_turno_450 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 13,
    @id_paciente = 10,
    @fecha_hora  = '2026-10-14 10:00:00',
    @nuevo_id    = @nuevo_turno_450 OUTPUT,
    @mensaje     = @msg_turno_450 OUTPUT;
PRINT N'Turno 2026-10-14 10:00:00 Dr/a Aguirre -> ' + @msg_turno_450;
GO
DECLARE @nuevo_turno_451 INT, @msg_turno_451 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 13,
    @id_paciente = 11,
    @fecha_hora  = '2026-10-14 11:00:00',
    @nuevo_id    = @nuevo_turno_451 OUTPUT,
    @mensaje     = @msg_turno_451 OUTPUT;
PRINT N'Turno 2026-10-14 11:00:00 Dr/a Aguirre -> ' + @msg_turno_451;
GO
DECLARE @nuevo_turno_452 INT, @msg_turno_452 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 13,
    @id_paciente = 12,
    @fecha_hora  = '2026-10-14 12:00:00',
    @nuevo_id    = @nuevo_turno_452 OUTPUT,
    @mensaje     = @msg_turno_452 OUTPUT;
PRINT N'Turno 2026-10-14 12:00:00 Dr/a Aguirre -> ' + @msg_turno_452;
GO
DECLARE @nuevo_turno_453 INT, @msg_turno_453 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 14,
    @id_paciente = 13,
    @fecha_hora  = '2026-07-09 09:00:00',
    @nuevo_id    = @nuevo_turno_453 OUTPUT,
    @mensaje     = @msg_turno_453 OUTPUT;
PRINT N'Turno 2026-07-09 09:00:00 Dr/a Suárez -> ' + @msg_turno_453;
GO
DECLARE @nuevo_turno_454 INT, @msg_turno_454 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 14,
    @id_paciente = 14,
    @fecha_hora  = '2026-07-09 10:00:00',
    @nuevo_id    = @nuevo_turno_454 OUTPUT,
    @mensaje     = @msg_turno_454 OUTPUT;
PRINT N'Turno 2026-07-09 10:00:00 Dr/a Suárez -> ' + @msg_turno_454;
GO
DECLARE @nuevo_turno_455 INT, @msg_turno_455 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 14,
    @id_paciente = 15,
    @fecha_hora  = '2026-07-09 11:00:00',
    @nuevo_id    = @nuevo_turno_455 OUTPUT,
    @mensaje     = @msg_turno_455 OUTPUT;
PRINT N'Turno 2026-07-09 11:00:00 Dr/a Suárez -> ' + @msg_turno_455;
GO
DECLARE @nuevo_turno_456 INT, @msg_turno_456 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 14,
    @id_paciente = 16,
    @fecha_hora  = '2026-07-09 12:00:00',
    @nuevo_id    = @nuevo_turno_456 OUTPUT,
    @mensaje     = @msg_turno_456 OUTPUT;
PRINT N'Turno 2026-07-09 12:00:00 Dr/a Suárez -> ' + @msg_turno_456;
GO
DECLARE @nuevo_turno_457 INT, @msg_turno_457 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 14,
    @id_paciente = 17,
    @fecha_hora  = '2026-07-23 09:00:00',
    @nuevo_id    = @nuevo_turno_457 OUTPUT,
    @mensaje     = @msg_turno_457 OUTPUT;
PRINT N'Turno 2026-07-23 09:00:00 Dr/a Suárez -> ' + @msg_turno_457;
GO
DECLARE @nuevo_turno_458 INT, @msg_turno_458 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 14,
    @id_paciente = 18,
    @fecha_hora  = '2026-07-23 10:00:00',
    @nuevo_id    = @nuevo_turno_458 OUTPUT,
    @mensaje     = @msg_turno_458 OUTPUT;
PRINT N'Turno 2026-07-23 10:00:00 Dr/a Suárez -> ' + @msg_turno_458;
GO
DECLARE @nuevo_turno_459 INT, @msg_turno_459 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 14,
    @id_paciente = 19,
    @fecha_hora  = '2026-07-23 11:00:00',
    @nuevo_id    = @nuevo_turno_459 OUTPUT,
    @mensaje     = @msg_turno_459 OUTPUT;
PRINT N'Turno 2026-07-23 11:00:00 Dr/a Suárez -> ' + @msg_turno_459;
GO
DECLARE @nuevo_turno_460 INT, @msg_turno_460 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 14,
    @id_paciente = 20,
    @fecha_hora  = '2026-07-23 12:00:00',
    @nuevo_id    = @nuevo_turno_460 OUTPUT,
    @mensaje     = @msg_turno_460 OUTPUT;
PRINT N'Turno 2026-07-23 12:00:00 Dr/a Suárez -> ' + @msg_turno_460;
GO
DECLARE @nuevo_turno_461 INT, @msg_turno_461 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 14,
    @id_paciente = 21,
    @fecha_hora  = '2026-08-06 09:00:00',
    @nuevo_id    = @nuevo_turno_461 OUTPUT,
    @mensaje     = @msg_turno_461 OUTPUT;
PRINT N'Turno 2026-08-06 09:00:00 Dr/a Suárez -> ' + @msg_turno_461;
GO
DECLARE @nuevo_turno_462 INT, @msg_turno_462 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 14,
    @id_paciente = 22,
    @fecha_hora  = '2026-08-06 10:00:00',
    @nuevo_id    = @nuevo_turno_462 OUTPUT,
    @mensaje     = @msg_turno_462 OUTPUT;
PRINT N'Turno 2026-08-06 10:00:00 Dr/a Suárez -> ' + @msg_turno_462;
GO
DECLARE @nuevo_turno_463 INT, @msg_turno_463 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 14,
    @id_paciente = 23,
    @fecha_hora  = '2026-08-06 11:00:00',
    @nuevo_id    = @nuevo_turno_463 OUTPUT,
    @mensaje     = @msg_turno_463 OUTPUT;
PRINT N'Turno 2026-08-06 11:00:00 Dr/a Suárez -> ' + @msg_turno_463;
GO
DECLARE @nuevo_turno_464 INT, @msg_turno_464 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 14,
    @id_paciente = 24,
    @fecha_hora  = '2026-08-06 12:00:00',
    @nuevo_id    = @nuevo_turno_464 OUTPUT,
    @mensaje     = @msg_turno_464 OUTPUT;
PRINT N'Turno 2026-08-06 12:00:00 Dr/a Suárez -> ' + @msg_turno_464;
GO
DECLARE @nuevo_turno_465 INT, @msg_turno_465 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 14,
    @id_paciente = 25,
    @fecha_hora  = '2026-09-03 09:00:00',
    @nuevo_id    = @nuevo_turno_465 OUTPUT,
    @mensaje     = @msg_turno_465 OUTPUT;
PRINT N'Turno 2026-09-03 09:00:00 Dr/a Suárez -> ' + @msg_turno_465;
GO
DECLARE @nuevo_turno_466 INT, @msg_turno_466 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 14,
    @id_paciente = 1,
    @fecha_hora  = '2026-09-03 10:00:00',
    @nuevo_id    = @nuevo_turno_466 OUTPUT,
    @mensaje     = @msg_turno_466 OUTPUT;
PRINT N'Turno 2026-09-03 10:00:00 Dr/a Suárez -> ' + @msg_turno_466;
GO
DECLARE @nuevo_turno_467 INT, @msg_turno_467 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 14,
    @id_paciente = 2,
    @fecha_hora  = '2026-09-03 11:00:00',
    @nuevo_id    = @nuevo_turno_467 OUTPUT,
    @mensaje     = @msg_turno_467 OUTPUT;
PRINT N'Turno 2026-09-03 11:00:00 Dr/a Suárez -> ' + @msg_turno_467;
GO
DECLARE @nuevo_turno_468 INT, @msg_turno_468 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 14,
    @id_paciente = 3,
    @fecha_hora  = '2026-09-03 12:00:00',
    @nuevo_id    = @nuevo_turno_468 OUTPUT,
    @mensaje     = @msg_turno_468 OUTPUT;
PRINT N'Turno 2026-09-03 12:00:00 Dr/a Suárez -> ' + @msg_turno_468;
GO
DECLARE @nuevo_turno_469 INT, @msg_turno_469 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 14,
    @id_paciente = 4,
    @fecha_hora  = '2026-09-17 09:00:00',
    @nuevo_id    = @nuevo_turno_469 OUTPUT,
    @mensaje     = @msg_turno_469 OUTPUT;
PRINT N'Turno 2026-09-17 09:00:00 Dr/a Suárez -> ' + @msg_turno_469;
GO
DECLARE @nuevo_turno_470 INT, @msg_turno_470 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 14,
    @id_paciente = 5,
    @fecha_hora  = '2026-09-17 10:00:00',
    @nuevo_id    = @nuevo_turno_470 OUTPUT,
    @mensaje     = @msg_turno_470 OUTPUT;
PRINT N'Turno 2026-09-17 10:00:00 Dr/a Suárez -> ' + @msg_turno_470;
GO
DECLARE @nuevo_turno_471 INT, @msg_turno_471 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 14,
    @id_paciente = 6,
    @fecha_hora  = '2026-09-17 11:00:00',
    @nuevo_id    = @nuevo_turno_471 OUTPUT,
    @mensaje     = @msg_turno_471 OUTPUT;
PRINT N'Turno 2026-09-17 11:00:00 Dr/a Suárez -> ' + @msg_turno_471;
GO
DECLARE @nuevo_turno_472 INT, @msg_turno_472 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 14,
    @id_paciente = 7,
    @fecha_hora  = '2026-09-17 12:00:00',
    @nuevo_id    = @nuevo_turno_472 OUTPUT,
    @mensaje     = @msg_turno_472 OUTPUT;
PRINT N'Turno 2026-09-17 12:00:00 Dr/a Suárez -> ' + @msg_turno_472;
GO
DECLARE @nuevo_turno_473 INT, @msg_turno_473 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 14,
    @id_paciente = 8,
    @fecha_hora  = '2026-10-15 09:00:00',
    @nuevo_id    = @nuevo_turno_473 OUTPUT,
    @mensaje     = @msg_turno_473 OUTPUT;
PRINT N'Turno 2026-10-15 09:00:00 Dr/a Suárez -> ' + @msg_turno_473;
GO
DECLARE @nuevo_turno_474 INT, @msg_turno_474 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 14,
    @id_paciente = 9,
    @fecha_hora  = '2026-10-15 10:00:00',
    @nuevo_id    = @nuevo_turno_474 OUTPUT,
    @mensaje     = @msg_turno_474 OUTPUT;
PRINT N'Turno 2026-10-15 10:00:00 Dr/a Suárez -> ' + @msg_turno_474;
GO
DECLARE @nuevo_turno_475 INT, @msg_turno_475 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 14,
    @id_paciente = 10,
    @fecha_hora  = '2026-10-15 11:00:00',
    @nuevo_id    = @nuevo_turno_475 OUTPUT,
    @mensaje     = @msg_turno_475 OUTPUT;
PRINT N'Turno 2026-10-15 11:00:00 Dr/a Suárez -> ' + @msg_turno_475;
GO
DECLARE @nuevo_turno_476 INT, @msg_turno_476 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 14,
    @id_paciente = 11,
    @fecha_hora  = '2026-10-15 12:00:00',
    @nuevo_id    = @nuevo_turno_476 OUTPUT,
    @mensaje     = @msg_turno_476 OUTPUT;
PRINT N'Turno 2026-10-15 12:00:00 Dr/a Suárez -> ' + @msg_turno_476;
GO
DECLARE @nuevo_turno_477 INT, @msg_turno_477 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 15,
    @id_paciente = 12,
    @fecha_hora  = '2026-07-10 09:00:00',
    @nuevo_id    = @nuevo_turno_477 OUTPUT,
    @mensaje     = @msg_turno_477 OUTPUT;
PRINT N'Turno 2026-07-10 09:00:00 Dr/a Rojas -> ' + @msg_turno_477;
GO
DECLARE @nuevo_turno_478 INT, @msg_turno_478 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 15,
    @id_paciente = 13,
    @fecha_hora  = '2026-07-10 10:00:00',
    @nuevo_id    = @nuevo_turno_478 OUTPUT,
    @mensaje     = @msg_turno_478 OUTPUT;
PRINT N'Turno 2026-07-10 10:00:00 Dr/a Rojas -> ' + @msg_turno_478;
GO
DECLARE @nuevo_turno_479 INT, @msg_turno_479 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 15,
    @id_paciente = 14,
    @fecha_hora  = '2026-07-10 11:00:00',
    @nuevo_id    = @nuevo_turno_479 OUTPUT,
    @mensaje     = @msg_turno_479 OUTPUT;
PRINT N'Turno 2026-07-10 11:00:00 Dr/a Rojas -> ' + @msg_turno_479;
GO
DECLARE @nuevo_turno_480 INT, @msg_turno_480 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 15,
    @id_paciente = 15,
    @fecha_hora  = '2026-07-10 12:00:00',
    @nuevo_id    = @nuevo_turno_480 OUTPUT,
    @mensaje     = @msg_turno_480 OUTPUT;
PRINT N'Turno 2026-07-10 12:00:00 Dr/a Rojas -> ' + @msg_turno_480;
GO
DECLARE @nuevo_turno_481 INT, @msg_turno_481 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 15,
    @id_paciente = 16,
    @fecha_hora  = '2026-07-24 09:00:00',
    @nuevo_id    = @nuevo_turno_481 OUTPUT,
    @mensaje     = @msg_turno_481 OUTPUT;
PRINT N'Turno 2026-07-24 09:00:00 Dr/a Rojas -> ' + @msg_turno_481;
GO
DECLARE @nuevo_turno_482 INT, @msg_turno_482 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 15,
    @id_paciente = 17,
    @fecha_hora  = '2026-07-24 10:00:00',
    @nuevo_id    = @nuevo_turno_482 OUTPUT,
    @mensaje     = @msg_turno_482 OUTPUT;
PRINT N'Turno 2026-07-24 10:00:00 Dr/a Rojas -> ' + @msg_turno_482;
GO
DECLARE @nuevo_turno_483 INT, @msg_turno_483 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 15,
    @id_paciente = 18,
    @fecha_hora  = '2026-07-24 11:00:00',
    @nuevo_id    = @nuevo_turno_483 OUTPUT,
    @mensaje     = @msg_turno_483 OUTPUT;
PRINT N'Turno 2026-07-24 11:00:00 Dr/a Rojas -> ' + @msg_turno_483;
GO
DECLARE @nuevo_turno_484 INT, @msg_turno_484 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 15,
    @id_paciente = 19,
    @fecha_hora  = '2026-07-24 12:00:00',
    @nuevo_id    = @nuevo_turno_484 OUTPUT,
    @mensaje     = @msg_turno_484 OUTPUT;
PRINT N'Turno 2026-07-24 12:00:00 Dr/a Rojas -> ' + @msg_turno_484;
GO
DECLARE @nuevo_turno_485 INT, @msg_turno_485 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 15,
    @id_paciente = 20,
    @fecha_hora  = '2026-08-07 09:00:00',
    @nuevo_id    = @nuevo_turno_485 OUTPUT,
    @mensaje     = @msg_turno_485 OUTPUT;
PRINT N'Turno 2026-08-07 09:00:00 Dr/a Rojas -> ' + @msg_turno_485;
GO
DECLARE @nuevo_turno_486 INT, @msg_turno_486 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 15,
    @id_paciente = 21,
    @fecha_hora  = '2026-08-07 10:00:00',
    @nuevo_id    = @nuevo_turno_486 OUTPUT,
    @mensaje     = @msg_turno_486 OUTPUT;
PRINT N'Turno 2026-08-07 10:00:00 Dr/a Rojas -> ' + @msg_turno_486;
GO
DECLARE @nuevo_turno_487 INT, @msg_turno_487 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 15,
    @id_paciente = 22,
    @fecha_hora  = '2026-08-07 11:00:00',
    @nuevo_id    = @nuevo_turno_487 OUTPUT,
    @mensaje     = @msg_turno_487 OUTPUT;
PRINT N'Turno 2026-08-07 11:00:00 Dr/a Rojas -> ' + @msg_turno_487;
GO
DECLARE @nuevo_turno_488 INT, @msg_turno_488 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 15,
    @id_paciente = 23,
    @fecha_hora  = '2026-08-07 12:00:00',
    @nuevo_id    = @nuevo_turno_488 OUTPUT,
    @mensaje     = @msg_turno_488 OUTPUT;
PRINT N'Turno 2026-08-07 12:00:00 Dr/a Rojas -> ' + @msg_turno_488;
GO
DECLARE @nuevo_turno_489 INT, @msg_turno_489 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 15,
    @id_paciente = 24,
    @fecha_hora  = '2026-09-04 09:00:00',
    @nuevo_id    = @nuevo_turno_489 OUTPUT,
    @mensaje     = @msg_turno_489 OUTPUT;
PRINT N'Turno 2026-09-04 09:00:00 Dr/a Rojas -> ' + @msg_turno_489;
GO
DECLARE @nuevo_turno_490 INT, @msg_turno_490 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 15,
    @id_paciente = 25,
    @fecha_hora  = '2026-09-04 10:00:00',
    @nuevo_id    = @nuevo_turno_490 OUTPUT,
    @mensaje     = @msg_turno_490 OUTPUT;
PRINT N'Turno 2026-09-04 10:00:00 Dr/a Rojas -> ' + @msg_turno_490;
GO
DECLARE @nuevo_turno_491 INT, @msg_turno_491 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 15,
    @id_paciente = 1,
    @fecha_hora  = '2026-09-04 11:00:00',
    @nuevo_id    = @nuevo_turno_491 OUTPUT,
    @mensaje     = @msg_turno_491 OUTPUT;
PRINT N'Turno 2026-09-04 11:00:00 Dr/a Rojas -> ' + @msg_turno_491;
GO
DECLARE @nuevo_turno_492 INT, @msg_turno_492 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 15,
    @id_paciente = 2,
    @fecha_hora  = '2026-09-04 12:00:00',
    @nuevo_id    = @nuevo_turno_492 OUTPUT,
    @mensaje     = @msg_turno_492 OUTPUT;
PRINT N'Turno 2026-09-04 12:00:00 Dr/a Rojas -> ' + @msg_turno_492;
GO
DECLARE @nuevo_turno_493 INT, @msg_turno_493 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 15,
    @id_paciente = 3,
    @fecha_hora  = '2026-09-18 09:00:00',
    @nuevo_id    = @nuevo_turno_493 OUTPUT,
    @mensaje     = @msg_turno_493 OUTPUT;
PRINT N'Turno 2026-09-18 09:00:00 Dr/a Rojas -> ' + @msg_turno_493;
GO
DECLARE @nuevo_turno_494 INT, @msg_turno_494 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 15,
    @id_paciente = 4,
    @fecha_hora  = '2026-09-18 10:00:00',
    @nuevo_id    = @nuevo_turno_494 OUTPUT,
    @mensaje     = @msg_turno_494 OUTPUT;
PRINT N'Turno 2026-09-18 10:00:00 Dr/a Rojas -> ' + @msg_turno_494;
GO
DECLARE @nuevo_turno_495 INT, @msg_turno_495 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 15,
    @id_paciente = 5,
    @fecha_hora  = '2026-09-18 11:00:00',
    @nuevo_id    = @nuevo_turno_495 OUTPUT,
    @mensaje     = @msg_turno_495 OUTPUT;
PRINT N'Turno 2026-09-18 11:00:00 Dr/a Rojas -> ' + @msg_turno_495;
GO
DECLARE @nuevo_turno_496 INT, @msg_turno_496 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 15,
    @id_paciente = 6,
    @fecha_hora  = '2026-09-18 12:00:00',
    @nuevo_id    = @nuevo_turno_496 OUTPUT,
    @mensaje     = @msg_turno_496 OUTPUT;
PRINT N'Turno 2026-09-18 12:00:00 Dr/a Rojas -> ' + @msg_turno_496;
GO
DECLARE @nuevo_turno_497 INT, @msg_turno_497 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 15,
    @id_paciente = 7,
    @fecha_hora  = '2026-10-16 09:00:00',
    @nuevo_id    = @nuevo_turno_497 OUTPUT,
    @mensaje     = @msg_turno_497 OUTPUT;
PRINT N'Turno 2026-10-16 09:00:00 Dr/a Rojas -> ' + @msg_turno_497;
GO
DECLARE @nuevo_turno_498 INT, @msg_turno_498 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 15,
    @id_paciente = 8,
    @fecha_hora  = '2026-10-16 10:00:00',
    @nuevo_id    = @nuevo_turno_498 OUTPUT,
    @mensaje     = @msg_turno_498 OUTPUT;
PRINT N'Turno 2026-10-16 10:00:00 Dr/a Rojas -> ' + @msg_turno_498;
GO
DECLARE @nuevo_turno_499 INT, @msg_turno_499 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 15,
    @id_paciente = 9,
    @fecha_hora  = '2026-10-16 11:00:00',
    @nuevo_id    = @nuevo_turno_499 OUTPUT,
    @mensaje     = @msg_turno_499 OUTPUT;
PRINT N'Turno 2026-10-16 11:00:00 Dr/a Rojas -> ' + @msg_turno_499;
GO
DECLARE @nuevo_turno_500 INT, @msg_turno_500 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 15,
    @id_paciente = 10,
    @fecha_hora  = '2026-10-16 12:00:00',
    @nuevo_id    = @nuevo_turno_500 OUTPUT,
    @mensaje     = @msg_turno_500 OUTPUT;
PRINT N'Turno 2026-10-16 12:00:00 Dr/a Rojas -> ' + @msg_turno_500;
GO
DECLARE @nuevo_turno_501 INT, @msg_turno_501 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 16,
    @id_paciente = 11,
    @fecha_hora  = '2026-07-20 09:00:00',
    @nuevo_id    = @nuevo_turno_501 OUTPUT,
    @mensaje     = @msg_turno_501 OUTPUT;
PRINT N'Turno 2026-07-20 09:00:00 Dr/a Medina -> ' + @msg_turno_501;
GO
DECLARE @nuevo_turno_502 INT, @msg_turno_502 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 16,
    @id_paciente = 12,
    @fecha_hora  = '2026-07-20 10:00:00',
    @nuevo_id    = @nuevo_turno_502 OUTPUT,
    @mensaje     = @msg_turno_502 OUTPUT;
PRINT N'Turno 2026-07-20 10:00:00 Dr/a Medina -> ' + @msg_turno_502;
GO
DECLARE @nuevo_turno_503 INT, @msg_turno_503 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 16,
    @id_paciente = 13,
    @fecha_hora  = '2026-07-20 11:00:00',
    @nuevo_id    = @nuevo_turno_503 OUTPUT,
    @mensaje     = @msg_turno_503 OUTPUT;
PRINT N'Turno 2026-07-20 11:00:00 Dr/a Medina -> ' + @msg_turno_503;
GO
DECLARE @nuevo_turno_504 INT, @msg_turno_504 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 16,
    @id_paciente = 14,
    @fecha_hora  = '2026-07-20 12:00:00',
    @nuevo_id    = @nuevo_turno_504 OUTPUT,
    @mensaje     = @msg_turno_504 OUTPUT;
PRINT N'Turno 2026-07-20 12:00:00 Dr/a Medina -> ' + @msg_turno_504;
GO
DECLARE @nuevo_turno_505 INT, @msg_turno_505 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 16,
    @id_paciente = 15,
    @fecha_hora  = '2026-08-03 09:00:00',
    @nuevo_id    = @nuevo_turno_505 OUTPUT,
    @mensaje     = @msg_turno_505 OUTPUT;
PRINT N'Turno 2026-08-03 09:00:00 Dr/a Medina -> ' + @msg_turno_505;
GO
DECLARE @nuevo_turno_506 INT, @msg_turno_506 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 16,
    @id_paciente = 16,
    @fecha_hora  = '2026-08-03 10:00:00',
    @nuevo_id    = @nuevo_turno_506 OUTPUT,
    @mensaje     = @msg_turno_506 OUTPUT;
PRINT N'Turno 2026-08-03 10:00:00 Dr/a Medina -> ' + @msg_turno_506;
GO
DECLARE @nuevo_turno_507 INT, @msg_turno_507 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 16,
    @id_paciente = 17,
    @fecha_hora  = '2026-08-03 11:00:00',
    @nuevo_id    = @nuevo_turno_507 OUTPUT,
    @mensaje     = @msg_turno_507 OUTPUT;
PRINT N'Turno 2026-08-03 11:00:00 Dr/a Medina -> ' + @msg_turno_507;
GO
DECLARE @nuevo_turno_508 INT, @msg_turno_508 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 16,
    @id_paciente = 18,
    @fecha_hora  = '2026-08-03 12:00:00',
    @nuevo_id    = @nuevo_turno_508 OUTPUT,
    @mensaje     = @msg_turno_508 OUTPUT;
PRINT N'Turno 2026-08-03 12:00:00 Dr/a Medina -> ' + @msg_turno_508;
GO
DECLARE @nuevo_turno_509 INT, @msg_turno_509 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 16,
    @id_paciente = 19,
    @fecha_hora  = '2026-08-17 09:00:00',
    @nuevo_id    = @nuevo_turno_509 OUTPUT,
    @mensaje     = @msg_turno_509 OUTPUT;
PRINT N'Turno 2026-08-17 09:00:00 Dr/a Medina -> ' + @msg_turno_509;
GO
DECLARE @nuevo_turno_510 INT, @msg_turno_510 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 16,
    @id_paciente = 20,
    @fecha_hora  = '2026-08-17 10:00:00',
    @nuevo_id    = @nuevo_turno_510 OUTPUT,
    @mensaje     = @msg_turno_510 OUTPUT;
PRINT N'Turno 2026-08-17 10:00:00 Dr/a Medina -> ' + @msg_turno_510;
GO
DECLARE @nuevo_turno_511 INT, @msg_turno_511 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 16,
    @id_paciente = 21,
    @fecha_hora  = '2026-08-17 11:00:00',
    @nuevo_id    = @nuevo_turno_511 OUTPUT,
    @mensaje     = @msg_turno_511 OUTPUT;
PRINT N'Turno 2026-08-17 11:00:00 Dr/a Medina -> ' + @msg_turno_511;
GO
DECLARE @nuevo_turno_512 INT, @msg_turno_512 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 16,
    @id_paciente = 22,
    @fecha_hora  = '2026-08-17 12:00:00',
    @nuevo_id    = @nuevo_turno_512 OUTPUT,
    @mensaje     = @msg_turno_512 OUTPUT;
PRINT N'Turno 2026-08-17 12:00:00 Dr/a Medina -> ' + @msg_turno_512;
GO
DECLARE @nuevo_turno_513 INT, @msg_turno_513 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 16,
    @id_paciente = 23,
    @fecha_hora  = '2026-08-31 09:00:00',
    @nuevo_id    = @nuevo_turno_513 OUTPUT,
    @mensaje     = @msg_turno_513 OUTPUT;
PRINT N'Turno 2026-08-31 09:00:00 Dr/a Medina -> ' + @msg_turno_513;
GO
DECLARE @nuevo_turno_514 INT, @msg_turno_514 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 16,
    @id_paciente = 24,
    @fecha_hora  = '2026-08-31 10:00:00',
    @nuevo_id    = @nuevo_turno_514 OUTPUT,
    @mensaje     = @msg_turno_514 OUTPUT;
PRINT N'Turno 2026-08-31 10:00:00 Dr/a Medina -> ' + @msg_turno_514;
GO
DECLARE @nuevo_turno_515 INT, @msg_turno_515 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 16,
    @id_paciente = 25,
    @fecha_hora  = '2026-08-31 11:00:00',
    @nuevo_id    = @nuevo_turno_515 OUTPUT,
    @mensaje     = @msg_turno_515 OUTPUT;
PRINT N'Turno 2026-08-31 11:00:00 Dr/a Medina -> ' + @msg_turno_515;
GO
DECLARE @nuevo_turno_516 INT, @msg_turno_516 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 16,
    @id_paciente = 1,
    @fecha_hora  = '2026-08-31 12:00:00',
    @nuevo_id    = @nuevo_turno_516 OUTPUT,
    @mensaje     = @msg_turno_516 OUTPUT;
PRINT N'Turno 2026-08-31 12:00:00 Dr/a Medina -> ' + @msg_turno_516;
GO
DECLARE @nuevo_turno_517 INT, @msg_turno_517 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 16,
    @id_paciente = 2,
    @fecha_hora  = '2026-09-14 09:00:00',
    @nuevo_id    = @nuevo_turno_517 OUTPUT,
    @mensaje     = @msg_turno_517 OUTPUT;
PRINT N'Turno 2026-09-14 09:00:00 Dr/a Medina -> ' + @msg_turno_517;
GO
DECLARE @nuevo_turno_518 INT, @msg_turno_518 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 16,
    @id_paciente = 3,
    @fecha_hora  = '2026-09-14 10:00:00',
    @nuevo_id    = @nuevo_turno_518 OUTPUT,
    @mensaje     = @msg_turno_518 OUTPUT;
PRINT N'Turno 2026-09-14 10:00:00 Dr/a Medina -> ' + @msg_turno_518;
GO
DECLARE @nuevo_turno_519 INT, @msg_turno_519 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 16,
    @id_paciente = 4,
    @fecha_hora  = '2026-09-14 11:00:00',
    @nuevo_id    = @nuevo_turno_519 OUTPUT,
    @mensaje     = @msg_turno_519 OUTPUT;
PRINT N'Turno 2026-09-14 11:00:00 Dr/a Medina -> ' + @msg_turno_519;
GO
DECLARE @nuevo_turno_520 INT, @msg_turno_520 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 16,
    @id_paciente = 5,
    @fecha_hora  = '2026-09-14 12:00:00',
    @nuevo_id    = @nuevo_turno_520 OUTPUT,
    @mensaje     = @msg_turno_520 OUTPUT;
PRINT N'Turno 2026-09-14 12:00:00 Dr/a Medina -> ' + @msg_turno_520;
GO
DECLARE @nuevo_turno_521 INT, @msg_turno_521 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 16,
    @id_paciente = 6,
    @fecha_hora  = '2026-10-05 09:00:00',
    @nuevo_id    = @nuevo_turno_521 OUTPUT,
    @mensaje     = @msg_turno_521 OUTPUT;
PRINT N'Turno 2026-10-05 09:00:00 Dr/a Medina -> ' + @msg_turno_521;
GO
DECLARE @nuevo_turno_522 INT, @msg_turno_522 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 16,
    @id_paciente = 7,
    @fecha_hora  = '2026-10-05 10:00:00',
    @nuevo_id    = @nuevo_turno_522 OUTPUT,
    @mensaje     = @msg_turno_522 OUTPUT;
PRINT N'Turno 2026-10-05 10:00:00 Dr/a Medina -> ' + @msg_turno_522;
GO
DECLARE @nuevo_turno_523 INT, @msg_turno_523 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 16,
    @id_paciente = 8,
    @fecha_hora  = '2026-10-05 11:00:00',
    @nuevo_id    = @nuevo_turno_523 OUTPUT,
    @mensaje     = @msg_turno_523 OUTPUT;
PRINT N'Turno 2026-10-05 11:00:00 Dr/a Medina -> ' + @msg_turno_523;
GO
DECLARE @nuevo_turno_524 INT, @msg_turno_524 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 16,
    @id_paciente = 9,
    @fecha_hora  = '2026-10-05 12:00:00',
    @nuevo_id    = @nuevo_turno_524 OUTPUT,
    @mensaje     = @msg_turno_524 OUTPUT;
PRINT N'Turno 2026-10-05 12:00:00 Dr/a Medina -> ' + @msg_turno_524;
GO
DECLARE @nuevo_turno_525 INT, @msg_turno_525 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 17,
    @id_paciente = 10,
    @fecha_hora  = '2026-07-07 09:00:00',
    @nuevo_id    = @nuevo_turno_525 OUTPUT,
    @mensaje     = @msg_turno_525 OUTPUT;
PRINT N'Turno 2026-07-07 09:00:00 Dr/a Castro -> ' + @msg_turno_525;
GO
DECLARE @nuevo_turno_526 INT, @msg_turno_526 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 17,
    @id_paciente = 11,
    @fecha_hora  = '2026-07-07 10:00:00',
    @nuevo_id    = @nuevo_turno_526 OUTPUT,
    @mensaje     = @msg_turno_526 OUTPUT;
PRINT N'Turno 2026-07-07 10:00:00 Dr/a Castro -> ' + @msg_turno_526;
GO
DECLARE @nuevo_turno_527 INT, @msg_turno_527 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 17,
    @id_paciente = 12,
    @fecha_hora  = '2026-07-07 11:00:00',
    @nuevo_id    = @nuevo_turno_527 OUTPUT,
    @mensaje     = @msg_turno_527 OUTPUT;
PRINT N'Turno 2026-07-07 11:00:00 Dr/a Castro -> ' + @msg_turno_527;
GO
DECLARE @nuevo_turno_528 INT, @msg_turno_528 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 17,
    @id_paciente = 13,
    @fecha_hora  = '2026-07-07 12:00:00',
    @nuevo_id    = @nuevo_turno_528 OUTPUT,
    @mensaje     = @msg_turno_528 OUTPUT;
PRINT N'Turno 2026-07-07 12:00:00 Dr/a Castro -> ' + @msg_turno_528;
GO
DECLARE @nuevo_turno_529 INT, @msg_turno_529 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 17,
    @id_paciente = 14,
    @fecha_hora  = '2026-07-28 09:00:00',
    @nuevo_id    = @nuevo_turno_529 OUTPUT,
    @mensaje     = @msg_turno_529 OUTPUT;
PRINT N'Turno 2026-07-28 09:00:00 Dr/a Castro -> ' + @msg_turno_529;
GO
DECLARE @nuevo_turno_530 INT, @msg_turno_530 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 17,
    @id_paciente = 15,
    @fecha_hora  = '2026-07-28 10:00:00',
    @nuevo_id    = @nuevo_turno_530 OUTPUT,
    @mensaje     = @msg_turno_530 OUTPUT;
PRINT N'Turno 2026-07-28 10:00:00 Dr/a Castro -> ' + @msg_turno_530;
GO
DECLARE @nuevo_turno_531 INT, @msg_turno_531 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 17,
    @id_paciente = 16,
    @fecha_hora  = '2026-07-28 11:00:00',
    @nuevo_id    = @nuevo_turno_531 OUTPUT,
    @mensaje     = @msg_turno_531 OUTPUT;
PRINT N'Turno 2026-07-28 11:00:00 Dr/a Castro -> ' + @msg_turno_531;
GO
DECLARE @nuevo_turno_532 INT, @msg_turno_532 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 17,
    @id_paciente = 17,
    @fecha_hora  = '2026-07-28 12:00:00',
    @nuevo_id    = @nuevo_turno_532 OUTPUT,
    @mensaje     = @msg_turno_532 OUTPUT;
PRINT N'Turno 2026-07-28 12:00:00 Dr/a Castro -> ' + @msg_turno_532;
GO
DECLARE @nuevo_turno_533 INT, @msg_turno_533 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 17,
    @id_paciente = 18,
    @fecha_hora  = '2026-08-11 09:00:00',
    @nuevo_id    = @nuevo_turno_533 OUTPUT,
    @mensaje     = @msg_turno_533 OUTPUT;
PRINT N'Turno 2026-08-11 09:00:00 Dr/a Castro -> ' + @msg_turno_533;
GO
DECLARE @nuevo_turno_534 INT, @msg_turno_534 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 17,
    @id_paciente = 19,
    @fecha_hora  = '2026-08-11 10:00:00',
    @nuevo_id    = @nuevo_turno_534 OUTPUT,
    @mensaje     = @msg_turno_534 OUTPUT;
PRINT N'Turno 2026-08-11 10:00:00 Dr/a Castro -> ' + @msg_turno_534;
GO
DECLARE @nuevo_turno_535 INT, @msg_turno_535 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 17,
    @id_paciente = 20,
    @fecha_hora  = '2026-08-11 11:00:00',
    @nuevo_id    = @nuevo_turno_535 OUTPUT,
    @mensaje     = @msg_turno_535 OUTPUT;
PRINT N'Turno 2026-08-11 11:00:00 Dr/a Castro -> ' + @msg_turno_535;
GO
DECLARE @nuevo_turno_536 INT, @msg_turno_536 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 17,
    @id_paciente = 21,
    @fecha_hora  = '2026-08-11 12:00:00',
    @nuevo_id    = @nuevo_turno_536 OUTPUT,
    @mensaje     = @msg_turno_536 OUTPUT;
PRINT N'Turno 2026-08-11 12:00:00 Dr/a Castro -> ' + @msg_turno_536;
GO
DECLARE @nuevo_turno_537 INT, @msg_turno_537 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 17,
    @id_paciente = 22,
    @fecha_hora  = '2026-09-01 09:00:00',
    @nuevo_id    = @nuevo_turno_537 OUTPUT,
    @mensaje     = @msg_turno_537 OUTPUT;
PRINT N'Turno 2026-09-01 09:00:00 Dr/a Castro -> ' + @msg_turno_537;
GO
DECLARE @nuevo_turno_538 INT, @msg_turno_538 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 17,
    @id_paciente = 23,
    @fecha_hora  = '2026-09-01 10:00:00',
    @nuevo_id    = @nuevo_turno_538 OUTPUT,
    @mensaje     = @msg_turno_538 OUTPUT;
PRINT N'Turno 2026-09-01 10:00:00 Dr/a Castro -> ' + @msg_turno_538;
GO
DECLARE @nuevo_turno_539 INT, @msg_turno_539 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 17,
    @id_paciente = 24,
    @fecha_hora  = '2026-09-01 11:00:00',
    @nuevo_id    = @nuevo_turno_539 OUTPUT,
    @mensaje     = @msg_turno_539 OUTPUT;
PRINT N'Turno 2026-09-01 11:00:00 Dr/a Castro -> ' + @msg_turno_539;
GO
DECLARE @nuevo_turno_540 INT, @msg_turno_540 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 17,
    @id_paciente = 25,
    @fecha_hora  = '2026-09-01 12:00:00',
    @nuevo_id    = @nuevo_turno_540 OUTPUT,
    @mensaje     = @msg_turno_540 OUTPUT;
PRINT N'Turno 2026-09-01 12:00:00 Dr/a Castro -> ' + @msg_turno_540;
GO
DECLARE @nuevo_turno_541 INT, @msg_turno_541 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 17,
    @id_paciente = 1,
    @fecha_hora  = '2026-09-22 09:00:00',
    @nuevo_id    = @nuevo_turno_541 OUTPUT,
    @mensaje     = @msg_turno_541 OUTPUT;
PRINT N'Turno 2026-09-22 09:00:00 Dr/a Castro -> ' + @msg_turno_541;
GO
DECLARE @nuevo_turno_542 INT, @msg_turno_542 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 17,
    @id_paciente = 2,
    @fecha_hora  = '2026-09-22 10:00:00',
    @nuevo_id    = @nuevo_turno_542 OUTPUT,
    @mensaje     = @msg_turno_542 OUTPUT;
PRINT N'Turno 2026-09-22 10:00:00 Dr/a Castro -> ' + @msg_turno_542;
GO
DECLARE @nuevo_turno_543 INT, @msg_turno_543 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 17,
    @id_paciente = 3,
    @fecha_hora  = '2026-09-22 11:00:00',
    @nuevo_id    = @nuevo_turno_543 OUTPUT,
    @mensaje     = @msg_turno_543 OUTPUT;
PRINT N'Turno 2026-09-22 11:00:00 Dr/a Castro -> ' + @msg_turno_543;
GO
DECLARE @nuevo_turno_544 INT, @msg_turno_544 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 17,
    @id_paciente = 4,
    @fecha_hora  = '2026-09-22 12:00:00',
    @nuevo_id    = @nuevo_turno_544 OUTPUT,
    @mensaje     = @msg_turno_544 OUTPUT;
PRINT N'Turno 2026-09-22 12:00:00 Dr/a Castro -> ' + @msg_turno_544;
GO
DECLARE @nuevo_turno_545 INT, @msg_turno_545 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 17,
    @id_paciente = 5,
    @fecha_hora  = '2026-10-06 09:00:00',
    @nuevo_id    = @nuevo_turno_545 OUTPUT,
    @mensaje     = @msg_turno_545 OUTPUT;
PRINT N'Turno 2026-10-06 09:00:00 Dr/a Castro -> ' + @msg_turno_545;
GO
DECLARE @nuevo_turno_546 INT, @msg_turno_546 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 17,
    @id_paciente = 6,
    @fecha_hora  = '2026-10-06 10:00:00',
    @nuevo_id    = @nuevo_turno_546 OUTPUT,
    @mensaje     = @msg_turno_546 OUTPUT;
PRINT N'Turno 2026-10-06 10:00:00 Dr/a Castro -> ' + @msg_turno_546;
GO
DECLARE @nuevo_turno_547 INT, @msg_turno_547 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 17,
    @id_paciente = 7,
    @fecha_hora  = '2026-10-06 11:00:00',
    @nuevo_id    = @nuevo_turno_547 OUTPUT,
    @mensaje     = @msg_turno_547 OUTPUT;
PRINT N'Turno 2026-10-06 11:00:00 Dr/a Castro -> ' + @msg_turno_547;
GO
DECLARE @nuevo_turno_548 INT, @msg_turno_548 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 17,
    @id_paciente = 8,
    @fecha_hora  = '2026-10-06 12:00:00',
    @nuevo_id    = @nuevo_turno_548 OUTPUT,
    @mensaje     = @msg_turno_548 OUTPUT;
PRINT N'Turno 2026-10-06 12:00:00 Dr/a Castro -> ' + @msg_turno_548;
GO
DECLARE @nuevo_turno_549 INT, @msg_turno_549 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 18,
    @id_paciente = 9,
    @fecha_hora  = '2026-07-08 09:00:00',
    @nuevo_id    = @nuevo_turno_549 OUTPUT,
    @mensaje     = @msg_turno_549 OUTPUT;
PRINT N'Turno 2026-07-08 09:00:00 Dr/a Aguirre -> ' + @msg_turno_549;
GO
DECLARE @nuevo_turno_550 INT, @msg_turno_550 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 18,
    @id_paciente = 10,
    @fecha_hora  = '2026-07-08 10:00:00',
    @nuevo_id    = @nuevo_turno_550 OUTPUT,
    @mensaje     = @msg_turno_550 OUTPUT;
PRINT N'Turno 2026-07-08 10:00:00 Dr/a Aguirre -> ' + @msg_turno_550;
GO
DECLARE @nuevo_turno_551 INT, @msg_turno_551 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 18,
    @id_paciente = 11,
    @fecha_hora  = '2026-07-08 11:00:00',
    @nuevo_id    = @nuevo_turno_551 OUTPUT,
    @mensaje     = @msg_turno_551 OUTPUT;
PRINT N'Turno 2026-07-08 11:00:00 Dr/a Aguirre -> ' + @msg_turno_551;
GO
DECLARE @nuevo_turno_552 INT, @msg_turno_552 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 18,
    @id_paciente = 12,
    @fecha_hora  = '2026-07-08 12:00:00',
    @nuevo_id    = @nuevo_turno_552 OUTPUT,
    @mensaje     = @msg_turno_552 OUTPUT;
PRINT N'Turno 2026-07-08 12:00:00 Dr/a Aguirre -> ' + @msg_turno_552;
GO
DECLARE @nuevo_turno_553 INT, @msg_turno_553 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 18,
    @id_paciente = 13,
    @fecha_hora  = '2026-07-22 09:00:00',
    @nuevo_id    = @nuevo_turno_553 OUTPUT,
    @mensaje     = @msg_turno_553 OUTPUT;
PRINT N'Turno 2026-07-22 09:00:00 Dr/a Aguirre -> ' + @msg_turno_553;
GO
DECLARE @nuevo_turno_554 INT, @msg_turno_554 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 18,
    @id_paciente = 14,
    @fecha_hora  = '2026-07-22 10:00:00',
    @nuevo_id    = @nuevo_turno_554 OUTPUT,
    @mensaje     = @msg_turno_554 OUTPUT;
PRINT N'Turno 2026-07-22 10:00:00 Dr/a Aguirre -> ' + @msg_turno_554;
GO
DECLARE @nuevo_turno_555 INT, @msg_turno_555 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 18,
    @id_paciente = 15,
    @fecha_hora  = '2026-07-22 11:00:00',
    @nuevo_id    = @nuevo_turno_555 OUTPUT,
    @mensaje     = @msg_turno_555 OUTPUT;
PRINT N'Turno 2026-07-22 11:00:00 Dr/a Aguirre -> ' + @msg_turno_555;
GO
DECLARE @nuevo_turno_556 INT, @msg_turno_556 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 18,
    @id_paciente = 16,
    @fecha_hora  = '2026-07-22 12:00:00',
    @nuevo_id    = @nuevo_turno_556 OUTPUT,
    @mensaje     = @msg_turno_556 OUTPUT;
PRINT N'Turno 2026-07-22 12:00:00 Dr/a Aguirre -> ' + @msg_turno_556;
GO
DECLARE @nuevo_turno_557 INT, @msg_turno_557 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 18,
    @id_paciente = 17,
    @fecha_hora  = '2026-08-05 09:00:00',
    @nuevo_id    = @nuevo_turno_557 OUTPUT,
    @mensaje     = @msg_turno_557 OUTPUT;
PRINT N'Turno 2026-08-05 09:00:00 Dr/a Aguirre -> ' + @msg_turno_557;
GO
DECLARE @nuevo_turno_558 INT, @msg_turno_558 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 18,
    @id_paciente = 18,
    @fecha_hora  = '2026-08-05 10:00:00',
    @nuevo_id    = @nuevo_turno_558 OUTPUT,
    @mensaje     = @msg_turno_558 OUTPUT;
PRINT N'Turno 2026-08-05 10:00:00 Dr/a Aguirre -> ' + @msg_turno_558;
GO
DECLARE @nuevo_turno_559 INT, @msg_turno_559 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 18,
    @id_paciente = 19,
    @fecha_hora  = '2026-08-05 11:00:00',
    @nuevo_id    = @nuevo_turno_559 OUTPUT,
    @mensaje     = @msg_turno_559 OUTPUT;
PRINT N'Turno 2026-08-05 11:00:00 Dr/a Aguirre -> ' + @msg_turno_559;
GO
DECLARE @nuevo_turno_560 INT, @msg_turno_560 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 18,
    @id_paciente = 20,
    @fecha_hora  = '2026-08-05 12:00:00',
    @nuevo_id    = @nuevo_turno_560 OUTPUT,
    @mensaje     = @msg_turno_560 OUTPUT;
PRINT N'Turno 2026-08-05 12:00:00 Dr/a Aguirre -> ' + @msg_turno_560;
GO
DECLARE @nuevo_turno_561 INT, @msg_turno_561 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 18,
    @id_paciente = 21,
    @fecha_hora  = '2026-09-02 09:00:00',
    @nuevo_id    = @nuevo_turno_561 OUTPUT,
    @mensaje     = @msg_turno_561 OUTPUT;
PRINT N'Turno 2026-09-02 09:00:00 Dr/a Aguirre -> ' + @msg_turno_561;
GO
DECLARE @nuevo_turno_562 INT, @msg_turno_562 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 18,
    @id_paciente = 22,
    @fecha_hora  = '2026-09-02 10:00:00',
    @nuevo_id    = @nuevo_turno_562 OUTPUT,
    @mensaje     = @msg_turno_562 OUTPUT;
PRINT N'Turno 2026-09-02 10:00:00 Dr/a Aguirre -> ' + @msg_turno_562;
GO
DECLARE @nuevo_turno_563 INT, @msg_turno_563 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 18,
    @id_paciente = 23,
    @fecha_hora  = '2026-09-02 11:00:00',
    @nuevo_id    = @nuevo_turno_563 OUTPUT,
    @mensaje     = @msg_turno_563 OUTPUT;
PRINT N'Turno 2026-09-02 11:00:00 Dr/a Aguirre -> ' + @msg_turno_563;
GO
DECLARE @nuevo_turno_564 INT, @msg_turno_564 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 18,
    @id_paciente = 24,
    @fecha_hora  = '2026-09-02 12:00:00',
    @nuevo_id    = @nuevo_turno_564 OUTPUT,
    @mensaje     = @msg_turno_564 OUTPUT;
PRINT N'Turno 2026-09-02 12:00:00 Dr/a Aguirre -> ' + @msg_turno_564;
GO
DECLARE @nuevo_turno_565 INT, @msg_turno_565 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 18,
    @id_paciente = 25,
    @fecha_hora  = '2026-09-23 09:00:00',
    @nuevo_id    = @nuevo_turno_565 OUTPUT,
    @mensaje     = @msg_turno_565 OUTPUT;
PRINT N'Turno 2026-09-23 09:00:00 Dr/a Aguirre -> ' + @msg_turno_565;
GO
DECLARE @nuevo_turno_566 INT, @msg_turno_566 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 18,
    @id_paciente = 1,
    @fecha_hora  = '2026-09-23 10:00:00',
    @nuevo_id    = @nuevo_turno_566 OUTPUT,
    @mensaje     = @msg_turno_566 OUTPUT;
PRINT N'Turno 2026-09-23 10:00:00 Dr/a Aguirre -> ' + @msg_turno_566;
GO
DECLARE @nuevo_turno_567 INT, @msg_turno_567 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 18,
    @id_paciente = 2,
    @fecha_hora  = '2026-09-23 11:00:00',
    @nuevo_id    = @nuevo_turno_567 OUTPUT,
    @mensaje     = @msg_turno_567 OUTPUT;
PRINT N'Turno 2026-09-23 11:00:00 Dr/a Aguirre -> ' + @msg_turno_567;
GO
DECLARE @nuevo_turno_568 INT, @msg_turno_568 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 18,
    @id_paciente = 3,
    @fecha_hora  = '2026-09-23 12:00:00',
    @nuevo_id    = @nuevo_turno_568 OUTPUT,
    @mensaje     = @msg_turno_568 OUTPUT;
PRINT N'Turno 2026-09-23 12:00:00 Dr/a Aguirre -> ' + @msg_turno_568;
GO
DECLARE @nuevo_turno_569 INT, @msg_turno_569 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 18,
    @id_paciente = 4,
    @fecha_hora  = '2026-10-07 09:00:00',
    @nuevo_id    = @nuevo_turno_569 OUTPUT,
    @mensaje     = @msg_turno_569 OUTPUT;
PRINT N'Turno 2026-10-07 09:00:00 Dr/a Aguirre -> ' + @msg_turno_569;
GO
DECLARE @nuevo_turno_570 INT, @msg_turno_570 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 18,
    @id_paciente = 5,
    @fecha_hora  = '2026-10-07 10:00:00',
    @nuevo_id    = @nuevo_turno_570 OUTPUT,
    @mensaje     = @msg_turno_570 OUTPUT;
PRINT N'Turno 2026-10-07 10:00:00 Dr/a Aguirre -> ' + @msg_turno_570;
GO
DECLARE @nuevo_turno_571 INT, @msg_turno_571 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 18,
    @id_paciente = 6,
    @fecha_hora  = '2026-10-07 11:00:00',
    @nuevo_id    = @nuevo_turno_571 OUTPUT,
    @mensaje     = @msg_turno_571 OUTPUT;
PRINT N'Turno 2026-10-07 11:00:00 Dr/a Aguirre -> ' + @msg_turno_571;
GO
DECLARE @nuevo_turno_572 INT, @msg_turno_572 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 18,
    @id_paciente = 7,
    @fecha_hora  = '2026-10-07 12:00:00',
    @nuevo_id    = @nuevo_turno_572 OUTPUT,
    @mensaje     = @msg_turno_572 OUTPUT;
PRINT N'Turno 2026-10-07 12:00:00 Dr/a Aguirre -> ' + @msg_turno_572;
GO
DECLARE @nuevo_turno_573 INT, @msg_turno_573 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 19,
    @id_paciente = 8,
    @fecha_hora  = '2026-07-09 09:00:00',
    @nuevo_id    = @nuevo_turno_573 OUTPUT,
    @mensaje     = @msg_turno_573 OUTPUT;
PRINT N'Turno 2026-07-09 09:00:00 Dr/a Castro -> ' + @msg_turno_573;
GO
DECLARE @nuevo_turno_574 INT, @msg_turno_574 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 19,
    @id_paciente = 9,
    @fecha_hora  = '2026-07-09 10:00:00',
    @nuevo_id    = @nuevo_turno_574 OUTPUT,
    @mensaje     = @msg_turno_574 OUTPUT;
PRINT N'Turno 2026-07-09 10:00:00 Dr/a Castro -> ' + @msg_turno_574;
GO
DECLARE @nuevo_turno_575 INT, @msg_turno_575 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 19,
    @id_paciente = 10,
    @fecha_hora  = '2026-07-09 11:00:00',
    @nuevo_id    = @nuevo_turno_575 OUTPUT,
    @mensaje     = @msg_turno_575 OUTPUT;
PRINT N'Turno 2026-07-09 11:00:00 Dr/a Castro -> ' + @msg_turno_575;
GO
DECLARE @nuevo_turno_576 INT, @msg_turno_576 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 19,
    @id_paciente = 11,
    @fecha_hora  = '2026-07-09 12:00:00',
    @nuevo_id    = @nuevo_turno_576 OUTPUT,
    @mensaje     = @msg_turno_576 OUTPUT;
PRINT N'Turno 2026-07-09 12:00:00 Dr/a Castro -> ' + @msg_turno_576;
GO
DECLARE @nuevo_turno_577 INT, @msg_turno_577 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 19,
    @id_paciente = 12,
    @fecha_hora  = '2026-07-23 09:00:00',
    @nuevo_id    = @nuevo_turno_577 OUTPUT,
    @mensaje     = @msg_turno_577 OUTPUT;
PRINT N'Turno 2026-07-23 09:00:00 Dr/a Castro -> ' + @msg_turno_577;
GO
DECLARE @nuevo_turno_578 INT, @msg_turno_578 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 19,
    @id_paciente = 13,
    @fecha_hora  = '2026-07-23 10:00:00',
    @nuevo_id    = @nuevo_turno_578 OUTPUT,
    @mensaje     = @msg_turno_578 OUTPUT;
PRINT N'Turno 2026-07-23 10:00:00 Dr/a Castro -> ' + @msg_turno_578;
GO
DECLARE @nuevo_turno_579 INT, @msg_turno_579 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 19,
    @id_paciente = 14,
    @fecha_hora  = '2026-07-23 11:00:00',
    @nuevo_id    = @nuevo_turno_579 OUTPUT,
    @mensaje     = @msg_turno_579 OUTPUT;
PRINT N'Turno 2026-07-23 11:00:00 Dr/a Castro -> ' + @msg_turno_579;
GO
DECLARE @nuevo_turno_580 INT, @msg_turno_580 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 19,
    @id_paciente = 15,
    @fecha_hora  = '2026-07-23 12:00:00',
    @nuevo_id    = @nuevo_turno_580 OUTPUT,
    @mensaje     = @msg_turno_580 OUTPUT;
PRINT N'Turno 2026-07-23 12:00:00 Dr/a Castro -> ' + @msg_turno_580;
GO
DECLARE @nuevo_turno_581 INT, @msg_turno_581 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 19,
    @id_paciente = 16,
    @fecha_hora  = '2026-08-06 09:00:00',
    @nuevo_id    = @nuevo_turno_581 OUTPUT,
    @mensaje     = @msg_turno_581 OUTPUT;
PRINT N'Turno 2026-08-06 09:00:00 Dr/a Castro -> ' + @msg_turno_581;
GO
DECLARE @nuevo_turno_582 INT, @msg_turno_582 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 19,
    @id_paciente = 17,
    @fecha_hora  = '2026-08-06 10:00:00',
    @nuevo_id    = @nuevo_turno_582 OUTPUT,
    @mensaje     = @msg_turno_582 OUTPUT;
PRINT N'Turno 2026-08-06 10:00:00 Dr/a Castro -> ' + @msg_turno_582;
GO
DECLARE @nuevo_turno_583 INT, @msg_turno_583 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 19,
    @id_paciente = 18,
    @fecha_hora  = '2026-08-06 11:00:00',
    @nuevo_id    = @nuevo_turno_583 OUTPUT,
    @mensaje     = @msg_turno_583 OUTPUT;
PRINT N'Turno 2026-08-06 11:00:00 Dr/a Castro -> ' + @msg_turno_583;
GO
DECLARE @nuevo_turno_584 INT, @msg_turno_584 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 19,
    @id_paciente = 19,
    @fecha_hora  = '2026-08-06 12:00:00',
    @nuevo_id    = @nuevo_turno_584 OUTPUT,
    @mensaje     = @msg_turno_584 OUTPUT;
PRINT N'Turno 2026-08-06 12:00:00 Dr/a Castro -> ' + @msg_turno_584;
GO
DECLARE @nuevo_turno_585 INT, @msg_turno_585 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 19,
    @id_paciente = 20,
    @fecha_hora  = '2026-09-03 09:00:00',
    @nuevo_id    = @nuevo_turno_585 OUTPUT,
    @mensaje     = @msg_turno_585 OUTPUT;
PRINT N'Turno 2026-09-03 09:00:00 Dr/a Castro -> ' + @msg_turno_585;
GO
DECLARE @nuevo_turno_586 INT, @msg_turno_586 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 19,
    @id_paciente = 21,
    @fecha_hora  = '2026-09-03 10:00:00',
    @nuevo_id    = @nuevo_turno_586 OUTPUT,
    @mensaje     = @msg_turno_586 OUTPUT;
PRINT N'Turno 2026-09-03 10:00:00 Dr/a Castro -> ' + @msg_turno_586;
GO
DECLARE @nuevo_turno_587 INT, @msg_turno_587 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 19,
    @id_paciente = 22,
    @fecha_hora  = '2026-09-03 11:00:00',
    @nuevo_id    = @nuevo_turno_587 OUTPUT,
    @mensaje     = @msg_turno_587 OUTPUT;
PRINT N'Turno 2026-09-03 11:00:00 Dr/a Castro -> ' + @msg_turno_587;
GO
DECLARE @nuevo_turno_588 INT, @msg_turno_588 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 19,
    @id_paciente = 23,
    @fecha_hora  = '2026-09-03 12:00:00',
    @nuevo_id    = @nuevo_turno_588 OUTPUT,
    @mensaje     = @msg_turno_588 OUTPUT;
PRINT N'Turno 2026-09-03 12:00:00 Dr/a Castro -> ' + @msg_turno_588;
GO
DECLARE @nuevo_turno_589 INT, @msg_turno_589 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 19,
    @id_paciente = 24,
    @fecha_hora  = '2026-09-17 09:00:00',
    @nuevo_id    = @nuevo_turno_589 OUTPUT,
    @mensaje     = @msg_turno_589 OUTPUT;
PRINT N'Turno 2026-09-17 09:00:00 Dr/a Castro -> ' + @msg_turno_589;
GO
DECLARE @nuevo_turno_590 INT, @msg_turno_590 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 19,
    @id_paciente = 25,
    @fecha_hora  = '2026-09-17 10:00:00',
    @nuevo_id    = @nuevo_turno_590 OUTPUT,
    @mensaje     = @msg_turno_590 OUTPUT;
PRINT N'Turno 2026-09-17 10:00:00 Dr/a Castro -> ' + @msg_turno_590;
GO
DECLARE @nuevo_turno_591 INT, @msg_turno_591 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 19,
    @id_paciente = 1,
    @fecha_hora  = '2026-09-17 11:00:00',
    @nuevo_id    = @nuevo_turno_591 OUTPUT,
    @mensaje     = @msg_turno_591 OUTPUT;
PRINT N'Turno 2026-09-17 11:00:00 Dr/a Castro -> ' + @msg_turno_591;
GO
DECLARE @nuevo_turno_592 INT, @msg_turno_592 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 19,
    @id_paciente = 2,
    @fecha_hora  = '2026-09-17 12:00:00',
    @nuevo_id    = @nuevo_turno_592 OUTPUT,
    @mensaje     = @msg_turno_592 OUTPUT;
PRINT N'Turno 2026-09-17 12:00:00 Dr/a Castro -> ' + @msg_turno_592;
GO
DECLARE @nuevo_turno_593 INT, @msg_turno_593 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 19,
    @id_paciente = 3,
    @fecha_hora  = '2026-10-08 09:00:00',
    @nuevo_id    = @nuevo_turno_593 OUTPUT,
    @mensaje     = @msg_turno_593 OUTPUT;
PRINT N'Turno 2026-10-08 09:00:00 Dr/a Castro -> ' + @msg_turno_593;
GO
DECLARE @nuevo_turno_594 INT, @msg_turno_594 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 19,
    @id_paciente = 4,
    @fecha_hora  = '2026-10-08 10:00:00',
    @nuevo_id    = @nuevo_turno_594 OUTPUT,
    @mensaje     = @msg_turno_594 OUTPUT;
PRINT N'Turno 2026-10-08 10:00:00 Dr/a Castro -> ' + @msg_turno_594;
GO
DECLARE @nuevo_turno_595 INT, @msg_turno_595 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 19,
    @id_paciente = 5,
    @fecha_hora  = '2026-10-08 11:00:00',
    @nuevo_id    = @nuevo_turno_595 OUTPUT,
    @mensaje     = @msg_turno_595 OUTPUT;
PRINT N'Turno 2026-10-08 11:00:00 Dr/a Castro -> ' + @msg_turno_595;
GO
DECLARE @nuevo_turno_596 INT, @msg_turno_596 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 19,
    @id_paciente = 6,
    @fecha_hora  = '2026-10-08 12:00:00',
    @nuevo_id    = @nuevo_turno_596 OUTPUT,
    @mensaje     = @msg_turno_596 OUTPUT;
PRINT N'Turno 2026-10-08 12:00:00 Dr/a Castro -> ' + @msg_turno_596;
GO
DECLARE @nuevo_turno_597 INT, @msg_turno_597 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 20,
    @id_paciente = 7,
    @fecha_hora  = '2026-07-10 09:00:00',
    @nuevo_id    = @nuevo_turno_597 OUTPUT,
    @mensaje     = @msg_turno_597 OUTPUT;
PRINT N'Turno 2026-07-10 09:00:00 Dr/a Acosta -> ' + @msg_turno_597;
GO
DECLARE @nuevo_turno_598 INT, @msg_turno_598 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 20,
    @id_paciente = 8,
    @fecha_hora  = '2026-07-10 10:00:00',
    @nuevo_id    = @nuevo_turno_598 OUTPUT,
    @mensaje     = @msg_turno_598 OUTPUT;
PRINT N'Turno 2026-07-10 10:00:00 Dr/a Acosta -> ' + @msg_turno_598;
GO
DECLARE @nuevo_turno_599 INT, @msg_turno_599 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 20,
    @id_paciente = 9,
    @fecha_hora  = '2026-07-10 11:00:00',
    @nuevo_id    = @nuevo_turno_599 OUTPUT,
    @mensaje     = @msg_turno_599 OUTPUT;
PRINT N'Turno 2026-07-10 11:00:00 Dr/a Acosta -> ' + @msg_turno_599;
GO
DECLARE @nuevo_turno_600 INT, @msg_turno_600 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 20,
    @id_paciente = 10,
    @fecha_hora  = '2026-07-10 12:00:00',
    @nuevo_id    = @nuevo_turno_600 OUTPUT,
    @mensaje     = @msg_turno_600 OUTPUT;
PRINT N'Turno 2026-07-10 12:00:00 Dr/a Acosta -> ' + @msg_turno_600;
GO
DECLARE @nuevo_turno_601 INT, @msg_turno_601 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 20,
    @id_paciente = 11,
    @fecha_hora  = '2026-07-24 09:00:00',
    @nuevo_id    = @nuevo_turno_601 OUTPUT,
    @mensaje     = @msg_turno_601 OUTPUT;
PRINT N'Turno 2026-07-24 09:00:00 Dr/a Acosta -> ' + @msg_turno_601;
GO
DECLARE @nuevo_turno_602 INT, @msg_turno_602 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 20,
    @id_paciente = 12,
    @fecha_hora  = '2026-07-24 10:00:00',
    @nuevo_id    = @nuevo_turno_602 OUTPUT,
    @mensaje     = @msg_turno_602 OUTPUT;
PRINT N'Turno 2026-07-24 10:00:00 Dr/a Acosta -> ' + @msg_turno_602;
GO
DECLARE @nuevo_turno_603 INT, @msg_turno_603 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 20,
    @id_paciente = 13,
    @fecha_hora  = '2026-07-24 11:00:00',
    @nuevo_id    = @nuevo_turno_603 OUTPUT,
    @mensaje     = @msg_turno_603 OUTPUT;
PRINT N'Turno 2026-07-24 11:00:00 Dr/a Acosta -> ' + @msg_turno_603;
GO
DECLARE @nuevo_turno_604 INT, @msg_turno_604 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 20,
    @id_paciente = 14,
    @fecha_hora  = '2026-07-24 12:00:00',
    @nuevo_id    = @nuevo_turno_604 OUTPUT,
    @mensaje     = @msg_turno_604 OUTPUT;
PRINT N'Turno 2026-07-24 12:00:00 Dr/a Acosta -> ' + @msg_turno_604;
GO
DECLARE @nuevo_turno_605 INT, @msg_turno_605 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 20,
    @id_paciente = 15,
    @fecha_hora  = '2026-08-07 09:00:00',
    @nuevo_id    = @nuevo_turno_605 OUTPUT,
    @mensaje     = @msg_turno_605 OUTPUT;
PRINT N'Turno 2026-08-07 09:00:00 Dr/a Acosta -> ' + @msg_turno_605;
GO
DECLARE @nuevo_turno_606 INT, @msg_turno_606 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 20,
    @id_paciente = 16,
    @fecha_hora  = '2026-08-07 10:00:00',
    @nuevo_id    = @nuevo_turno_606 OUTPUT,
    @mensaje     = @msg_turno_606 OUTPUT;
PRINT N'Turno 2026-08-07 10:00:00 Dr/a Acosta -> ' + @msg_turno_606;
GO
DECLARE @nuevo_turno_607 INT, @msg_turno_607 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 20,
    @id_paciente = 17,
    @fecha_hora  = '2026-08-07 11:00:00',
    @nuevo_id    = @nuevo_turno_607 OUTPUT,
    @mensaje     = @msg_turno_607 OUTPUT;
PRINT N'Turno 2026-08-07 11:00:00 Dr/a Acosta -> ' + @msg_turno_607;
GO
DECLARE @nuevo_turno_608 INT, @msg_turno_608 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 20,
    @id_paciente = 18,
    @fecha_hora  = '2026-08-07 12:00:00',
    @nuevo_id    = @nuevo_turno_608 OUTPUT,
    @mensaje     = @msg_turno_608 OUTPUT;
PRINT N'Turno 2026-08-07 12:00:00 Dr/a Acosta -> ' + @msg_turno_608;
GO
DECLARE @nuevo_turno_609 INT, @msg_turno_609 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 20,
    @id_paciente = 19,
    @fecha_hora  = '2026-09-04 09:00:00',
    @nuevo_id    = @nuevo_turno_609 OUTPUT,
    @mensaje     = @msg_turno_609 OUTPUT;
PRINT N'Turno 2026-09-04 09:00:00 Dr/a Acosta -> ' + @msg_turno_609;
GO
DECLARE @nuevo_turno_610 INT, @msg_turno_610 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 20,
    @id_paciente = 20,
    @fecha_hora  = '2026-09-04 10:00:00',
    @nuevo_id    = @nuevo_turno_610 OUTPUT,
    @mensaje     = @msg_turno_610 OUTPUT;
PRINT N'Turno 2026-09-04 10:00:00 Dr/a Acosta -> ' + @msg_turno_610;
GO
DECLARE @nuevo_turno_611 INT, @msg_turno_611 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 20,
    @id_paciente = 21,
    @fecha_hora  = '2026-09-04 11:00:00',
    @nuevo_id    = @nuevo_turno_611 OUTPUT,
    @mensaje     = @msg_turno_611 OUTPUT;
PRINT N'Turno 2026-09-04 11:00:00 Dr/a Acosta -> ' + @msg_turno_611;
GO
DECLARE @nuevo_turno_612 INT, @msg_turno_612 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 20,
    @id_paciente = 22,
    @fecha_hora  = '2026-09-04 12:00:00',
    @nuevo_id    = @nuevo_turno_612 OUTPUT,
    @mensaje     = @msg_turno_612 OUTPUT;
PRINT N'Turno 2026-09-04 12:00:00 Dr/a Acosta -> ' + @msg_turno_612;
GO
DECLARE @nuevo_turno_613 INT, @msg_turno_613 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 20,
    @id_paciente = 23,
    @fecha_hora  = '2026-09-18 09:00:00',
    @nuevo_id    = @nuevo_turno_613 OUTPUT,
    @mensaje     = @msg_turno_613 OUTPUT;
PRINT N'Turno 2026-09-18 09:00:00 Dr/a Acosta -> ' + @msg_turno_613;
GO
DECLARE @nuevo_turno_614 INT, @msg_turno_614 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 20,
    @id_paciente = 24,
    @fecha_hora  = '2026-09-18 10:00:00',
    @nuevo_id    = @nuevo_turno_614 OUTPUT,
    @mensaje     = @msg_turno_614 OUTPUT;
PRINT N'Turno 2026-09-18 10:00:00 Dr/a Acosta -> ' + @msg_turno_614;
GO
DECLARE @nuevo_turno_615 INT, @msg_turno_615 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 20,
    @id_paciente = 25,
    @fecha_hora  = '2026-09-18 11:00:00',
    @nuevo_id    = @nuevo_turno_615 OUTPUT,
    @mensaje     = @msg_turno_615 OUTPUT;
PRINT N'Turno 2026-09-18 11:00:00 Dr/a Acosta -> ' + @msg_turno_615;
GO
DECLARE @nuevo_turno_616 INT, @msg_turno_616 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 20,
    @id_paciente = 1,
    @fecha_hora  = '2026-09-18 12:00:00',
    @nuevo_id    = @nuevo_turno_616 OUTPUT,
    @mensaje     = @msg_turno_616 OUTPUT;
PRINT N'Turno 2026-09-18 12:00:00 Dr/a Acosta -> ' + @msg_turno_616;
GO
DECLARE @nuevo_turno_617 INT, @msg_turno_617 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 20,
    @id_paciente = 2,
    @fecha_hora  = '2026-10-09 09:00:00',
    @nuevo_id    = @nuevo_turno_617 OUTPUT,
    @mensaje     = @msg_turno_617 OUTPUT;
PRINT N'Turno 2026-10-09 09:00:00 Dr/a Acosta -> ' + @msg_turno_617;
GO
DECLARE @nuevo_turno_618 INT, @msg_turno_618 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 20,
    @id_paciente = 3,
    @fecha_hora  = '2026-10-09 10:00:00',
    @nuevo_id    = @nuevo_turno_618 OUTPUT,
    @mensaje     = @msg_turno_618 OUTPUT;
PRINT N'Turno 2026-10-09 10:00:00 Dr/a Acosta -> ' + @msg_turno_618;
GO
DECLARE @nuevo_turno_619 INT, @msg_turno_619 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 20,
    @id_paciente = 4,
    @fecha_hora  = '2026-10-09 11:00:00',
    @nuevo_id    = @nuevo_turno_619 OUTPUT,
    @mensaje     = @msg_turno_619 OUTPUT;
PRINT N'Turno 2026-10-09 11:00:00 Dr/a Acosta -> ' + @msg_turno_619;
GO
DECLARE @nuevo_turno_620 INT, @msg_turno_620 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 20,
    @id_paciente = 5,
    @fecha_hora  = '2026-10-09 12:00:00',
    @nuevo_id    = @nuevo_turno_620 OUTPUT,
    @mensaje     = @msg_turno_620 OUTPUT;
PRINT N'Turno 2026-10-09 12:00:00 Dr/a Acosta -> ' + @msg_turno_620;
GO


-- =====================  VERIFICACIONES RAPIDAS  =====================
SELECT 'Provincia' AS Tabla, COUNT(*) AS Registros FROM Provincia
UNION ALL SELECT 'Localidad', COUNT(*) FROM Localidad
UNION ALL SELECT 'Especialidad', COUNT(*) FROM Especialidad
UNION ALL SELECT 'Persona', COUNT(*) FROM Persona
UNION ALL SELECT 'Paciente', COUNT(*) FROM Paciente
UNION ALL SELECT 'Medico', COUNT(*) FROM Medico
UNION ALL SELECT 'Usuario', COUNT(*) FROM Usuario
UNION ALL SELECT 'HorarioMedico', COUNT(*) FROM HorarioMedico
UNION ALL SELECT 'Turno', COUNT(*) FROM Turno;
GO