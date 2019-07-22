SELECT        
	dbo.TeamStats.TeamNumberOfPlayers, dbo.Team.TeamName AS Host, dbo.Team.TeamFifaRanking, 
	dbo.Team.TeamNumberOfPlayers AS Expr1, dbo.TeamStats.TeamNumberOfWorldCups, 
	dbo.TeamStats.TeamNumberOfWins, 
    dbo.TeamStats.TeamNumberOfLosses, dbo.TeamStats.TeamNumberOfGoals, 
	dbo.TeamStats.TeamFinalPosition
FROM            
	dbo.WorldCupHost LEFT OUTER JOIN
    dbo.WorldCupStats ON dbo.WorldCupHost.WorldCupHostID = dbo.WorldCupStats.WorldCupHostID RIGHT OUTER JOIN
    dbo.Team INNER JOIN
    dbo.TeamStats ON dbo.Team.TeamStatsID = dbo.TeamStats.TeamStatsID ON dbo.WorldCupStats.TeamID = dbo.Team.TeamID