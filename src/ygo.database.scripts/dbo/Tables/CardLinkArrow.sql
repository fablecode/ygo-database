CREATE TABLE [dbo].[CardLinkArrow] (
    [LinkArrowId] BIGINT NOT NULL,
    [CardId]      BIGINT NOT NULL,
    CONSTRAINT [PK_CardLinkArrow] PRIMARY KEY CLUSTERED ([LinkArrowId] ASC, [CardId] ASC),
    CONSTRAINT [FK_CardLinkArrow_Card] FOREIGN KEY ([CardId]) REFERENCES [dbo].[Card] ([Id]),
    CONSTRAINT [FK_CardLinkArrow_LinkArrow] FOREIGN KEY ([LinkArrowId]) REFERENCES [dbo].[LinkArrow] ([Id])
);

