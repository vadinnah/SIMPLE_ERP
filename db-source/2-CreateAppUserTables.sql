USE [SIMPLE_ERP]
GO

CREATE TABLE Users
(    
    --Id UNIQUEIDENTIFIER PRIMARY KEY,
    Name sysname PRIMARY KEY,
    Password_hash VARBINARY(256) not null,
    Email nvarchar(300) not null,
    CONSTRAINT UQ_Users_Username UNIQUE(Name),
    CONSTRAINT UQ_Users_Email Unique(Email)
);

CREATE TABLE Roles
(
    --Id UNIQUEIDENTIFIER PRIMARY KEY,
    Name nvarchar(100),
    CONSTRAINT UQ_Roles_Name UNIQUE(Name)
);

CREATE TABLE UserRoles
(
    UserName sysname,
    RoleName nvarchar(100)
);
