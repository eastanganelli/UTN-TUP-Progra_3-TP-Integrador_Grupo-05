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
INSERT INTO [dbo].[Usuario] (username, password_hash, tipo, id_medico, activo) VALUES (N'admin', 'b5af2beb9b7fd5aa4eb21b61925bd3856793e54e0a39052fbcfaf5b477fd07f3', N'admin', NULL, 1);
-- usuario: administracion  /  password de prueba: Clinica#2026
INSERT INTO [dbo].[Usuario] (username, password_hash, tipo, id_medico, activo) VALUES (N'administracion', 'a3a5f8833b55d243c3f7e211a8ebe10c904a607e18f8ee85acf258d7e144cf72', N'admin', NULL, 1);
-- usuario: supervisor  /  password de prueba: Super#2026
INSERT INTO [dbo].[Usuario] (username, password_hash, tipo, id_medico, activo) VALUES (N'supervisor', '676c901351bacea1fd06ad2f514fb8e13327f23c5509dd536bed79f1d4a18f30', N'admin', NULL, 1);
GO

-- =====================  5) PACIENTES (vía sp_Paciente_Alta)  =====================
DECLARE @nuevo_id INT, @msg NVARCHAR(200);
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
    @telefono         = N'011-4604-7912',
    @nuevo_id         = @nuevo_id OUTPUT,
    @mensaje          = @msg OUTPUT;
PRINT N'Paciente Juan Ortiz -> ' + @msg;
GO
DECLARE @nuevo_id INT, @msg NVARCHAR(200);
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
    @telefono         = N'011-4225-8359',
    @nuevo_id         = @nuevo_id OUTPUT,
    @mensaje          = @msg OUTPUT;
PRINT N'Paciente Juan Gómez -> ' + @msg;
GO
DECLARE @nuevo_id INT, @msg NVARCHAR(200);
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
    @telefono         = N'011-4284-3547',
    @nuevo_id         = @nuevo_id OUTPUT,
    @mensaje          = @msg OUTPUT;
PRINT N'Paciente Nicolás Vázquez -> ' + @msg;
GO
DECLARE @nuevo_id INT, @msg NVARCHAR(200);
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
    @telefono         = N'011-4618-5333',
    @nuevo_id         = @nuevo_id OUTPUT,
    @mensaje          = @msg OUTPUT;
PRINT N'Paciente Agustina Romero -> ' + @msg;
GO
DECLARE @nuevo_id INT, @msg NVARCHAR(200);
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
    @telefono         = N'011-4849-6925',
    @nuevo_id         = @nuevo_id OUTPUT,
    @mensaje          = @msg OUTPUT;
PRINT N'Paciente Leonardo Ruiz -> ' + @msg;
GO
DECLARE @nuevo_id INT, @msg NVARCHAR(200);
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
    @telefono         = N'011-4875-4814',
    @nuevo_id         = @nuevo_id OUTPUT,
    @mensaje          = @msg OUTPUT;
PRINT N'Paciente Daniel Castro -> ' + @msg;
GO
DECLARE @nuevo_id INT, @msg NVARCHAR(200);
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
    @telefono         = N'011-4363-4432',
    @nuevo_id         = @nuevo_id OUTPUT,
    @mensaje          = @msg OUTPUT;
PRINT N'Paciente Daniel García -> ' + @msg;
GO
DECLARE @nuevo_id INT, @msg NVARCHAR(200);
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
    @telefono         = N'011-4167-8573',
    @nuevo_id         = @nuevo_id OUTPUT,
    @mensaje          = @msg OUTPUT;
PRINT N'Paciente Yamila Molina -> ' + @msg;
GO
DECLARE @nuevo_id INT, @msg NVARCHAR(200);
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
    @telefono         = N'011-4234-1525',
    @nuevo_id         = @nuevo_id OUTPUT,
    @mensaje          = @msg OUTPUT;
PRINT N'Paciente Gustavo Molina -> ' + @msg;
GO
DECLARE @nuevo_id INT, @msg NVARCHAR(200);
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
    @telefono         = N'011-4405-8517',
    @nuevo_id         = @nuevo_id OUTPUT,
    @mensaje          = @msg OUTPUT;
PRINT N'Paciente Valeria García -> ' + @msg;
GO
DECLARE @nuevo_id INT, @msg NVARCHAR(200);
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
    @telefono         = N'011-4370-4593',
    @nuevo_id         = @nuevo_id OUTPUT,
    @mensaje          = @msg OUTPUT;
