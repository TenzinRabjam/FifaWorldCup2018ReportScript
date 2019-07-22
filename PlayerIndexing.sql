IF OBJECT_ID('IndexingAndLockingTable') IS NOT NULL
BEGIN
  DROP TABLE IndexingAndLockingTable
END
GO
CREATE TABLE TeamPlayerClustering(ID   Int Identity(1,1) PRIMARY KEY, 
                       FirstName VarChar(250) NOT NULL DEFAULT NewID(),
                       LastName VarChar(250) NOT NULL DEFAULT NewID(),
                       [Address] VarChar(250) NOT NULL DEFAULT NewID(),
                       [Date] DateTime     NOT NULL DEFAULT GetDate())
GO
GO 
SET NOCOUNT ON 
GO
INSERT INTO TeamPlayerClustering DEFAULT VALUES 
GO 

CREATE NONCLUSTERED INDEX index_Test ON TeamPlayerClustering(FirstName, LastName, [Address])
GO

--INDEX SCAN 
SET STATISTICS IO ON
SELECT *
  FROM TeamPlayerClustering
WHERE FirstName like 'B%'
SET STATISTICS IO OFF

--KEY LOOKUP AND INDEX SEEK
SET STATISTICS IO ON
SELECT *
  FROM TeamPlayerClustering WITH(INDEX = index_Test)
WHERE FirstName like 'B%'
SET STATISTICS IO OFF

--TABLE SCAN
SELECT * FROM TeamPlayerClustering


--TABLE SORT
SELECT * FROM TeamPlayerClustering
ORDER BY [DATE] 