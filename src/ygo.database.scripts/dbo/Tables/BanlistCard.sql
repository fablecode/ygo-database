CREATE TABLE [dbo].[BanlistCard]
(
	[BanlistId] BIGINT NOT NULL,
	[CardId]	BIGINT NOT NULL,
	[LimitId]	BIGINT NOT NULL, 
    CONSTRAINT [PK_BanlistCard] PRIMARY KEY ([BanlistId], [CardId]),
    CONSTRAINT [FK_BanlistCard_ToBanlist] FOREIGN KEY ([BanlistId]) REFERENCES [Banlist]([Id]), 
    CONSTRAINT [FK_BanlistCard_ToCard] FOREIGN KEY ([CardId]) REFERENCES [Card]([Id]), 
    CONSTRAINT [FK_BanlistCard_ToLimit] FOREIGN KEY ([LimitId]) REFERENCES [Limit]([Id]), 
)
