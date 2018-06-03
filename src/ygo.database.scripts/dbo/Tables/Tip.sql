CREATE TABLE [dbo].[Tip] (
    [Id]           BIGINT        IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [TipSectionId] BIGINT        NOT NULL,
    [Text]         VARCHAR (MAX) NOT NULL,
    [Created]      DATETIME2 (7) NOT NULL,
    [Updated]      DATETIME2 (7) NOT NULL,
    CONSTRAINT [PK_Tip] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Tip_TipSection] FOREIGN KEY ([TipSectionId]) REFERENCES [dbo].[TipSection] ([Id])
);

