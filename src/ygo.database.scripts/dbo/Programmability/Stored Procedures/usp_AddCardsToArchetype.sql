
CREATE PROCEDURE usp_AddCardsToArchetype
	@ArchetypeId bigint,
	@TvpArchetypeCards [dbo].[tvp_ArchetypeCardsByCardName] READONLY
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRANSACTION

		-- Clear all cards for Archetype
		DELETE FROM 
			dbo.ArchetypeCard
		WHERE
			ArchetypeId = @ArchetypeId

		-- Add cards to Archetype
		MERGE dbo.ArchetypeCard AS Target
		USING 
		(
			SELECT 
				ac.*,
				c.Id AS CardId
			FROM 
				@TvpArchetypeCards ac
			INNER JOIN 
				dbo.Card c ON (ac.CardName = c.Name)
		) AS Source
		ON Target.ArchetypeId = Source.ArchetypeId AND Target.CardId = Source.CardId
		WHEN NOT MATCHED THEN
			INSERT (ArchetypeId, CardId)
			VALUES (Source.ArchetypeId, Source.CardId);

	COMMIT TRANSACTION