PRINT N'Paciente Gabriela López -> ' + @msg;
GO
DECLARE @nuevo_id INT, @msg NVARCHAR(200);
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
    @telefono         = N'011-4811-7916',
    @nuevo_id         = @nuevo_id OUTPUT,
    @mensaje          = @msg OUTPUT;
PRINT N'Paciente Lucía Ramírez -> ' + @msg;
GO
DECLARE @nuevo_id INT, @msg NVARCHAR(200);
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
    @telefono         = N'011-4696-2876',
    @nuevo_id         = @nuevo_id OUTPUT,
    @mensaje          = @msg OUTPUT;
PRINT N'Paciente Sergio Torres -> ' + @msg;
GO
DECLARE @nuevo_id INT, @msg NVARCHAR(200);
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
    @telefono         = N'011-4161-8433',
    @nuevo_id         = @nuevo_id OUTPUT,
    @mensaje          = @msg OUTPUT;
PRINT N'Paciente Victoria García -> ' + @msg;
GO
DECLARE @nuevo_id INT, @msg NVARCHAR(200);
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
    @telefono         = N'011-4891-5889',
    @nuevo_id         = @nuevo_id OUTPUT,
    @mensaje          = @msg OUTPUT;
PRINT N'Paciente Leonardo Núñez -> ' + @msg;
GO
DECLARE @nuevo_id INT, @msg NVARCHAR(200);
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
    @telefono         = N'011-4613-6310',
    @nuevo_id         = @nuevo_id OUTPUT,
    @mensaje          = @msg OUTPUT;
PRINT N'Paciente Soledad Martínez -> ' + @msg;
GO
DECLARE @nuevo_id INT, @msg NVARCHAR(200);
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
    @telefono         = N'011-4246-2290',
    @nuevo_id         = @nuevo_id OUTPUT,
    @mensaje          = @msg OUTPUT;
PRINT N'Paciente Juan Fernández -> ' + @msg;
GO
DECLARE @nuevo_id INT, @msg NVARCHAR(200);
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
    @telefono         = N'011-4969-3705',
    @nuevo_id         = @nuevo_id OUTPUT,
    @mensaje          = @msg OUTPUT;
PRINT N'Paciente Leonardo Ramírez -> ' + @msg;
GO
DECLARE @nuevo_id INT, @msg NVARCHAR(200);
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
    @telefono         = N'011-4687-7118',
    @nuevo_id         = @nuevo_id OUTPUT,
    @mensaje          = @msg OUTPUT;
PRINT N'Paciente Lucía Aguirre -> ' + @msg;
GO
DECLARE @nuevo_id INT, @msg NVARCHAR(200);
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
    @telefono         = N'011-4602-4770',
    @nuevo_id         = @nuevo_id OUTPUT,
    @mensaje          = @msg OUTPUT;
PRINT N'Paciente Matías Ruiz -> ' + @msg;
GO
DECLARE @nuevo_id INT, @msg NVARCHAR(200);
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
    @telefono         = N'011-4927-1514',
    @nuevo_id         = @nuevo_id OUTPUT,
    @mensaje          = @msg OUTPUT;
PRINT N'Paciente Hernán González -> ' + @msg;
GO
DECLARE @nuevo_id INT, @msg NVARCHAR(200);
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
    @telefono         = N'011-4740-8744',
    @nuevo_id         = @nuevo_id OUTPUT,
    @mensaje          = @msg OUTPUT;
PRINT N'Paciente Ana Flores -> ' + @msg;
GO
DECLARE @nuevo_id INT, @msg NVARCHAR(200);
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
    @telefono         = N'011-4433-7735',
    @nuevo_id         = @nuevo_id OUTPUT,
    @mensaje          = @msg OUTPUT;
PRINT N'Paciente Paula Vázquez -> ' + @msg;
GO
DECLARE @nuevo_id INT, @msg NVARCHAR(200);
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
    @telefono         = N'011-4745-6559',
    @nuevo_id         = @nuevo_id OUTPUT,
    @mensaje          = @msg OUTPUT;
PRINT N'Paciente Leonardo Rodríguez -> ' + @msg;
GO
DECLARE @nuevo_id INT, @msg NVARCHAR(200);
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
    @telefono         = N'011-4285-8579',
    @nuevo_id         = @nuevo_id OUTPUT,
    @mensaje          = @msg OUTPUT;
PRINT N'Paciente Eduardo Martínez -> ' + @msg;
GO

