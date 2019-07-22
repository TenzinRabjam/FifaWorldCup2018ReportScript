
create function playerInformation(
	@playerName AS VARCHAR(100)
)
RETURNS TABLE AS RETURN 
	SELECT 
	
	-- top 1

dbo.Player.PlayerName, dbo.Player.PlayerAge, dbo.Player.PlayerClub, 
dbo.Player.PlayerIndividualTrophies, dbo.PlayerStats.PlayerNumberOfGoals,
dbo.PlayerStats.PlayerNumberOfAssists, dbo.PlayerStats.PlayerNumberOfWorldCups
FROM dbo.Player
left join dbo.PlayerStats on dbo.PlayerStats.PlayerID = dbo.Player.PlayerID 
where dbo.Player.PlayerName = @playerName

--------------------------------------------------------------------------------------------------------

Create FUNCTION GetPlayersRanking 
(
	@playerID as int
)
RETURNS TABLE AS RETURN


SELECT 
Concat(dbo.Player.PlayerName,' ''s fifa ranking is ',dbo.PlayerStats.PlayerFifaRanking) as ActorsPrice 
from dbo.Player 
left join dbo.playerStats on dbo.playerStats.PlayerID = dbo.player.PlayerID
where dbo.Player.PlayerID = @playerID
	


