
CREATE PROCEDURE [Information].[DeletePerson]  
@PersonIdBeforeEdit NVARCHAR (9)
AS  
BEGIN  
BEGIN TRANSACTION  
DELETE FROM [PersonDetails] 
WHERE [PersonId] = @PersonIdBeforeEdit;  
COMMIT TRANSACTION  
END