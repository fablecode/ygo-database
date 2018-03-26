CREATE TABLE [dbo].[Archetype] (
    [Id]      BIGINT         NOT NULL,
    [Name]    NVARCHAR (255) NOT NULL,
    [Url]     VARCHAR (2083) NOT NULL,
    [Created] DATETIME2 (7)  NOT NULL,
    [Updated] DATETIME2 (7)  NOT NULL,
    CONSTRAINT [PK_Archetypes] PRIMARY KEY CLUSTERED ([Id] ASC)
);

