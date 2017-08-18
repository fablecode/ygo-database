CREATE TABLE [dbo].[CardAttribute]
(
	[AttributeId] BIGINT NOT NULL,
	[CardId]	  BIGINT NOT NULL,
    CONSTRAINT [PK_CardAttributes] PRIMARY KEY ([AttributeId], [CardId]),
	CONSTRAINT [FK_CardAttributes_Attributes] FOREIGN KEY ([AttributeId]) REFERENCES [Attribute]([Id]), 
	CONSTRAINT [FK_CardAttributes_CardId] FOREIGN KEY ([CardId]) REFERENCES [Card]([Id]), 
)
