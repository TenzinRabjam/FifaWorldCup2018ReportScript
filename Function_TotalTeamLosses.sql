

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
-- Description:	Total Team goals until 2018 WC
-- =============================================
CREATE FUNCTION [dbo].[TeamGoalsUntilWC]
(
	@teamID int
)
RETURNS TABLE 
AS
RETURN (

	Select  sum(TeamNumberOfGoals)  AS totalTeamGoalsUntilNow
	from TeamStats 
	join team on team.TeamStatsID = TeamStats.TeamStatsID 
	where Team.TeamID  = @teamID
)