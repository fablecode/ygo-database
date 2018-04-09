
CREATE PROCEDURE [dbo].[usp_AddCardsToArchetype]
	@ArchetypeId bigint,
	@TvpArchetypeCards [dbo].[tvp_ArchetypeCardsByCardName] READONLY
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRANSACTION

		DECLARE @ArchetypeCards TABLE
		(
			ArchetypeId bigint,
			CardId bigint
		)

		INSERT INTO @ArchetypeCards (ArchetypeId, CardId)
		SELECT 
			ac.ArchetypeId,
			c.Id AS CardId
		FROM 
			@TvpArchetypeCards ac
		INNER JOIN 
			dbo.Card c ON (ac.CardName = c.Name)

		-- Clear all cards for Archetype
		DELETE FROM 
			dbo.ArchetypeCard
		WHERE
			ArchetypeId = @ArchetypeId

		-- Add cards to Archetype
		MERGE dbo.ArchetypeCard AS Target
		USING @ArchetypeCards AS Source
		ON Target.ArchetypeId = Source.ArchetypeId AND Target.CardId = Source.CardId
		WHEN NOT MATCHED THEN
			INSERT (ArchetypeId, CardId)
			VALUES (Source.ArchetypeId, Source.CardId);

		SELECT * FROM @ArchetypeCards

	COMMIT TRANSACTION