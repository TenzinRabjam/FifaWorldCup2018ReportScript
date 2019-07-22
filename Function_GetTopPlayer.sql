SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Tenzin
-- Create date: 8/5/2018
-- Description:	Getting Top Number of Players
-- =============================================
CREATE FUNCTION GetTopPlayers
(
	@numberOfTopPlayers int
)
RETURNS TABLE 
AS
RETURN 
(
	SELECT PlayerName, PlayerFifaRanking, PlayerAge, PlayerAddress,
	PlayerClub, PlayerNumberFinalPosition, PlayerNumberOfGoals, PlayerNumberOfAssists
	 from Player join PlayerStats 
	on  player.PlayerID = PlayerStats.PlayerID
	where PlayerFifaRanking <= @numberOfTopPlayers
)
GO
