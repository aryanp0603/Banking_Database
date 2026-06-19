create database dummy_db; -- creating dummy database

show databases; -- showing database in server

use dummy_db; -- using database 

CREATE TABLE employees(
emp_id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(50) NOT NULL, 
last_name Varchar(50) Not Null, 
age INT Check(age>=18),
salary Decimal(10,2) Not null,
city varchar(50) Default 'Mumbai'
);

describe employees; -- describe table structure

ALTER TABLE employees rename to staff; -- changing table name

describe staff; -- describing table after changing table name

ALTER TABLE staff rename to employees; -- renaming the table name as previous

describe employees; -- describe table structure

-- Add Column
ALTER TABLE employees ADD Column phone int; -- adding phone column
describe employees; -- describe table structure

ALTER TABLE employees ADD COLUMN email Varchar(50); -- adding email column
describe employees; -- describe table structure

-- change column

ALTER TABLE employees
Change column phone contact int not null; -- changing column name
describe employees; -- describe table structure

-- modify column
ALTER TABLE employees 
Modify Column email Varchar(60) unique; -- modifying column constraints
describe employees; -- describe table structure

-- drop column
ALTER TABLE employees drop column email; -- deleting email column
describe employees; -- describe table structure

-- shifting towards bankingdb
use bankingdb;
show tables;

-- ADDING column
ALTER TABLE customers 
ADD column DateOfBirth Date;
describe customers;

-- Modify column customers
ALTER TABLE customers
Modify Column Phone Varchar(20); 
describe customers; -- describe table structure

-- Modify columnn accounts
ALTER TABLE accounts
Modify Balance DECIMAL(10, 2)
CHECK (Balance>= 1000);
describe accounts;






