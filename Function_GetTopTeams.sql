SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Tenzin
-- Create date: 8/5/2018
-- Description:	Getting Top Number of Teams
-- =============================================
CREATE FUNCTION GetTopTeams 
(	
	@numberOfTopTeams int 
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
		SELECT TeamName, TeamContinent, TeamFifaRanking, TeamCaptain, TeamNumberOfWorldCups
		from Team join TeamStats on TeamStats.TeamStatsID = Team.TeamStatsID 
		where TeamFifaRanking <= @numberOfTopTeams
)
GO

--Select * from GetTopTeams(5)
