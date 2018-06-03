CREATE TABLE [dbo].[Ruling] (
    [Id]              BIGINT        IDENTITY (1, 1) NOT NULL,
    [RulingSectionId] BIGINT        NOT NULL,
    [Text]            VARCHAR (MAX) NOT NULL,
    [Created]         DATETIME2 (7) NOT NULL,
    [Updated]         DATETIME2 (7) NOT NULL,
    CONSTRAINT [PK_Ruling] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Ruling_RulingSection] FOREIGN KEY ([RulingSectionId]) REFERENCES [dbo].[RulingSection] ([Id])
);

