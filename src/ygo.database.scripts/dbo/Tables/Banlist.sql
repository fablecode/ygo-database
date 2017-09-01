CREATE TABLE [dbo].[Banlist] (
    [Id]          BIGINT         IDENTITY (1, 1) NOT NULL,
    [FormatId]    BIGINT         NOT NULL,
    [Name]        NVARCHAR (255) NOT NULL,
    [ReleaseDate] DATETIME       NOT NULL,
    [Created]     DATETIME2 (7)  NOT NULL,
    [Updated]     DATETIME2 (7)  NOT NULL,
    CONSTRAINT [PK_Banlists] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Banlist_Format] FOREIGN KEY ([FormatId]) REFERENCES [dbo].[Format] ([Id])
);

