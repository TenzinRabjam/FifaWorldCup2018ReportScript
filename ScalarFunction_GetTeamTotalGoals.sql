SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Tenzin
-- Create date: 8/5/2018
-- Description:	Getting Team GA
-- =============================================
CREATE FUNCTION GetTeamTotalGoals 
(
	@TeamID int
)
RETURNS  int
AS
BEGIN
	DECLARE @totalGoals int = (Select sum(TeamNumberOfGoals) 
	from TeamStats join Team on Team.TeamStatsID = TeamStats.TeamStatsID 
	where TeamID = @TeamID)

	RETURN @totalGoals

END
GO

--Select GetTeamTotalGoals(1) let 1 be for Germany