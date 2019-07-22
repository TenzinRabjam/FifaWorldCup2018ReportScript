SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Tenzin
-- Create date: 8/5/2018
-- Description:	Adding new WorldCup Host
-- =============================================
CREATE PROCEDURE AddNewWorldCupHost
	@venue varchar(100), 
	@numberOfStadiums int,
	@numberOfGames int,
	@worldCupFinalCrowd int
AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO WorldCupHost VALUES(@venue, @numberOfStadiums, @numberOfGames, @worldCupFinalCrowd)
END
GO
