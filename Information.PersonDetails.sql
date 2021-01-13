CREATE TABLE [Information].[PersonDetails] (
    [PersonId]    NVARCHAR (9)  NOT NULL,
    [PersonName]  NVARCHAR (50) NOT NULL,
    [Email]       NVARCHAR (50) NULL,
    [BirthDate]   DATE          CONSTRAINT [Def_PersonDetails_BirthDate] DEFAULT (getdate()) NOT NULL,
    [Gender]      NVARCHAR (10) DEFAULT (' ') NULL,
    [PhoneNumber] NVARCHAR (10) NULL,
    CONSTRAINT [PK_NewPerson_PersonId] PRIMARY KEY CLUSTERED ([PersonId] ASC)
);

