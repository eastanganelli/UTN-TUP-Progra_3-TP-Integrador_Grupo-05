USE [DB_Clinica];
GO

-- Disable all FK constraints
EXEC sp_MSforeachtable 'ALTER TABLE ? NOCHECK CONSTRAINT ALL';
GO

-- Delete leaf → root (safe even with constraints disabled, but order explicit)
DELETE FROM [dbo].[Turno];
DELETE FROM [dbo].[HorarioMedico];
DELETE FROM [dbo].[Usuario];
DELETE FROM [dbo].[Paciente];
DELETE FROM [dbo].[Medico];
DELETE FROM [dbo].[Persona];
DELETE FROM [dbo].[Localidad];
DELETE FROM [dbo].[Especialidad];
DELETE FROM [dbo].[Provincia];

-- Reset all IDENTITY seeds to 0 (next insert gets 1)
DBCC CHECKIDENT ('[dbo].[Turno]',         RESEED, 0);
DBCC CHECKIDENT ('[dbo].[HorarioMedico]', RESEED, 0);
DBCC CHECKIDENT ('[dbo].[Usuario]',       RESEED, 0);
DBCC CHECKIDENT ('[dbo].[Paciente]',      RESEED, 0);
DBCC CHECKIDENT ('[dbo].[Medico]',        RESEED, 0);
DBCC CHECKIDENT ('[dbo].[Persona]',       RESEED, 0);
DBCC CHECKIDENT ('[dbo].[Localidad]',     RESEED, 0);
DBCC CHECKIDENT ('[dbo].[Especialidad]',  RESEED, 0);
DBCC CHECKIDENT ('[dbo].[Provincia]',     RESEED, 0);

-- Re-enable and validate all FK constraints
EXEC sp_MSforeachtable 'ALTER TABLE ? WITH CHECK CHECK CONSTRAINT ALL';
GO