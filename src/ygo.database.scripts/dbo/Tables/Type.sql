﻿CREATE TABLE [dbo].[Type]
(
	[Id]	  BIGINT IDENTITY(1,1) NOT NULL,
	[Name]	  NVARCHAR(255) NOT NULL,
	[Created] DATETIME NOT NULL,
	[Updated] DATETIME NOT NULL,
	CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED ([Id] ASC)
)