CREATE TABLE [dbo].[Limit] (
    [Id]          BIGINT         IDENTITY (1, 1) NOT NULL,
    [Name]        NVARCHAR (255) NOT NULL,
    [Description] NVARCHAR (MAX) NOT NULL,
    [Created]     DATETIME       NOT NULL,
    [Updated]     DATETIME       NOT NULL,
    CONSTRAINT [PK_Limit] PRIMARY KEY CLUSTERED ([Id] ASC)
);