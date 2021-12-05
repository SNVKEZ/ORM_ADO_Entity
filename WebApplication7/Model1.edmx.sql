
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 12/05/2021 05:47:13
-- Generated from EDMX file: C:\Users\Алексей\source\repos\WebApplication7\WebApplication7\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [CarsPeople];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'PeoplesSet'
CREATE TABLE [dbo].[PeoplesSet] (
    [IdPerson] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
    [Age] int  NOT NULL,
    [Job] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'CarsSet'
CREATE TABLE [dbo].[CarsSet] (
    [IdCar] int IDENTITY(1,1) NOT NULL,
    [Model] nvarchar(max)  NOT NULL,
    [Year] int  NOT NULL,
    [Country] nvarchar(max)  NOT NULL,
    [PeoplesIdPerson] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [IdPerson] in table 'PeoplesSet'
ALTER TABLE [dbo].[PeoplesSet]
ADD CONSTRAINT [PK_PeoplesSet]
    PRIMARY KEY CLUSTERED ([IdPerson] ASC);
GO

-- Creating primary key on [IdCar] in table 'CarsSet'
ALTER TABLE [dbo].[CarsSet]
ADD CONSTRAINT [PK_CarsSet]
    PRIMARY KEY CLUSTERED ([IdCar] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [PeoplesIdPerson] in table 'CarsSet'
ALTER TABLE [dbo].[CarsSet]
ADD CONSTRAINT [FK_PeoplesCars]
    FOREIGN KEY ([PeoplesIdPerson])
    REFERENCES [dbo].[PeoplesSet]
        ([IdPerson])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PeoplesCars'
CREATE INDEX [IX_FK_PeoplesCars]
ON [dbo].[CarsSet]
    ([PeoplesIdPerson]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------