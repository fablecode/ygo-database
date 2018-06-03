CREATE TABLE [dbo].[Limit] (
    [Id]          BIGINT         IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [Name]        NVARCHAR (255) NOT NULL,
    [Description] NVARCHAR (MAX) NOT NULL,
    [Created]     DATETIME2 (7)  NOT NULL,
    [Updated]     DATETIME2 (7)  NOT NULL,
    CONSTRAINT [PK_Limit] PRIMARY KEY CLUSTERED ([Id] ASC)
);

