USE [SIMPLE_ERP]
GO

CREATE TABLE PersonnelData
(
    Id UNIQUEIDENTIFIER Primary Key,
    FirstName nvarchar(200),
    MiddleName nvarchar(200),
    LastName nvarchar(200),
    Birthdate DATETIME,
    Race nvarchar(200),
    Position sysname,
    Department sysname,
    Location SYSNAME,
    Email nvarchar(300),
    HomePhone varchar(10),
    Cell varchar(10),
    BusinessPhone varchar(10),
    Street1 nvarchar(300),
    Street2 nvarchar(300),
    City nvarchar(300),
    State nvarchar(300),
    ZipCode nvarchar(10),
    SSN nvarchar(9),
    CONSTRAINT UQ_PersonnelData_SSN UNIQUE(SSN),
    CONSTRAINT UQ_PersonnelData_Email Unique(Email)
);

CREATE TABLE Code
(
    --Type varchar(200),
    Category nvarchar(200),
    ItemValue nvarchar(200)
);

-- categories include Race, State, EducationLevel, Positions, Departments, Locations