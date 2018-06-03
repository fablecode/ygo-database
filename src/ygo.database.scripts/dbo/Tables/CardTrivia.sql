CREATE TABLE [dbo].[CardTrivia] (
    [Id]      BIGINT         IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [CardId]  BIGINT         NOT NULL,
    [Trivia]  NVARCHAR (MAX) NOT NULL,
    [Created] DATETIME2 (7)  NOT NULL,
    [Updated] DATETIME2 (7)  NOT NULL,
    CONSTRAINT [PK_CardTrivia] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CardTrivia_ToCard] FOREIGN KEY ([CardId]) REFERENCES [dbo].[Card] ([Id])
);

