
--01 CREATE TABLE

-- CREATE TABLE statement
-- IBM Db2 on Cloud

/*
GENERAL THEORY:
The CREATE TABLE statement creates a table and its column headers
For the columns, we define the datatype and the optional parameters
The table is created, it has columns but no rows and no data yet

The CREATE TABLE statement is used to create a new table in a database.
The column parameters specify the names of the columns of the table.
The datatype parameter specifies the type of data the column can hold (e.g. varchar, integer, date, etc.).

CREATE TABLE statement is a DDL statement
DDL statements are used to define, change, or drop database objects such as tables

After the CREATE TABLE statement we can use the INSERT INTO statement to insert some records into the two newly created table (the INSERT INTO statement adds rows to an existing table)


GENERAL SYNTAX:
CREATE TABLE table
(
Column1 datatype optionalparameters,
Column2 datatype,
Column3 datatype,
…
Columnn datatype
);

*/

/*
EXAMPLE 1: create a new table named "provinces"
EXAMPLE 2: create a new a table called "Persons" that contains five columns
EXAMPLE 3: create a copy of an existing table
EXAMPLE 4:create a table with 1 Primary Key and 5 columns
EXAMPLE 5:first DROP then CREATE a table
EXAMPLE 6: create two tables and then insert rows into them
EXAMPLE 7: Create tables using SQL scripts then add rows of data using CSV files

*/

-- EXAMPLE 1: create a new table named "provinces"

CREATE TABLE provinces
(
id char(2) PRIMARY KEY NOT NULL,
name varchar(24)
);
SELECT * FROM provinces; -- I am adding this line to display the table

--Name of table is: provinces 
--Name of column1 is: id
--we characterize column id as the Primary Key which ensures no duplicates records/rows exist.
--A Primary Key is a unique identifier in a table, and using Primary Keys can help speed up your queries significantly. 
--the database does not allow Primary Keys to have NULL values.
--NOT NULL is a constraint it means that it cannot contain a NULL or an empty value. 
--constraints are added after the datatype
--Datatype of column1 is: char(2), character string of a fixed length=2
--Name of column2 is: name
--Datatype of column2 is: varchar(24), character string of a variable length up to 24

 


--EXAMPLE 2: create a new a table called "Persons" that contains five columns: PersonID, LastName, FirstName, Address, and City:
DROP TABLE Persons;
CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);
INSERT INTO Persons VALUES
    (1,'Foteini', 'Rodi', 'Raisova 2', 'Prague');
    
SELECT * FROM Persons; -- I am adding this line to display the table

--The PersonID column is of type int and will hold an integer.
--The LastName, FirstName, Address, and City columns are of type varchar and will --hold characters, and the maximum length for these fields is 255 characters.
--Tip: The empty "Persons" table can now be filled with data with the SQL INSERT --INTO statement.




--EXAMPLE 3: create a copy of an existing table

--A copy of an existing table can also be created using CREATE TABLE.
--The new table gets the same column definitions. 
--All columns or specific columns can be selected.
--If you create a new table using an existing table, the new table will be filled --with the existing values from the old table.

/*
 * The general syntax is: (ATTENTION! IBM Db2 requires parentheses and another argument)

CREATE TABLE new_table_name AS
SELECT column1, column2,... FROM existing_table_name
WHERE ....;
 */

--Here, we create CopyOfPersons which is a copy of Persons table along with the data
DROP TABLE CopyOfPersons;
CREATE TABLE CopyOfPersons AS
(SELECT PersonID, LastName  FROM Persons) WITH DATA ;
 SELECT * FROM CopyOfPersons; -- I am adding this line to display the table
 
--Here, we create CopyOfPersons2 which is a copy of Persons table but does not contain data
DROP TABLE CopyOfPersons2;
CREATE TABLE CopyOfPersons2 AS
(SELECT PersonID, LastName  FROM Persons) DEFINITION ONLY ;
 SELECT * FROM CopyOfPersons2; -- I am adding this line to display the table


--EXAMPLE 4:create a table with 1 Primary Key and 5 columns

CREATE TABLE author
(
author_id char(2) PRIMARY KEY NOT NULL,
lastname VARCHAR(15) NOT NULL, 
firstname VARCHAR(15) NOT NULL, 
email VARCHAR(40), 
city VARCHAR(15), 
country CHAR(2)
);
SELECT * FROM author;

--The name of the table is: author
--The columns of the table are: lastname, firstname, email, city, country
--The Primary Key of the table is: author_id 
--Primary key ensures that we do no have any duplicate values. 
--Recall, the Primary Key of a relational table uniquely identifies each tuple (or row) in a table
--Here we define author_id as the Primary Key (it allows for the unique identification of each row in a table)
--We define lastname as not null, which means that this cannot be left empty
--We define firstname as not null, which means that this cannot be left empty




--EXAMPLE 5:first DROP then CREATE a table

--If the table you are trying to create already exists in the database, you will get an error indicating table x already exists
--It is quite common to issue a DROP before doing a CREATE in test and development scenarios. 
--Here is an example:

DROP TABLE COUNTRY;
CREATE TABLE COUNTRY
(ID integer PRIMARY KEY NOT NULL,
CCODE char(2),
NAME varchar(60)
);
SELECT * FROM COUNTRY;

