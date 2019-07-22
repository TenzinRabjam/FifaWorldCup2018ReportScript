SELECT        
		dbo.WorldCupFinal.WinnerTeam, dbo.WorldCupFinal.RunnerUpTeam, dbo.WorldCupFinal.FinalScore, 
		dbo.WorldCupFinal.ManOfTheMatchFinal, dbo.TeamStats.TeamNumberOfWorldCups
FROM            
		dbo.TeamStats INNER JOIN dbo.Team 
		ON dbo.TeamStats.TeamStatsID = dbo.Team.TeamStatsID 
		CROSS JOIN dbo.WorldCupFinal