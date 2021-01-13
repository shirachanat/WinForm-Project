
CREATE PROCEDURE [Information].[NewPerson]  
@PersonId NVARCHAR (9),
@PersonName NVARCHAR (50),  
@Email NVARCHAR (50),  
@BirthDate date,
@Gender NVARCHAR (10),  
@PhoneNumber NVARCHAR (10)
AS  
BEGIN  
INSERT INTO [Information].[PersonDetails] (PersonId, PersonName, Email, BirthDate, Gender, PhoneNumber) VALUES (@PersonId, @PersonName, @Email, @BirthDate, @Gender, @PhoneNumber); 
END