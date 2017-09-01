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

MERGE dbo.Attribute AS Target
USING
(
	SELECT 
		* 
	FROM
	(
		VALUES
			(N'Dark',	GETDATE(), GETDATE()),
			(N'Divine', GETDATE(), GETDATE()),
			(N'Earth',	GETDATE(), GETDATE()),
			(N'Fire',	GETDATE(), GETDATE()),
			(N'Light',	GETDATE(), GETDATE()),
			(N'Water',	GETDATE(), GETDATE()),
			(N'Wind',	GETDATE(), GETDATE())

		
	)As s(Name, Created, Updated)
) As Source
ON 
	Target.Name = Source.Name
WHEN NOT MATCHED THEN
	INSERT (Name, Created, Updated)
	VALUES (Source.Name, Source.Created, Source.Updated);

PRINT (N'[dbo].[Attribute]: Insert Batch: 1.....Done!');
GO

DECLARE @MonsterCategoryId int,
		@SpellCategoryId int,
		@TrapCategoryId int

SET @MonsterCategoryId = (SELECT Id FROM Category c WHERE c.Name = N'Monster')
SET @SpellCategoryId = (SELECT Id FROM Category c WHERE c.Name = N'Spell')
SET @TrapCategoryId = (SELECT Id FROM Category c WHERE c.Name = N'Trap')

MERGE dbo.SubCategory AS Target
USING
(
	SELECT 
		* 
	FROM
	(
		VALUES
			(@MonsterCategoryId, N'Normal', 		GETDATE(), GETDATE()),
			(@MonsterCategoryId, N'Effect', 		GETDATE(), GETDATE()),
			(@MonsterCategoryId, N'Fusion', 		GETDATE(), GETDATE()),
			(@MonsterCategoryId, N'Ritual', 		GETDATE(), GETDATE()),
			(@MonsterCategoryId, N'Synchro', 	GETDATE(), GETDATE()),
			(@MonsterCategoryId, N'Xyz',     	GETDATE(), GETDATE()),
			(@MonsterCategoryId, N'Pendulum', 	GETDATE(), GETDATE()),
			(@MonsterCategoryId, N'Tuner', 		GETDATE(), GETDATE()),
			(@MonsterCategoryId, N'Gemini', 		GETDATE(), GETDATE()),
			(@MonsterCategoryId, N'Union', 		GETDATE(), GETDATE()),
			(@MonsterCategoryId, N'Spirit', 		GETDATE(), GETDATE()),
			(@MonsterCategoryId, N'Flip', 		GETDATE(), GETDATE()),
			(@MonsterCategoryId, N'Toon', 		GETDATE(), GETDATE()),
			(@MonsterCategoryId, N'Link', 		GETDATE(), GETDATE()),
			(@SpellCategoryId, N'Normal', 		GETDATE(), GETDATE()),
			(@SpellCategoryId, N'Quick-Play', 	GETDATE(), GETDATE()),
			(@SpellCategoryId, N'Continuous', 	GETDATE(), GETDATE()),
			(@SpellCategoryId, N'Ritual', 		GETDATE(), GETDATE()),
			(@SpellCategoryId, N'Equip', 		GETDATE(), GETDATE()),
			(@SpellCategoryId, N'Field', 		GETDATE(), GETDATE()),
			(@TrapCategoryId, N'Normal', 		GETDATE(), GETDATE()),
			(@TrapCategoryId, N'Continuous', 	GETDATE(), GETDATE()),
			(@TrapCategoryId, N'Counter', 	GETDATE(), GETDATE())
		
	)As s(CategoryId, Name, Created, Updated)
) As Source
ON 
	Target.Name = Source.Name
WHEN NOT MATCHED THEN
	INSERT (CategoryId, Name, Created, Updated)
	VALUES (Source.CategoryId, Source.Name, Source.Created, Source.Updated);

PRINT (N'[dbo].[SubCategory]: Insert Batch: 1.....Done!');
GO

MERGE [dbo].[Type] AS Target
USING
(
	SELECT 
		* 
	FROM
	(
		VALUES
			(N'Aqua', 			GETDATE(), GETDATE()),
			(N'Beast', 			GETDATE(), GETDATE()),
			(N'Beast-Warrior',  GETDATE(), GETDATE()),
			(N'Creator God', 	GETDATE(), GETDATE()),
			(N'Cyberse', 		GETDATE(), GETDATE()),
			(N'Dinosaur', 		GETDATE(), GETDATE()),
			(N'Divine-Beast', 	GETDATE(), GETDATE()),
			(N'Dragon', 		GETDATE(), GETDATE()),
			(N'Fairy', 			GETDATE(), GETDATE()),
			(N'Fiend', 			GETDATE(), GETDATE()),
			(N'Fish', 			GETDATE(), GETDATE()),
			(N'Insect', 		GETDATE(), GETDATE()),
			(N'Machine', 		GETDATE(), GETDATE()),
			(N'Plant', 			GETDATE(), GETDATE()),
			(N'Psychic', 		GETDATE(), GETDATE()),
			(N'Pyro', 			GETDATE(), GETDATE()),
			(N'Reptile', 		GETDATE(), GETDATE()),
			(N'Rock', 			GETDATE(), GETDATE()),
			(N'Sea Serpent', 	GETDATE(), GETDATE()),
			(N'Spellcaster', 	GETDATE(), GETDATE()),
			(N'Thunder', 		GETDATE(), GETDATE()),
			(N'Warrior', 		GETDATE(), GETDATE()),
			(N'Winged Beast', 	GETDATE(), GETDATE()),
			(N'Wyrm', 			GETDATE(), GETDATE()),
			(N'Zombie', 		GETDATE(), GETDATE())
		
	)As s(Name, Created, Updated)
) As Source
ON 
	Target.Name = Source.Name
WHEN NOT MATCHED THEN
	INSERT (Name, Created, Updated)
	VALUES (Source.Name, Source.Created, Source.Updated);

PRINT (N'[dbo].[Type]: Insert Batch: 1.....Done!');
GO

MERGE dbo.LinkArrow AS Target
USING
(
	SELECT 
		* 
	FROM
	(
		VALUES
			('Top-Left', GETDATE(), GETDATE()),
			('Top', GETDATE(), GETDATE()),
			('Top-Right', GETDATE(), GETDATE()),
			('Right', GETDATE(), GETDATE()),
			('Bottom-Right', GETDATE(), GETDATE()),
			('Bottom', GETDATE(), GETDATE()),
			('Bottom-Left', GETDATE(), GETDATE()),
			('Left', GETDATE(), GETDATE())
		
	) As s(Name, Created, Updated)
) As Source
ON 
	Target.Name = Source.Name
WHEN NOT MATCHED THEN
	INSERT (Name, Created, Updated)
	VALUES (Source.Name, Source.Created, Source.Updated);

PRINT (N'[dbo].[LinkArrow]: Insert Batch: 1.....Done!');
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

