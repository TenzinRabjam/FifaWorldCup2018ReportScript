-- =============================================
-- Author:		Tenzin
-- Create date: 8/6/2018
-- Description:	This trigger is to check if a Player
-- is in multiple clubs
-- =============================================
USE FifaWorldCupStatistics2018
GO

 --CREATE table PlayersMultipleClubs(
 --PlayerName varchar,
 --PlayerAddress varchar,
 --AlertDate  datetime default getdate(),
 --AlertType varchar(50),
 --AlertDescription varchar(225))

ALTER TRIGGER PlayersInMultipleClubs ON dbo.Player
	AFTER INSERT, UPDATE 
AS
BEGIN
	INSERT INTO dbo.PlayersMultipleClubs  
	SELECT A.PlayerName, A.PlayerAddress, GETDATE() as UpdatedDate, 'type - 19',   'Severity 19 Error'
	FROM Player I
	INNER JOIN Player A ON A.PlayerName = I.PlayerName 
	AND A.PlayerAddress = I.PlayerAddress 
	GROUP BY A.PlayerName, A.PlayerAddress 
	HAVING COUNT(*) > 1
END 
GO

--SELECT * FROM PlayersMultipleClubs;