-- =====================  6) MEDICOS (vía sp_Medico_Alta)  =====================
DECLARE @nuevo_id_med INT, @msg_med NVARCHAR(200);
EXEC [dbo].[sp_Medico_Alta]
    @legajo           = N'MED-0001',
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
PRINT N'Medico Gonzalo Gómez (MED-0001) -> ' + @msg_med;
GO
DECLARE @nuevo_id_med INT, @msg_med NVARCHAR(200);
EXEC [dbo].[sp_Medico_Alta]
    @legajo           = N'MED-0002',
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
PRINT N'Medico Roberto Suárez (MED-0002) -> ' + @msg_med;
GO
DECLARE @nuevo_id_med INT, @msg_med NVARCHAR(200);
EXEC [dbo].[sp_Medico_Alta]
    @legajo           = N'MED-0003',
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
PRINT N'Medico Gustavo Torres (MED-0003) -> ' + @msg_med;
GO
DECLARE @nuevo_id_med INT, @msg_med NVARCHAR(200);
EXEC [dbo].[sp_Medico_Alta]
    @legajo           = N'MED-0004',
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
PRINT N'Medico Hernán Medina (MED-0004) -> ' + @msg_med;
GO
DECLARE @nuevo_id_med INT, @msg_med NVARCHAR(200);
EXEC [dbo].[sp_Medico_Alta]
    @legajo           = N'MED-0005',
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
PRINT N'Medico Eduardo Sosa (MED-0005) -> ' + @msg_med;
GO
DECLARE @nuevo_id_med INT, @msg_med NVARCHAR(200);
EXEC [dbo].[sp_Medico_Alta]
    @legajo           = N'MED-0006',
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
PRINT N'Medico Sergio García (MED-0006) -> ' + @msg_med;
GO
DECLARE @nuevo_id_med INT, @msg_med NVARCHAR(200);
EXEC [dbo].[sp_Medico_Alta]
    @legajo           = N'MED-0007',
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
PRINT N'Medico Verónica Suárez (MED-0007) -> ' + @msg_med;
GO
DECLARE @nuevo_id_med INT, @msg_med NVARCHAR(200);
EXEC [dbo].[sp_Medico_Alta]
    @legajo           = N'MED-0008',
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
PRINT N'Medico Ezequiel Álvarez (MED-0008) -> ' + @msg_med;
GO
DECLARE @nuevo_id_med INT, @msg_med NVARCHAR(200);
EXEC [dbo].[sp_Medico_Alta]
    @legajo           = N'MED-0009',
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
PRINT N'Medico Natalia González (MED-0009) -> ' + @msg_med;
GO
DECLARE @nuevo_id_med INT, @msg_med NVARCHAR(200);
EXEC [dbo].[sp_Medico_Alta]
    @legajo           = N'MED-0010',
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
PRINT N'Medico Roberto López (MED-0010) -> ' + @msg_med;
GO
DECLARE @nuevo_id_med INT, @msg_med NVARCHAR(200);
EXEC [dbo].[sp_Medico_Alta]
    @legajo           = N'MED-0011',
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
PRINT N'Medico Marcelo Gutiérrez (MED-0011) -> ' + @msg_med;
GO
DECLARE @nuevo_id_med INT, @msg_med NVARCHAR(200);
EXEC [dbo].[sp_Medico_Alta]
    @legajo           = N'MED-0012',
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
PRINT N'Medico María Díaz (MED-0012) -> ' + @msg_med;
GO
DECLARE @nuevo_id_med INT, @msg_med NVARCHAR(200);
EXEC [dbo].[sp_Medico_Alta]
    @legajo           = N'MED-0013',
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
PRINT N'Medico Laura Aguirre (MED-0013) -> ' + @msg_med;
GO
DECLARE @nuevo_id_med INT, @msg_med NVARCHAR(200);
EXEC [dbo].[sp_Medico_Alta]
    @legajo           = N'MED-0014',
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
PRINT N'Medico Juan Suárez (MED-0014) -> ' + @msg_med;
GO
DECLARE @nuevo_id_med INT, @msg_med NVARCHAR(200);
EXEC [dbo].[sp_Medico_Alta]
    @legajo           = N'MED-0015',
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
PRINT N'Medico Estefanía Rojas (MED-0015) -> ' + @msg_med;
GO
DECLARE @nuevo_id_med INT, @msg_med NVARCHAR(200);
EXEC [dbo].[sp_Medico_Alta]
    @legajo           = N'MED-0016',
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
PRINT N'Medico Diego Medina (MED-0016) -> ' + @msg_med;
GO
DECLARE @nuevo_id_med INT, @msg_med NVARCHAR(200);
EXEC [dbo].[sp_Medico_Alta]
    @legajo           = N'MED-0017',
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
PRINT N'Medico Laura Castro (MED-0017) -> ' + @msg_med;
GO
DECLARE @nuevo_id_med INT, @msg_med NVARCHAR(200);
EXEC [dbo].[sp_Medico_Alta]
    @legajo           = N'MED-0018',
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
PRINT N'Medico Estefanía Aguirre (MED-0018) -> ' + @msg_med;
GO
DECLARE @nuevo_id_med INT, @msg_med NVARCHAR(200);
EXEC [dbo].[sp_Medico_Alta]
    @legajo           = N'MED-0019',
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
PRINT N'Medico Valeria Castro (MED-0019) -> ' + @msg_med;
GO
DECLARE @nuevo_id_med INT, @msg_med NVARCHAR(200);
EXEC [dbo].[sp_Medico_Alta]
    @legajo           = N'MED-0020',
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
PRINT N'Medico Valeria Acosta (MED-0020) -> ' + @msg_med;
GO

