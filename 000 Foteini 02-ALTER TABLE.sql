--02 ALTER TABLE

--ALTER TABLE statement
-- IBM Db2 on Cloud

/*
GENERAL THEORY:
The ALTER TABLE statement is used to 
--add a column to an existing table
--delete/drop a column from an existing table
--change/modify the datatype of a column in an existing table
--change/modify the name of a column in an existing table
--Add or remove keys
--Add or remove constraints
--In general,the ALTER TABLE statement changes the structure of an existing table
--Each row in the ALTER TABLE statement specifies one change we want to make to the table

GENERAL SYNTAX:
--add a column to an existing table
ALTER TABLE table_name
ADD COLUMN column_name data_type column_constraint;

--delete/drop a column from an existing table
ALTER TABLE table_name
DROP COLUMN column_name;

--change/modify the datatype of a column in an existing table
ALTER TABLE table_name
ALTER COLUMN column_name SET DATA TYPE data_type;

--change/modify the name of a column in an existing table
ALTER TABLE table_name
RENAME COLUMN current_column_name TO new_column_name;

--Add or remove key
--I have no syntax here!

--Add or remove constraints
--I have no syntax here!


EXAMPLE 1: add a column to a table
EXAMPLE 2: delete/drop a column from a table
EXAMPLE 3: change/modify the data type of a column in a table
EXAMPLE 4: change/modify the name of a column


--EXAMPLE 1: add a column to a table

--General syntax:
ALTER TABLE table_name
ADD column_name datatype column_constraint;

--1
CREATE TABLE Customers
(CustomerID int,CustomerName varchar(255) ,ContactName varchar(255),Address varchar(255),
City varchar(255),PostalCode int,Country varchar(255),Email varchar(255)
);
INSERT INTO 
SELECT *FROM Customers;

ALTER TABLE Customers
ADD Gender varchar(255);
SELECT *FROM Customers;

we already have the table Customers
we add to it the column Gender, which is of type varchar(255)
at this point column Email contains no data/values in its rows (null)

--2 
SELECT *FROM author;

ALTER TABLE author
ADD COLUMN telephone_number BIGINT
;
SELECT *FROM author;
we already have the table author
we add to it the column telephone_number, which is of type BIGINT which can hold a number up to 19

--3
SELECT *FROM  PETSALE;
ALTER TABLE PETSALE
ADD COLUMN QUANTITY INTEGER;

SELECT * FROM PETSALE;

here we add the column QUANTITY to the existing table PETSALE
also we define the datatype of the new column to be and INTEGER

--EXAMPLE 2: delete/drop a column from a table

--general syntax:
ALTER TABLE table_name
DROP COLUMN column_name;

--1
SELECT * FROM Customers;

ALTER TABLE Customers
DROP COLUMN Email;
SELECT * FROM Customers;
here we delete the column Email from the table Customers

--2
SELECT * FROM author;
ALTER TABLE author
DROP COLUMN telephone_number
;
SELECT * FROM author;
Here we delete the column telephone_number from the table author

--3
SELECT * FROM PETSALE;

ALTER TABLE PETSALE
DROP COLUMN PROFIT;
SELECT * FROM PETSALE;

here we delete/drop the column PROFIT from the table PETSALE

--EXAMPLE 3: change the datatype of a column in a table

--general syntax:
ALTER TABLE table_name  
ALTER COLUMN column_name SET DATA TYPE data_type;

--1

ALTER TABLE author
ADD COLUMN telephone_number INTEGER;
SELECT * FROM author;

ALTER TABLE author
ALTER COLUMN telephone_number  SET DATA TYPE CHAR(20)
;

--at first datatype for the column telephone_number is INTEGER
--then we alter the datatype into CHAR(20)
-- verify the change by looking at EXPLORE, Tables and Table Definition
--Attention when modifying the datatype of a column!
--Altering the data type of a column containing existing data can cause problems though if the existing data is not compatible with the new data type. For example, changing a column from the CHAR data type to a numeric data type will not work if the column already contains non-numeric data. If you try to do this, you will see an error message in the notification log and the statement will not run

2

ALTER TABLE PETSALE
ALTER COLUMN PET SET DATA TYPE VARCHAR(256);

--at first datatype for the column PET is VARCHAR(20)
--then we alter the datatype into VARCHAR(256)
-- verify the change by looking at EXPLORE, Tables and Table Definition




--EXAMPLE 4: change/modify the name of a column

--general syntax:
ALTER TABLE table_name  
RENAME COLUMN current_column_name TO new_column_name;

SELECT * FROM PETSALE;

ALTER TABLE PETSALE
RENAME COLUMN PET TO ANIMAL;
SELECT * FROM PETSALE;

--here we rename the column PET to ANIMAL





