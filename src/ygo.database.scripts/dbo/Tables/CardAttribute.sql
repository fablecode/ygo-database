CREATE TABLE [dbo].[CardAttribute] (
    [AttributeId] BIGINT NOT NULL,
    [CardId]      BIGINT NOT NULL,
    CONSTRAINT [PK_CardAttributes] PRIMARY KEY CLUSTERED ([AttributeId] ASC, [CardId] ASC),
    CONSTRAINT [FK_CardAttributes_Attributes] FOREIGN KEY ([AttributeId]) REFERENCES [dbo].[Attribute] ([Id]),
    CONSTRAINT [FK_CardAttributes_CardId] FOREIGN KEY ([CardId]) REFERENCES [dbo].[Card] ([Id])
);

