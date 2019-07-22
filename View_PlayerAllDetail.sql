SELECT        
	dbo.Player.PlayerAge, dbo.Player.PlayerName, dbo.Player.PlayerClub, 
	dbo.Player.PlayerIndividualTrophies, dbo.Player.PlayerAddress, dbo.PlayerStats.PlayerNumberOfGoals,
	dbo.PlayerStats.PlayerNumberOfAssists, 
    dbo.PlayerStats.PlayerNumberOfWorldCups, dbo.PlayerStats.PlayerNumberFinalPosition, 
	dbo.PlayerStats.PlayerFifaRanking
FROM            
	dbo.Player INNER JOIN
    dbo.PlayerStats ON dbo.Player.PlayerID = dbo.PlayerStats.PlayerID