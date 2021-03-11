 /*
  * WEEK 2 Lab : CREATE, ALTER, TRUNCATE, DROP
  *  IBM Db2 on Cloud
  * 
  * In this lab, you will learn some commonly used DDL (Data Definition Language) statements of SQL. 
  * First you will learn the CREATE statement, which is used to create a new table in a database. 
  * Next, you will learn the ALTER statement which is used to add, delete, or modify columns in an existing table. 
  * Then, you will learn the TRUNCATE statement which is used to remove all rows from an existing table without deleting the table itself. 
  * Lastly, you will learn the DROP statement which is used to delete an existing table in a database.
  * 
  * /
  * 
  How does the syntax of a CREATE statement look?
  
CREATE TABLE table_name             -- create a new table in a database
(
    column1 datatype,
    column2 datatype,
    column3 datatype,
   ....
);

How does the syntax of an ALTER statement look?

ALTER TABLE table_name  --add, delete, or modify columns in an existing table
ADD COLUMN column_name data_type column_constraint;

ALTER TABLE table_name -- delete a column
DROP COLUMN column_name;

ALTER TABLE table_name  --modify the datatype of a column
ALTER COLUMN column_name SET DATA TYPE data_type;

ALTER TABLE table_name  --modify the name of a column      
RENAME COLUMN current_column_name TO new_column_name;

How does the syntax of a TRUNCATE statement look?

TRUNCATE TABLE table_name; --removes data from rows, tables stays, columns stay, emrpy rows stay

How does the syntax of a DROP statement look?

DROP TABLE table_name; --delete a table completely
  * 
  * 
  */
 --Exercise 1: CREATE
 --use the CREATE statement to create two new tables PETSALE and PET and their columns
CREATE TABLE PETSALE 
(
    ID INTEGER NOT NULL,
    PET CHAR(20),
    SALEPRICE DECIMAL(6,2),
    PROFIT DECIMAL(6,2),
    SALEDATE DATE
    );
    
CREATE TABLE PET 
(
    ID INTEGER NOT NULL,
    ANIMAL VARCHAR(20),
    QUANTITY INTEGER
    ); 
 
 --insert some records into the two newly created tables and show all the records of the two tables
--use the INSERT INTO statement to insert rows with data to the tables\
--there are 2 syntaxes to insert rows to a table
--1. Specify both the column names and the values to be inserted:
--INSERT INTO table_name (column1, column2, column3, ...)
--VALUES (value1, value2, value3, ...);
--2. If you are adding values for all the columns of the table, you do not need to specify the column names in the SQL query. 
--However, make sure the order of the values is in the same order as the columns in the table.
--INSERT INTO table_name
--VALUES (value1, value2, value3, ...);
 
INSERT INTO PETSALE 
VALUES
    (1,'Cat',450.09,100.47,'2018-05-29'),
    (2,'Dog',666.66,150.76,'2018-06-01'),
    (3,'Parrot',50.00,8.9,'2018-06-04'),
    (4,'Hamster',60.60,12,'2018-06-11'),
    (5,'Goldfish',48.48,3.5,'2018-06-14');
    
INSERT INTO PET 
VALUES
    (1,'Cat',3),
    (2,'Dog',4),
    (3,'Hamster',2);
    
SELECT * FROM PETSALE; -- add this line to display the table
SELECT * FROM PET; -- add this line to display the table
 
 --Exercise 2: ALTER
 --use the ALTER statement to alter (add, delete, modify columns, their datatypes, their constraints)
 --Add a new QUANTITY column to the PETSALE table and show the altered table
 ALTER TABLE PETSALE
ADD COLUMN QUANTITY INTEGER; --I added the column quantity and its datatype integer

SELECT * FROM PETSALE;
 
 --Now update the newly added QUANTITY column of the PETSALE table with some values and show all the records of the table
 --UPDATE, Updates/modifies the values in rows of an existing table based on a WHERE condition
UPDATE PETSALE SET QUANTITY = 9 WHERE ID = 1;
UPDATE PETSALE SET QUANTITY = 3 WHERE ID = 2;
UPDATE PETSALE SET QUANTITY = 2 WHERE ID = 3;
UPDATE PETSALE SET QUANTITY = 6 WHERE ID = 4;
UPDATE PETSALE SET QUANTITY = 24 WHERE ID = 5;

SELECT * FROM PETSALE;-- add this line to display the table
 
 --Delete the PROFIT column from the PETSALE table and show the altered table
ALTER TABLE PETSALE
DROP COLUMN PROFIT;

SELECT * FROM PETSALE;-- add this line to display the table
 
 --Change the data type to VARCHAR(20) type of the column PET of the table PETSALE and show the altered table
ALTER TABLE PETSALE
ALTER COLUMN PET SET DATA TYPE VARCHAR(20);

SELECT * FROM PETSALE; --add this line to display the table
 
 --Now verify if the data type of the column PET of the table PETSALE changed to VARCHAR(20) type or not
 --Click on the 3 bar menu icon in the top left corner and click Explore > Tables. 
 --Find the PETSALE table from Schemas by clicking Select All. 
 --Click on the PETSALE table to open the Table Definition page of the table. 
 --Here, you can see all the current data type of the columns of the PETSALE table.
 -- ok I confirmed it
 
--Rename the column PET to ANIMAL of the PETSALE table and show the altered table 
ALTER TABLE PETSALE
RENAME COLUMN PET TO ANIMAL;

SELECT * FROM PETSALE; --add this line to display the table
 
--Exercise 3: TRUNCATE 

--use the TRUNCATE statement to remove all rows from an existing table created in exercise 1 without deleting the table itself.
--Remove all rows from the PET table and show the empty table
TRUNCATE TABLE PET IMMEDIATE;

SELECT * FROM PET;--add this line to display the table

--Exercise 4: DROP

--use the DROP statement to delete an existing table created in exercise 1
--Delete the PET table and verify if the table still exists or not 
--(SELECT statement won't work if a table doesn't exist)

DROP TABLE PET;

SELECT * FROM PET;--add this line to display the table, it will not and thats how we verify the deletion

-- SELECT * FROM PET failed

