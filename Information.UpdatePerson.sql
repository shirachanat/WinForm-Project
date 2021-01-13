CREATE PROCEDURE [Information].[UpdatePerson]  
@PersonIdBeforeEdit NVARCHAR (9),
@PersonId NVARCHAR (9),
@PersonName NVARCHAR (50),  
@Email NVARCHAR (50),  
@BirthDate date,
@Gender NVARCHAR (10),  
@PhoneNumber NVARCHAR (10) 
AS  
BEGIN  
BEGIN TRANSACTION  
UPDATE Information.PersonDetails
   SET PersonId = @PersonId,  
      PersonName = @PersonName,  
	  Email=@Email,
	  BirthDate=@BirthDate,
	  Gender=@Gender,
	  PhoneNumber=@PhoneNumber
WHERE PersonId = @PersonIdBeforeEdit;  
COMMIT TRANSACTION  
END