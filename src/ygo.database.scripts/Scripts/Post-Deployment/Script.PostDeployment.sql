/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 All Sql Scripts must be runnable.				
--------------------------------------------------------------------------------------
*/

MERGE dbo.Category AS Target
USING
(
	SELECT 
		* 
	FROM
	(
		VALUES
			('Monster', GETDATE(), GETDATE()),
			('Spell', GETDATE(), GETDATE()),
			('Trap', GETDATE(), GETDATE())
		
	)As s(Name, Created, Updated)
) As Source
ON 
	Target.Name = Source.Name
WHEN NOT MATCHED THEN
	INSERT (Name, Created, Updated)
	VALUES (Source.Name, Source.Created, Source.Updated);

PRINT (N'[dbo].[Category]: Insert Batch: 1.....Done!');
GO

MERGE dbo.Format AS Target
USING
(
	SELECT 
		* 
	FROM
	(
		VALUES
			('Yu-Gi-Oh! Trading Card Game', N'TCG', GETDATE(), GETDATE()),
			('Yu-Gi-Oh! Official Card Game', N'OCG', GETDATE(), GETDATE()),
			('Traditional', N'Traditional', GETDATE(), GETDATE())
		
	)As s(Name, Acronym, Created, Updated)
) As Source
ON 
	Target.Name = Source.Name And 
	Target.Acronym = Source.Acronym
WHEN NOT MATCHED THEN
	INSERT (Name, Acronym, Created, Updated)
	VALUES (Source.Name, Source.Acronym, Source.Created, Source.Updated);

PRINT (N'[dbo].[Format]: Insert Batch: 1.....Done!');
GO

MERGE dbo.Limit AS Target
USING
(
	SELECT 
		* 
	FROM
	(
		VALUES
			('Forbidden', N'no copies are currently allowed. This status is only used in the TCG Advanced Format and in the OCG; Forbidden cards are changed to Limited in the TCG Traditional Format', GETDATE(), GETDATE()),
			('Limited', N'only one copy is currently allowed.', GETDATE(), GETDATE()),
			('Semi-Limited', N'up to two copies are currently allowed.', GETDATE(), GETDATE())
		
	)As s(Name, Description, Created, Updated)
) As Source
ON Target.Name = Source.Name
WHEN NOT MATCHED THEN
	INSERT (Name, Description, Created, Updated)
	VALUES (Source.Name, Source.Description, Source.Created, Source.Updated);

PRINT (N'[dbo].[Limit]: Insert Batch: 1.....Done!');
GO

MERGE dbo.AspNetRoles AS Target
USING
(
	SELECT 
		* 
	FROM
	(
		VALUES
			(1, Null, N'SuperAdmin', N'SuperAdmin'),
			(2, Null, N'Admin', N'Admin'),
			(3, Null, N'User', N'User')
		
	)As s(Id, ConcurrencyStamp, Name, NormalizedName)
) As Source
ON Target.Name = Source.Name
WHEN NOT MATCHED THEN
	INSERT (Id, ConcurrencyStamp, Name, NormalizedName)
	VALUES (Source.Id, Source.ConcurrencyStamp, Source.Name, Source.NormalizedName);

PRINT (N'[dbo].[AspNetRoles]: Insert Batch: 1.....Done!');

