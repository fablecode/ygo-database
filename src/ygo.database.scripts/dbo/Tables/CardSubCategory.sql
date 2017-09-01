CREATE TABLE [dbo].[CardSubCategory] (
    [SubCategoryId] BIGINT NOT NULL,
    [CardId]        BIGINT NOT NULL,
    CONSTRAINT [PK_CardSubCategory] PRIMARY KEY CLUSTERED ([SubCategoryId] ASC, [CardId] ASC),
    CONSTRAINT [FK_CardSubCategory_ToCard] FOREIGN KEY ([CardId]) REFERENCES [dbo].[Card] ([Id]),
    CONSTRAINT [FK_CardSubCategory_ToSubCategory] FOREIGN KEY ([SubCategoryId]) REFERENCES [dbo].[SubCategory] ([Id])
);

