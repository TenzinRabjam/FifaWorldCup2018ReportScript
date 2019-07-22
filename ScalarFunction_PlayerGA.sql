SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Tenzin
-- Create date: 8/5/2018
-- Description:	Getting Player GA
-- =============================================
CREATE FUNCTION GetPlayerTotalGA
(
	-- Add the parameters for the function here
	@playerID int
)
RETURNS int
AS
BEGIN

	DECLARE @ResultVar int = (Select PlayerNumberOfGoals + PlayerNumberOfAssists 
	from PlayerStats where PlayerID = @playerID)

	RETURN @ResultVar

END
GO


--Select GetPlayerTotalGA(45)     let 45 be the PlayerID of Cristiano Ronaldo