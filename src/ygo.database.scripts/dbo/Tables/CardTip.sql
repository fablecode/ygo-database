﻿CREATE TABLE [dbo].[CardTip] (
    [Id]      BIGINT         IDENTITY (1, 1) NOT NULL,
    [CardId]  BIGINT         NOT NULL,
    [Tip]     NVARCHAR (MAX) NOT NULL,
    [Created] DATETIME2 (7)  NOT NULL,
    [Updated] DATETIME2 (7)  NOT NULL,
    CONSTRAINT [PK_CardTip] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CardTip_ToCard] FOREIGN KEY ([CardId]) REFERENCES [dbo].[Card] ([Id])
);

