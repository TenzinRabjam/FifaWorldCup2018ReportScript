

USE [FifaWorldCupStatistics2018]
GO
/****** Object:  UserDefinedFunction [dbo].[GetPlayerTotalGA]    Script Date: 8/11/2018 4:59:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Tenzin
-- Create date: 8/5/2018
-- Description:	Total Team wins
-- =============================================
CREATE FUNCTION TotalTeamWins
(
	-- Add the parameters for the function here
	@teamID int
)
RETURNS int
AS
BEGIN

	DECLARE @ResultVar int = (Select  sum(TeamNumberOfWins)  
	from TeamStats 
	join team on team.TeamStatsID = TeamStats.TeamStatsID 
	where Team.TeamID  = @teamID)

	RETURN @ResultVar

END
