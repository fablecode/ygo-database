CREATE TABLE [dbo].[ArchetypeCard]
(
	[ArchetypeId] BIGINT NOT NULL,
	[CardId]	  BIGINT NOT NULL,
    CONSTRAINT [PK_ArchetypeCard] PRIMARY KEY ([ArchetypeId], [CardId]),
	CONSTRAINT [FK_ArchetypeCard_Archetype] FOREIGN KEY ([ArchetypeId]) REFERENCES [Archetype]([Id]), 
	CONSTRAINT [FK_ArchetypeCard_Card] FOREIGN KEY ([CardId]) REFERENCES [Card]([Id]), 
)


