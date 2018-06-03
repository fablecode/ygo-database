CREATE TABLE [dbo].[TriviaSection] (
    [Id]      BIGINT         IDENTITY (1, 1) NOT NULL,
    [CardId]  BIGINT         NOT NULL,
    [Name]    NVARCHAR (255) NOT NULL,
    [Created] DATETIME2 (7)  NOT NULL,
    [Updated] DATETIME2 (7)  NOT NULL,
    CONSTRAINT [PK_TriviaSection] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_TriviaSection_Card] FOREIGN KEY ([CardId]) REFERENCES [dbo].[Card] ([Id])
);

