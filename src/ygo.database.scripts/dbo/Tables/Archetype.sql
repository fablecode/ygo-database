CREATE TABLE [dbo].[Archetype] (
    [Id]      BIGINT         NOT NULL,
    [Name]    NVARCHAR (255) NOT NULL,
    [Alias]   NVARCHAR (255) NOT NULL,
    [Created] DATETIME2 (7)  NOT NULL,
    [Updated] DATETIME2 (7)  NOT NULL,
    CONSTRAINT [PK_Archetypes] PRIMARY KEY CLUSTERED ([Id] ASC)
);