--WARNING: before dropping a table ensure that it doesn't contain important data that can't be recovered easily. 
--Note that if the table does not already exist and you try to drop it, you will see an error like X is an undefined name. 
--You can ignore this error as long as the subsequent CREATE statement executed successfully.




--EXAMPLE 6: create two tables (table and column headers) and then insert rows into them (rows with data under each column header)

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

INSERT INTO PETSALE VALUES
    (1,'Cat',450.09,100.47,'2018-05-29'),
    (2,'Dog',666.66,150.76,'2018-06-01'),
    (3,'Parrot',50.00,8.9,'2018-06-04'),
    (4,'Hamster',60.60,12,'2018-06-11'),
    (5,'Goldfish',48.48,3.5,'2018-06-14');
    
INSERT INTO PET VALUES
    (1,'Cat',3),
    (2,'Dog',4),
    (3,'Hamster',2);
    
SELECT * FROM PETSALE;
SELECT * FROM PET;



--EXAMPLE 7: Create tables using SQL scripts then add rows of data using CSV files
--here I will not type commands to create a table
--instead I will use an existing sql script that already contains the commands
--1- Download HR_Database_Create_Tables_Script.sql to your computer
--2-Click on the + (Add New Script) icon then From file
--3-open the sql script in the SQL Editor tool

-- Drop the tables in case they exist

DROP TABLE EMPLOYEES;
DROP TABLE JOB_HISTORY;
DROP TABLE JOBS;
DROP TABLE DEPARTMENTS;
DROP TABLE LOCATIONS;

-- Create the tables

CREATE TABLE EMPLOYEES (
                          EMP_ID CHAR(9) NOT NULL,
                          F_NAME VARCHAR(15) NOT NULL,
                          L_NAME VARCHAR(15) NOT NULL,
                          SSN CHAR(9),
                          B_DATE DATE,
                          SEX CHAR,
                          ADDRESS VARCHAR(30),
                          JOB_ID CHAR(9),
                          SALARY DECIMAL(10,2),
                          MANAGER_ID CHAR(9),
                          DEP_ID CHAR(9) NOT NULL,
                          PRIMARY KEY (EMP_ID)
                        );

CREATE TABLE JOB_HISTORY (
                            EMPL_ID CHAR(9) NOT NULL,
                            START_DATE DATE,
                            JOBS_ID CHAR(9) NOT NULL,
                            DEPT_ID CHAR(9),
                            PRIMARY KEY (EMPL_ID,JOBS_ID)
                          );

CREATE TABLE JOBS (
                    JOB_IDENT CHAR(9) NOT NULL,
                    JOB_TITLE VARCHAR(15) ,
                    MIN_SALARY DECIMAL(10,2),
                    MAX_SALARY DECIMAL(10,2),
                    PRIMARY KEY (JOB_IDENT)
                  );

CREATE TABLE DEPARTMENTS (
                            DEPT_ID_DEP CHAR(9) NOT NULL,
                            DEP_NAME VARCHAR(15) ,
                            MANAGER_ID CHAR(9),
                            LOC_ID CHAR(9),
                            PRIMARY KEY (DEPT_ID_DEP)
                          );

CREATE TABLE LOCATIONS (
                          LOCT_ID CHAR(9) NOT NULL,
                          DEP_ID_LOC CHAR(9) NOT NULL,
                          PRIMARY KEY (LOCT_ID,DEP_ID_LOC)
                        );

SELECT * FROM  EMPLOYEES;
SELECT * FROM JOB_HISTORY;
SELECT * FROM JOBS;
SELECT * FROM DEPARTMENTS;
SELECT * FROM LOCATIONS;

--4-Run the sql script and look at the "Show Results" section
--I have added the SELECT*FROM tablename to see each table in the Results
--I can see each able also by using the 3-bar menu icon
--Attention: viewing the table 1) in the Results and 2) in EXPLORE, is different!
--Go to the the 3-bar menu icon
--select EXPLORE then Tables, then choose my Schema(my Db2 userid) TJD21977
--e.g. I select the table DEPARTMENTS
--I see the TABLE DEFINITION (COLUMN NAME, DATA TYPE, NULLABLE, LENGTH, SCALE)
--what is SCALE? maximum number of digits to the right of the decimal point. 
--5-Now I have five tables created with column headers but no rows with data
--I will not type the data but I will use data that are already available 
--I can add ("load") data to these tables by using csv files
--Download the 5 .csv files below to your local computer:
--Departments.csv
--Employees.csv
--Jobs.csv
--Locations.csv
--JobsHistory.csv
--Attention: Please take a look at the source csv file first!
--do the rows have Column Labels? 
--If not turn off the setting for Header in first row.
--Attention: Please check the date format in the CSV file!
--Go to the the 3-bar menu icon
--select LOAD then Load Data
--ensure My Computer is selected as the source
--Browse Files
--choose Employees.csv and Open and Next
--at Select a load target,Select the schema for your Db2 Userid: TJD21977
--we see all tables created by TJD21977, we select Employees
--choose Overwrite table with new data then Next
--the source csv file does not contain column headers, so I de-activate Header in first row
--the date format in the source csv file was mm-dd-yy, choose same
--then Next and I see the Review Settings, choose "begin Load"
--3 rows rejected
--The syntax of the string representation of a datetime value is incorrect
-- csv 01/09/1976
-- sql table loaded 1976-09-01
--MISTAKE solved: mm/dd/yyyy
--The data load job succeeded.

