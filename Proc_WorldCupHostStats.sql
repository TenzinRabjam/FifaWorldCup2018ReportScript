USE [FifaWorldCupStatistics2018]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Tenzin
-- Create date: 8/5/2018
-- Description:	Getting Team statistics of host team
-- through world cup team host
-- =============================================
ALTER PROCEDURE Get_Host_TeamStats

	 @hostTeamID int
AS
BEGIN
	SET NOCOUNT ON;

	SELECT Venue, TeamName, TeamCityBase, TeamFifaRanking, TeamNumberOfWC, TeamNumberOfPlayers,
		TeamCaptain 
	from WorldCupStats left join Team on Team.TeamID =  WorldCupStats.TeamID 
	left join WorldCupHost on WorldCupHost.WorldCupHostID = WorldCupStats.WorldCupHostID
	where WorldCupStats.TeamID = @HostTeamID
END

