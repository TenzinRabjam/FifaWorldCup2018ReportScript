SELECT  
        dbo.Team.TeamName, dbo.Team.TeamCityBase, dbo.Team.TeamFifaRanking, 
		dbo.Team.TeamNumberOfPlayers, dbo.Team.TeamCaptain, dbo.TeamStats.TeamBestPlayer, 
		dbo.TeamStats.TeamFinalPosition
FROM            
		dbo.Team LEFT OUTER JOIN dbo.TeamStats 
		ON dbo.Team.TeamStatsID = dbo.TeamStats.TeamStatsID