-- =====================  7) USUARIO de tipo medico (vía sp_Usuario_Medico_Guardar)  =====================
DECLARE @msg_usr NVARCHAR(200);
EXEC [dbo].[sp_Usuario_Medico_Guardar]
    @id_medico     = 1,
    @username      = N'ggomez1',
    @password_hash = 'f6c06fff03f74199e71b8b32a9ed0c76a3ac64e050f591a07e7b7ce33d058a7a',
    @mensaje       = @msg_usr OUTPUT;
PRINT N'Usuario medico ggomez1 -> ' + @msg_usr;
GO
DECLARE @msg_usr NVARCHAR(200);
EXEC [dbo].[sp_Usuario_Medico_Guardar]
    @id_medico     = 2,
    @username      = N'rsuarez2',
    @password_hash = 'f6c06fff03f74199e71b8b32a9ed0c76a3ac64e050f591a07e7b7ce33d058a7a',
    @mensaje       = @msg_usr OUTPUT;
PRINT N'Usuario medico rsuarez2 -> ' + @msg_usr;
GO
DECLARE @msg_usr NVARCHAR(200);
EXEC [dbo].[sp_Usuario_Medico_Guardar]
    @id_medico     = 3,
    @username      = N'gtorres3',
    @password_hash = 'f6c06fff03f74199e71b8b32a9ed0c76a3ac64e050f591a07e7b7ce33d058a7a',
    @mensaje       = @msg_usr OUTPUT;
PRINT N'Usuario medico gtorres3 -> ' + @msg_usr;
GO
DECLARE @msg_usr NVARCHAR(200);
EXEC [dbo].[sp_Usuario_Medico_Guardar]
    @id_medico     = 4,
    @username      = N'hmedina4',
    @password_hash = 'f6c06fff03f74199e71b8b32a9ed0c76a3ac64e050f591a07e7b7ce33d058a7a',
    @mensaje       = @msg_usr OUTPUT;
PRINT N'Usuario medico hmedina4 -> ' + @msg_usr;
GO
DECLARE @msg_usr NVARCHAR(200);
EXEC [dbo].[sp_Usuario_Medico_Guardar]
    @id_medico     = 5,
    @username      = N'esosa5',
    @password_hash = 'f6c06fff03f74199e71b8b32a9ed0c76a3ac64e050f591a07e7b7ce33d058a7a',
    @mensaje       = @msg_usr OUTPUT;
PRINT N'Usuario medico esosa5 -> ' + @msg_usr;
GO
DECLARE @msg_usr NVARCHAR(200);
EXEC [dbo].[sp_Usuario_Medico_Guardar]
    @id_medico     = 6,
    @username      = N'sgarcia6',
    @password_hash = 'f6c06fff03f74199e71b8b32a9ed0c76a3ac64e050f591a07e7b7ce33d058a7a',
    @mensaje       = @msg_usr OUTPUT;
PRINT N'Usuario medico sgarcia6 -> ' + @msg_usr;
GO
DECLARE @msg_usr NVARCHAR(200);
EXEC [dbo].[sp_Usuario_Medico_Guardar]
    @id_medico     = 7,
    @username      = N'vsuarez7',
    @password_hash = 'f6c06fff03f74199e71b8b32a9ed0c76a3ac64e050f591a07e7b7ce33d058a7a',
    @mensaje       = @msg_usr OUTPUT;
PRINT N'Usuario medico vsuarez7 -> ' + @msg_usr;
GO
DECLARE @msg_usr NVARCHAR(200);
EXEC [dbo].[sp_Usuario_Medico_Guardar]
    @id_medico     = 8,
    @username      = N'ealvarez8',
    @password_hash = 'f6c06fff03f74199e71b8b32a9ed0c76a3ac64e050f591a07e7b7ce33d058a7a',
    @mensaje       = @msg_usr OUTPUT;
