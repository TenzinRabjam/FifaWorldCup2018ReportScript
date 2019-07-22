SELECT        
		dbo.Team.TeamName, dbo.Team.TeamFifaRanking, dbo.Team.TeamNumberOfWC, 
		dbo.Team.TeamNumberOfPlayers, dbo.Team.TeamCaptain, dbo.TeamStats.TeamNumberOfPlayers AS Expr1, 
        dbo.TeamStats.TeamNumberOfWorldCups, dbo.TeamStats.TeamNumberOfWins, 
		dbo.TeamStats.TeamNumberOfLosses, dbo.TeamStats.TeamNumberOfGoals, dbo.TeamStats.TeamFinalPosition
FROM            
		dbo.TeamStats INNER JOIN dbo.Team 
		ON dbo.TeamStats.TeamStatsID = dbo.Team.TeamStatsID