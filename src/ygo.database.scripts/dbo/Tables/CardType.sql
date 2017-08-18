CREATE TABLE [dbo].[CardType]
(
	[TypeId] BIGINT NOT NULL,
	[CardId] BIGINT NOT NULL,
    CONSTRAINT [PK_CardType] PRIMARY KEY ([TypeId], [CardId]),
	CONSTRAINT [FK_CardType_Type] FOREIGN KEY ([TypeId]) REFERENCES [Type]([Id]), 
	CONSTRAINT [FK_CardType_Card] FOREIGN KEY ([CardId]) REFERENCES [Card]([Id]), 
)
