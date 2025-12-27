/*
===================================
CREATE DATABASES AND SCHEMAS
===================================

SCRIPT PURPOSE - to check whether databse already exists or not and if yes drop and create a brand new database and 
use the created databse.
create new schemas/containers in the database names bronze,silver and gold to load the tables in here.

WARNING --
the script checks the existence of database if yes it deletes the entire data from the database. so please proceed with  
caution and keep go if you have thge backup data.


*/

-- DATA WAREHOUSE PROJECT

use master;
go 

-- drop database if exists in system
if exists(select 1 from sys.databases where name='Datawarehouse')
begin
	alter database Datawarehouse
	set single_user 
	with rollback immediate;
end
go 

-- create database brand new
create database Datawarehouse;
go 

use Datawarehouse;
go

-- create 3 schemas inside the database 
create schema Bronze;
go
create schema Silver;
go
create schema Gold;
