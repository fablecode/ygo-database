CREATE TABLE [dbo].[CardType] (
    [TypeId] BIGINT NOT NULL,
    [CardId] BIGINT NOT NULL,
    CONSTRAINT [PK_CardType] PRIMARY KEY CLUSTERED ([TypeId] ASC, [CardId] ASC),
    CONSTRAINT [FK_CardType_Card] FOREIGN KEY ([CardId]) REFERENCES [dbo].[Card] ([Id]),
    CONSTRAINT [FK_CardType_Type] FOREIGN KEY ([TypeId]) REFERENCES [dbo].[Type] ([Id])
);

