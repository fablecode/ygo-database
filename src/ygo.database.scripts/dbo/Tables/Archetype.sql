CREATE TABLE [dbo].[Archetype] (
    [Id]              BIGINT         IDENTITY (1, 1) NOT NULL,
    [ArchetypeNumber] NVARCHAR (50)  NOT NULL,
    [Name]            NVARCHAR (255) NOT NULL,
    [Alias]           NVARCHAR (255) NOT NULL,
    [Created]         DATETIME2 (7)  NOT NULL,
    [Updated]         DATETIME2 (7)  NOT NULL,
    CONSTRAINT [PK_Archetypes] PRIMARY KEY CLUSTERED ([Id] ASC)
);

