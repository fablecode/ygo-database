CREATE TABLE [dbo].[SubCategory]
(
	[Id]		 BIGINT IDENTITY(1,1) NOT NULL,
	[CategoryId] BIGINT NOT NULL,
	[Name]		 NVARCHAR(255) NOT NULL,
	[Created]	 DATETIME2(7) NOT NULL,
	[Updated]	 DATETIME2(7) NOT NULL,
	CONSTRAINT [PK_SubCategory] PRIMARY KEY CLUSTERED ([Id] ASC),
	CONSTRAINT [FK_SubCategory_Archetype] FOREIGN KEY ([CategoryId]) REFERENCES [Category]([Id]), 
)
