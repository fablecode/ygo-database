CREATE TABLE [dbo].[CardSubCategory]
(
	[SubCategoryId] BIGINT NOT NULL,
	[CardId]		BIGINT NOT NULL,
    CONSTRAINT [PK_CardSubCategory] PRIMARY KEY ([SubCategoryId], [CardId]),
    CONSTRAINT [FK_CardSubCategory_ToSubCategory] FOREIGN KEY ([SubCategoryId]) REFERENCES [SubCategory]([Id]), 
    CONSTRAINT [FK_CardSubCategory_ToCard] FOREIGN KEY ([CardId]) REFERENCES [Card]([Id])
)
