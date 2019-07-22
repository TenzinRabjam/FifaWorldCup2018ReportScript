-- =============================================
-- Author:		Tenzin
-- Create date: 8/6/2018
-- Description:	This trigger is to check if a team
--				is exceeding Fifa limit of 25 players
--				in a team.
-- =============================================
USE FifaWorldCupStatistics2018
GO

 --CREATE table TeamsRepeating(
 --teamName varchar,
 --teamCaptain varchar,
 --AlertDate  datetime default getdate(),
 --AlertType varchar(50),
 --AlertDescription varchar(225))

CREATE TRIGGER FifaNumberOfPlayersRestriction ON dbo.Team
	AFTER INSERT, UPDATE 
AS
BEGIN
	INSERT INTO TeamsRepeating  
	SELECT A.TeamName, A.TeamCaptain, GETDATE() as UpdatedDate, 'type - 19',   'Severity 19 Error'
	FROM Team I
	INNER JOIN Team A ON A.TeamName = I.TeamName 
	AND A.TeamCaptain = I.TeamCaptain 
	WHERE A.TeamNumberOfPlayers > 25
	GROUP BY A.TeamName, A.TeamCaptain 
	
END 
GO

--SELECT * FROM TeamsRepeating;

