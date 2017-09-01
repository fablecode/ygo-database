CREATE TABLE [dbo].[ArchetypeCard] (
    [ArchetypeId] BIGINT NOT NULL,
    [CardId]      BIGINT NOT NULL,
    CONSTRAINT [PK_ArchetypeCard] PRIMARY KEY CLUSTERED ([ArchetypeId] ASC, [CardId] ASC),
    CONSTRAINT [FK_ArchetypeCard_Archetype] FOREIGN KEY ([ArchetypeId]) REFERENCES [dbo].[Archetype] ([Id]),
    CONSTRAINT [FK_ArchetypeCard_Card] FOREIGN KEY ([CardId]) REFERENCES [dbo].[Card] ([Id])
);

