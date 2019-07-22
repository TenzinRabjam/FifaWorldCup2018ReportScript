SELECT        
	dbo.WorldCupStats.WCFinalID, dbo.WorldCupStats.WorldCupTopScorer, 
	dbo.WorldCupStats.WorldCupBestPlayer, dbo.WorldCupStats.WorldCupGoldenGlove, 
	dbo.WorldCupStats.WorldCupTopAssister, 
    dbo.WorldCupFinal.WinnerTeam, dbo.WorldCupFinal.RunnerUpTeam, dbo.WorldCupFinal.FinalScore, 
	dbo.WorldCupFinal.ManOfTheMatchFinal, dbo.WorldCupHost.WorldCupFinalCrowd, dbo.WorldCupHost.Venue
FROM            
	dbo.WorldCupStats INNER JOIN 
    dbo.WorldCupFinal ON dbo.WorldCupStats.WCFinalID = dbo.WorldCupFinal.WCFinalID INNER JOIN
    dbo.WorldCupHost ON dbo.WorldCupStats.WorldCupHostID = dbo.WorldCupHost.WorldCupHostID