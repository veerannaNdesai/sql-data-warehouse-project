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
