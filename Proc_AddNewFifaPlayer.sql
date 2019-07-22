SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Tenzin
-- Create date: 8/5/2018
-- Description:	Inserting a new fifa affiliated 
--				player.
-- =============================================
CREATE PROCEDURE AddNewFifaPlayer
	@name varchar(50), 
	@age int,
	@club varchar(50),
	@trophies int,
	@address  varchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO Player (PlayerName,PlayerAge, PlayerClub, PlayerIndividualTrophies, PlayerAddress ) 
	VALUES(@name, @age, @club ,@trophies, @address)
END
GO
