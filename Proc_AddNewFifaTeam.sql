SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Tenzin
-- Create date: 8/5/2018
-- Description:	Inserting a new fifa affiliated 
--				team.
-- =============================================
CREATE PROCEDURE AddNewFifaTeam
	@teamName varchar(50), 
	@teamCityBase varchar(50),
	@teamFifaRanking int,
	@teamNumberOfWC int,
	@teamNumberOfPlayers int,
	@teamStatsID int,
	@teamCaptain varchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO TEAM VALUES(@teamName, @teamCityBase, @teamFifaRanking, @teamNumberOfWC, @teamNumberOfPlayers,
							@teamStatsID, @teamCaptain)
END
GO
