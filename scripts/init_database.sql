/*
Create Database and Schemas

Script Purpose:
This script creates a new database named 'DataWarehouse' after checking if it already exixts.
If the database exists, it is dropped and recreated. Additionally, the  script sets up three schemas
within the database: bronze, silver gold.

Warning: Before running this script have proper backups because this scripts drop thye entite database if it exists.
All data in nthe data warehouse will be permanently deleted.

*/

use master;
GO
-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO
-- Create Database DataWarehouse
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO
  
-- Create Schemas bronze, silver,gold
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