PRINT N'Usuario medico ealvarez8 -> ' + @msg_usr;
GO
DECLARE @msg_usr NVARCHAR(200);
EXEC [dbo].[sp_Usuario_Medico_Guardar]
    @id_medico     = 9,
    @username      = N'ngonzalez9',
    @password_hash = 'f6c06fff03f74199e71b8b32a9ed0c76a3ac64e050f591a07e7b7ce33d058a7a',
    @mensaje       = @msg_usr OUTPUT;
PRINT N'Usuario medico ngonzalez9 -> ' + @msg_usr;
GO
DECLARE @msg_usr NVARCHAR(200);
EXEC [dbo].[sp_Usuario_Medico_Guardar]
    @id_medico     = 10,
    @username      = N'rlopez10',
    @password_hash = 'f6c06fff03f74199e71b8b32a9ed0c76a3ac64e050f591a07e7b7ce33d058a7a',
    @mensaje       = @msg_usr OUTPUT;
PRINT N'Usuario medico rlopez10 -> ' + @msg_usr;
GO
DECLARE @msg_usr NVARCHAR(200);
EXEC [dbo].[sp_Usuario_Medico_Guardar]
    @id_medico     = 11,
    @username      = N'mgutierrez11',
    @password_hash = 'f6c06fff03f74199e71b8b32a9ed0c76a3ac64e050f591a07e7b7ce33d058a7a',
    @mensaje       = @msg_usr OUTPUT;
PRINT N'Usuario medico mgutierrez11 -> ' + @msg_usr;
GO
DECLARE @msg_usr NVARCHAR(200);
EXEC [dbo].[sp_Usuario_Medico_Guardar]
    @id_medico     = 12,
    @username      = N'mdiaz12',
    @password_hash = 'f6c06fff03f74199e71b8b32a9ed0c76a3ac64e050f591a07e7b7ce33d058a7a',
    @mensaje       = @msg_usr OUTPUT;
PRINT N'Usuario medico mdiaz12 -> ' + @msg_usr;
GO
DECLARE @msg_usr NVARCHAR(200);
EXEC [dbo].[sp_Usuario_Medico_Guardar]
    @id_medico     = 13,
    @username      = N'laguirre13',
    @password_hash = 'f6c06fff03f74199e71b8b32a9ed0c76a3ac64e050f591a07e7b7ce33d058a7a',
    @mensaje       = @msg_usr OUTPUT;
PRINT N'Usuario medico laguirre13 -> ' + @msg_usr;
GO
DECLARE @msg_usr NVARCHAR(200);
EXEC [dbo].[sp_Usuario_Medico_Guardar]
    @id_medico     = 14,
    @username      = N'jsuarez14',
    @password_hash = 'f6c06fff03f74199e71b8b32a9ed0c76a3ac64e050f591a07e7b7ce33d058a7a',
    @mensaje       = @msg_usr OUTPUT;
PRINT N'Usuario medico jsuarez14 -> ' + @msg_usr;
GO
DECLARE @msg_usr NVARCHAR(200);
EXEC [dbo].[sp_Usuario_Medico_Guardar]
    @id_medico     = 15,
    @username      = N'erojas15',
    @password_hash = 'f6c06fff03f74199e71b8b32a9ed0c76a3ac64e050f591a07e7b7ce33d058a7a',
    @mensaje       = @msg_usr OUTPUT;
PRINT N'Usuario medico erojas15 -> ' + @msg_usr;
GO
DECLARE @msg_usr NVARCHAR(200);
EXEC [dbo].[sp_Usuario_Medico_Guardar]
    @id_medico     = 16,
    @username      = N'dmedina16',
    @password_hash = 'f6c06fff03f74199e71b8b32a9ed0c76a3ac64e050f591a07e7b7ce33d058a7a',
    @mensaje       = @msg_usr OUTPUT;
PRINT N'Usuario medico dmedina16 -> ' + @msg_usr;
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
GO
DECLARE @nuevo_turno_119 INT, @msg_turno_119 NVARCHAR(200);
EXEC [dbo].[sp_Turno_Asignar]
    @id_medico   = 17,
    @id_paciente = 24,
    @fecha_hora  = '2026-06-30 12:00:00',
    @nuevo_id    = @nuevo_turno_119 OUTPUT,
    @mensaje     = @msg_turno_119 OUTPUT;
PRINT N'Turno 2026-06-30 12:00:00 Dr/a Castro -> ' + @msg_turno_119;
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