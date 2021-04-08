WEEK 2 - RELATIONAL DATABASE CONCEPTS
2.1 Relational Database Concepts

Entity gets translated into a table
Attributes get translated into column headers
Attributes are linked to exactly one entity
Attributes are characteristics of the entity
When we add data values (in tuples or rows) under each column header, the table is complete
Each row is a record in the table (in the example book, each row concerns a specific book)

Types of data values are: characters, numbers, dates, currency etc.
(when characters vary in length we use VAR char, when not then char
Number = integer and decimal, timestamps=date and time)

Example: 	book is an entity/table
		title, edition, year, price, isbn, pages, aisle, description are attributes for book
		author is an entity/table
		lastname, firstname, email, city, country are attributes for author
		the entity book is related to entity author, since a book can have many authors
		
		a relational database is a collection of entities that are related to eachother

entity names, like author, author list, borrower, loan, and copy
The entity attributes will be the column headers of the tables
Primary Key
Each table is assigned a primary key. 
A primary key 
uniquely identifies a specific row in a table and prevents duplication of data 
provides a way of defining relationships between tables.
Foreign Key
Tables can also contain foreign keys which are primary keys defined in other tables, creating a link between the tables.

WEEK 2 - RELATIONAL DATABASE CONCEPTS
2.2 Create a Database Instance on Cloud

In order to learn SQL you will first need to have a database available to practice your SQL queries.
To do so, you will be creating a free instance of a database in the cloud and executing your SQL queries to it directly.

DBMS
DBMS (database management system)
DBMS is a set of software tools for the data in the database
The terms database, database server, database system, data server, and database management systems are often used interchangeably. 

RDBMS
RDBMS (relational database management system)
Examples of relational database management systems are:
1.	my SQL
2.	Oracle Database
3.	DB2 Warehouse
4.	and Db2 on Cloud. 

Attention: 	in this course we will use the RDBMS “Db2 on Cloud”
the database is in the Cloud and for me to be able to use it, I must create an instance of the database
Database services are logical abstractions for managing workloads in a database
An instance of the cloud database operates as a service that handles all application requests to work with the data in any of the databases managed by that instance
The database service instance is the target of the connection requests from application


A Cloud database is a database service built and accessed through a Cloud platform
Cloud database advantages
Ease of use
users can access Cloud databases from virtually anywhere using a vendor's API or web interface, or your own applications
Scalability
Cloud databases can expand and shrink their storage and compute capacities during runtime to accommodate changing needs and usage demands, so organizations only pay for what they actually use
Disaster recovery
In the event of a natural disaster or equipment failure or power outage, data is kept secure through backups on Remote Servers on Cloud in geographically distributed regions

examples of relational databases on Cloud include, IBM Db2 on Cloud, databases for PostgreSQL on IBM Cloud, Oracle Database Cloud Service, Microsoft Azure SQL Database, and Amazon Relational Database Services.

To run a database in Cloud, you must first provision an instance of the database service on the Cloud platform of your choice. An instance of a Database-as-a-Service or DBaaS provides users with access to database resources in Cloud without the need for setting up of the underlying hardware, installing the database software, and administering the database. The database service instance will hold your data in related tables. Once your data is loaded into the database instance, you can connect to the database instance using a web interface or APIs in your applications. Once connected, your application can send SQL queries across to the database instance. The database instance then resolves the SQL statements into operations against the data and objects in the database. Any data retrieved is returned to the application as a result set.

How a database instance is created for “IBM Db2 on Cloud”

From now on, the hands-on labs for this course require an environment for working with a relational database. 
To get you up and running quickly we will do so on the Cloud, so you don't have to worry about downloading or installing anything, rather, simply access your database from your web browser. 
IBM Cloud provides a large number of Data and Analytics services, including IBM Db2, a next generation SQL database. 
And best of all you can create a Lite account on IBM Cloud and provision an instance of Db2 (Lite Plan) at no charge, and without providing any credit card information.

Sign up for IBM Cloud
Create Db2 service instance
Get started with the Db2 console

WEEK 2 - RELATIONAL DATABASE CONCEPTS
2.3 Lab: IBM Cloud, Db2 Instance, Db2 Console

Sign up for IBM Cloud
Sign up for IBM Cloud at: cloud.ibm.com/registration

Create Db2 service instance
Ensure you are logged in to IBM Cloud and go to: cloud.ibm.com/catalog/services/db2
Location is London
Select a pricing plan, Lite
Then click on the Create button towards the lower-right of the page. It will spin for a few seconds (typically less than 30s) and then you should see a Service Created message indicating that your instance of Db2 was created successfully.

Get started with the Db2 console
Now that you have created your database instance, you need to know how to get to it, explore the console and start working with it.

To access your database instance, go to your IBM Cloud Resource List (you may need to log into IBM Cloud in the process) directly at: cloud.ibm.com/resources

Alternative: Go to your IBM Cloud dashboard (you may need to login to IBM Cloud in the process) at: cloud.ibm.com and click Services.

In the Resource list, expand the Services and locate and click on your instance of Db2 you provisioned in exercise 2 (the name typically starts with Db2-xx for example Db2-fk, Db2-50, etc.)
Resource list= Db2-xj
Open console
The Db2 console will open in a new tab in your web browser. Click on the 3-bar menu icon in the top left corner and then click on RUN SQL.
On the next screen click on Blank.
The SQL editor will open where you can start typing and running queries.

WEEK 2 - RELATIONAL DATABASE CONCEPTS
2.4 DDL and DML Statements

DDL statements are used to define, change, or drop database objects such as tables
CREATE
for creating tables and defining its columns
ALTER
for altering tables including adding and dropping columns and modifying their datatypes
TRUNCATE
for deleting data in a table but not the table itself
DROP
for deleting tables 

DML statements are used to read and modify data in tables

(CRUD operations, that is, Create, Read, Update and Delete rows in a table)
INSERT into table
for inserting a row or several rows of data into a table 
SELECT from table
reads or selects row or rows from a table 
UPDATE table
edits row or rows in a table
DELETE from table
removes a row or rows of data from a table

WEEK 2 - RELATIONAL DATABASE CONCEPTS
2.5 CREATE TABLE Statement

CREATE statement

Creates a table and its column headers
For the columns we define the datatype and optional parameters

The syntax is
CREATE TABLE table
(
Column1 datatype optionalparameters,
Column2 datatype,
Column3 datatype,
…
Column datatype
);
Example
CREATE TABLE provinces
(
id char(2) PRIMARY KEY NOT NULL,
name varchar(24)
);

Name of table is: provinces
Name of column1 is: id
Datatype of column1 is: char(2), character string of a fixed length=2
Name of column2 is: name
Datatype of column2 is: varchar(24), character string of a variable length up to 24


example
The name of the table is: AUTHOR
The columns of the table are: lastname, firstname, email, city, country
The Primary Key of the table is: author_id 
Primary key ensures that we do no have any duplicate values. 
Recall, the Primary Key of a relational table uniquely identifies each tuple (or row) in a table

CREATE TABLE author
(
author_id char(2) PRIMARY KEY NOT NULL,
lastname VARCHAR(15) NOT NULL, 
firstname VARCHAR(15) NOT NULL, 
email VARCHAR(40), 
city VARCHAR(15), 
country CHAR(2)
)

Here we define author_id as the Primary Key (it allows for the unique identification of each row in a table)
We define lastname as not null, which means that this cannot be left empty
We define firstname as not null, which means that this cannot be left empty

WEEK 2 - RELATIONAL DATABASE CONCEPTS
2.5 CREATE TABLE Statement

CREATE statement

Creates a table and its column headers
For the columns we define the datatype and optional parameters

The syntax is
CREATE TABLE table
(
Column1 datatype optionalparameters,
Column2 datatype,
Column3 datatype,
…
Column datatype
);
Example
CREATE TABLE provinces
(
id char(2) PRIMARY KEY NOT NULL,
name varchar(24)
);

Name of table is: provinces
Name of column1 is: id
Datatype of column1 is: char(2), character string of a fixed length=2
Name of column2 is: name
Datatype of column2 is: varchar(24), character string of a variable length up to 24


example
The name of the table is: AUTHOR
The columns of the table are: lastname, firstname, email, city, country
The Primary Key of the table is: author_id 
Primary key ensures that we do no have any duplicate values. 
Recall, the Primary Key of a relational table uniquely identifies each tuple (or row) in a table

CREATE TABLE author
(
author_id char(2) PRIMARY KEY NOT NULL,
lastname VARCHAR(15) NOT NULL, 
firstname VARCHAR(15) NOT NULL, 
email VARCHAR(40), 
city VARCHAR(15), 
country CHAR(2)
)

Here we define author_id as the Primary Key (it allows for the unique identification of each row in a table)
We define lastname as not null, which means that this cannot be left empty
We define firstname as not null, which means that this cannot be left empty

WEEK 2 - RELATIONAL DATABASE CONCEPTS
2.6 ALTER, DROP, TRUNCATE Tables


ALTER TABLE statement
Add or remove columns
Modify the datatype of columns
Add or remove keys
Add or remove constraints
The ALTER TABLE statement changes the structure of an existing table, for example to add, modify or drop columns

The general syntax is
ALTER TABLE table
ADD COLUMN column1 datatype
…
ADD COLUMN columnn datatype
;
Each row in the ALTER TABLE statement specifies one change we want to make to the table

Example
Use the ALTER TABLE statement to add a column 
To add a column named telephone number, to the author table 
ALTER TABLE author
ADD COLUMN telephone_number BIGINT
;

The name of the column is telephone_number
The datatype for that column is BIGINT which can hold a number up to 19

Example
Use the ALTER TABLE statement to modify the datatype of a column
So we will specify a new datatype for a specific column
General syntax
ALTER TABLE table
ALTER COLUMN column1 SET DATATYPE datatype
;

example
Here we have the datatype BIGINT for the column telephone_number
We want to change the datatype into CHAR(20) in order to be able to use dashes, parentheses etc.
So,
ALTER TABLE author
ALTER COLUMN telephone_number  SET DATATYPE CHAR(20)
;

Attention when modifying the datatype of a column!
Altering the data type of a column containing existing data can cause problems though if the existing data is not compatible with the new data type. For example, changing a column from the CHAR data type to a numeric data type will not work if the column already contains non-numeric data. If you try to do this, you will see an error message in the notification log and the statement will not run


ALTER TABLE statement and DROP COLUMN clause
To delete a column we do not need

General syntax 
ALTER TABLE table
DROP COLUMN column1
;

Example
Delete the column telephone_number
ALTER TABLE author
DROP COLUMN telephone_number
;

DROP TABLE statement
To delete a whole table
The table is deleted from the database
If you delete a table that contains data, by default the data will be deleted alongside the table.
The DROP TABLE statement deletes an existing table

General syntax
DROP TABLE table
;

Example 
DROP TABLE author
;

TRUNCATE TABLE statement
Delete the data from a table without deleting the table itself
You use the TRUNCATE TABLE statement to delete all of the rows in a table.
While you can use the DELETE statement without a WHERE clause to do this, it is generally quicker and more efficient to truncate the table instead.
TRUNCATE TABLE statement deletes all rows of data in a table

General syntax
TRUNCATE TABLE table
IMMEDIATE
;
The IMMEDIATE specifies to process the statement immediately and that it cannot be undone

example
to delete the data, to delete all rows in the table author but keep the table, we use the TRUNCATE TABLE statement
TRUNCATE TABLE author
IMMEDIATE
;

So we keep the table but without any data

WEEK 2 - RELATIONAL DATABASE CONCEPTS
2.7 Examples to CREATE and DROP tables

Here we will look at some examples to create and drop tables. 

In the previous video we saw the general syntax to create a table: 
create table TABLENAME 
( 
COLUMN1 datatype, COLUMN2 datatype, COLUMN3 datatype, ... 
);

Therefore to create a table called TEST with two columns - ID of type integer, and Name of type varchar, we could create it using the following SQL statement:
CREATE TABLE TEST
(
ID integer,
NAME varchar(30)
);

Now let's create a table called COUNTRY with an ID column, a two letter country code column, and a variable length country name column:
CREATE TABLE COUNTRY
(
ID int,
CCODE char(2),
NAME varchar(60)
);

Sometimes you may see additional keywords in a create table statement:
CREATE TABLE COUNTRY
(
ID int NOT NULL,
CCODE char(2),
NAME varchar(60),
PRIMARY KEY (ID)
);
In the above example the ID column has the NOT NULL constraint added after the datatype - meaning that it cannot contain a NULL or an empty value. 
If you look at the last row in the create table statement above you will note that we are using ID as a Primary Key and the database does not allow Primary Keys to have NULL values. 
A Primary Key is a unique identifier in a table, and using Primary Keys can help speed up your queries significantly. 

If the table you are trying to create already exists in the database, you will get an error indicating table XXX.YYY already exists. 
To circumvent this error, either create a table with a different name or first DROP the existing table. 
It is quite common to issue a DROP before doing a CREATE in test and development scenarios. Here is an example:
DROP TABLE COUNTRY;
CREATE TABLE COUNTRY
(ID integer PRIMARY KEY NOT NULL,
CCODE char(2),
NAME varchar(60)
);

WARNING: before dropping a table ensure that it doesn't contain important data that can't be recovered easily. 
Note that if the table does not already exist and you try to drop it, you will see an error like XXX.YYY is an undefined name. 
You can ignore this error as long as the subsequent CREATE statement executed successfully.

WEEK 2 - RELATIONAL DATABASE CONCEPTS
2.7 Examples to CREATE and DROP tables

Here we will look at some examples to create and drop tables. 

In the previous video we saw the general syntax to create a table: 
create table TABLENAME 
( 
COLUMN1 datatype, COLUMN2 datatype, COLUMN3 datatype, ... 
);

Therefore to create a table called TEST with two columns - ID of type integer, and Name of type varchar, we could create it using the following SQL statement:
CREATE TABLE TEST
(
ID integer,
NAME varchar(30)
);

Now let's create a table called COUNTRY with an ID column, a two letter country code column, and a variable length country name column:
CREATE TABLE COUNTRY
(
ID int,
CCODE char(2),
NAME varchar(60)
);

Sometimes you may see additional keywords in a create table statement:
CREATE TABLE COUNTRY
(
ID int NOT NULL,
CCODE char(2),
NAME varchar(60),
PRIMARY KEY (ID)
);
In the above example the ID column has the NOT NULL constraint added after the datatype - meaning that it cannot contain a NULL or an empty value. 
If you look at the last row in the create table statement above you will note that we are using ID as a Primary Key and the database does not allow Primary Keys to have NULL values. 
A Primary Key is a unique identifier in a table, and using Primary Keys can help speed up your queries significantly. 

If the table you are trying to create already exists in the database, you will get an error indicating table XXX.YYY already exists. 
To circumvent this error, either create a table with a different name or first DROP the existing table. 
It is quite common to issue a DROP before doing a CREATE in test and development scenarios. Here is an example:
DROP TABLE COUNTRY;
CREATE TABLE COUNTRY
(ID integer PRIMARY KEY NOT NULL,
CCODE char(2),
NAME varchar(60)
);

WARNING: before dropping a table ensure that it doesn't contain important data that can't be recovered easily. 
Note that if the table does not already exist and you try to drop it, you will see an error like XXX.YYY is an undefined name. 
You can ignore this error as long as the subsequent CREATE statement executed successfully.

WEEK 2 - RELATIONAL DATABASE CONCEPTS
2.8 Lab: CREATE, ALTER, TRUNCATE, DROP

In this lab, you will learn some commonly used DDL (Data Definition Language) statements of SQL. First you will learn the CREATE statement, which is used to create a new table in a database. Next, you will learn the ALTER statement which is used to add, delete, or modify columns in an existing table. Then, you will learn the TRUNCATE statement which is used to remove all rows from an existing table without deleting the table itself. Lastly, you will learn the DROP statement which is used to delete an existing table in a database.


How does the syntax of a CREATE statement look?

CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    column3 datatype,
   ....
);

How does the syntax of an ALTER statement look?

ALTER TABLE table_name
ADD COLUMN column_name data_type column_constraint;

ALTER TABLE table_name
DROP COLUMN column_name;

ALTER TABLE table_name
ALTER COLUMN column_name SET DATA TYPE data_type;

ALTER TABLE table_name
RENAME COLUMN current_column_name TO new_column_name;

How does the syntax of a TRUNCATE statement look?

TRUNCATE TABLE table_name;

How does the syntax of a DROP statement look?

DROP TABLE table_name;


Exercise 1: CREATE
In this exercise, you will use the CREATE statement to create two new tables using Db2.

You need to create two tables, PETSALE and PET. To create the two tables PETSALE and PET, copy the code below and paste it to the textbox of the Run SQL page. Click Run all.

CREATE TABLE PETSALE (
    ID INTEGER NOT NULL,
    PET CHAR(20),
    SALEPRICE DECIMAL(6,2),
    PROFIT DECIMAL(6,2),
    SALEDATE DATE
    );
    
CREATE TABLE PET (
    ID INTEGER NOT NULL,
    ANIMAL VARCHAR(20),
    QUANTITY INTEGER
    );

Now insert some records into the two newly created tables and show all the records of the two tables. Copy the code below and paste it to the textbox of the Run SQL page. Click Run all.

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

Exercise 2: ALTER
In this exercise, you will use the ALTER statement to add, delete, or modify columns in two of the existing tables created in exercise 1.

Task A: ALTER using ADD COLUMN
Add a new QUANTITY column to the PETSALE table and show the altered table. Copy the code below and paste it to the textbox of the Run SQL page. Click Run all.

ALTER TABLE PETSALE
ADD COLUMN QUANTITY INTEGER;

SELECT * FROM PETSALE;
Now update the newly added QUANTITY column of the PETSALE table with some values and show all the records of the table. Copy the code below and paste it to the textbox of the Run SQL page. Click Run all.

UPDATE PETSALE SET QUANTITY = 9 WHERE ID = 1;
UPDATE PETSALE SET QUANTITY = 3 WHERE ID = 2;
UPDATE PETSALE SET QUANTITY = 2 WHERE ID = 3;
UPDATE PETSALE SET QUANTITY = 6 WHERE ID = 4;
UPDATE PETSALE SET QUANTITY = 24 WHERE ID = 5;

SELECT * FROM PETSALE;


Task B: ALTER using DROP COLUMN
Delete the PROFIT column from the PETSALE table and show the altered table. Copy the code below and paste it to the textbox of the Run SQL page. Click Run all.

ALTER TABLE PETSALE
DROP COLUMN PROFIT;

SELECT * FROM PETSALE;

Task C: ALTER using ALTER COLUMN
Change the data type to VARCHAR(20) type of the column PET of the table PETSALE and show the altered table. Copy the code below and paste it to the textbox of the Run SQL page. Click Run all.

ALTER TABLE PETSALE
ALTER COLUMN PET SET DATA TYPE VARCHAR(20);

SELECT * FROM PETSALE;

Now verify if the data type of the column PET of the table PETSALE changed to VARCHAR(20) type or not. Click on the 3 bar menu icon in the top left corner and click Explore > Tables. Find the PETSALE table from Schemas by clicking Select All. Click on the PETSALE table to open the Table Definition page of the table. Here, you can see all the current data type of the columns of the PETSALE table.

Task D: ALTER using RENAME COLUMN
Rename the column PET to ANIMAL of the PETSALE table and show the altered table. Copy the code below and paste it to the textbox of the Run SQL page. Click Run all.

ALTER TABLE PETSALE
RENAME COLUMN PET TO ANIMAL;

SELECT * FROM PETSALE;


Exercise 3: TRUNCATE
In this exercise, you will use the TRUNCATE statement to remove all rows from an existing table created in exercise 1 without deleting the table itself.

Remove all rows from the PET table and show the empty table. Copy the code below and paste it to the textbox of the Run SQL page. Click Run all.

TRUNCATE TABLE PET IMMEDIATE;

SELECT * FROM PET;


Exercise 4: DROP
In this exercise, you will use the DROP statement to delete an existing table created in exercise 1.

Delete the PET table and verify if the table still exists or not (SELECT statement won't work if a table doesn't exist). Copy the code below and paste it to the textbox of the Run SQL page. Click Run all.

DROP TABLE PET;

SELECT * FROM PET;

WEEK 2 - RELATIONAL DATABASE CONCEPTS
2.9 Create and Load Tables using SQL Scripts

--Lab: Create Tables using SQL Scripts and Load Data into Tables from csv files
--IBM Db2 on Cloud

--you will learn how to run SQL scripts to create several tables at once, as well as how to load data into tables from .csv files.

--The database used in this lab is an internal database. 
--You will be working on a sample HR database. 
--This HR database schema consists of 5 tables called EMPLOYEES, JOB_HISTORY, JOBS, DEPARTMENTS and LOCATIONS.

--EXERCISE 1: Create tables using SQL scripts
--In this exercise, you will learn how to execute a script containing the CREATE TABLE commands for all the tables 
--rather than create each table manually by typing the DDL commands in the SQL editor.

--1. Download the script file to your computer:
-- (HR_Database_Create_Tables_Script.sql)
--2. connect to IBM Db2 on Cloud
--3. Click on the + (Add New Script) icon.
--4. Click on From file.
--5. Locate the file HR_Database_Create_Tables_Script.sql that you downloaded to your computer earlier and open it.
--6. Once the statements are in the SQL Editor tool , you can run the queries against the database by selecting the Run All button
--7. On the right side of the SQL editor window you will see a Result section. 
--Clicking on a query in the Result section will show the execution details of the job like whether it ran successfully, or had any errors or warnings. 
--Ensure your queries ran successfully and created all the tables.
--8. Now you can look at the tables you created. Navigate to the 3-bar menu icon in the top left corner, select Explore, and then click on Tables.
--9. Select the Schema corresponding to your Db2 userid
--10. Click on any of the tables and you will see its Table Definition (that is, its list of columns, data types, etc).


HR_Database_Create_Tables_Script.sql
------------------------------------------
--DDL statement for table 'HR' database--
--------------------------------------------

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










--EXERCISE 2: Load data into tables

--In this exercise, you will learn how data can be loaded into Db2. 
--You could manually insert each row into the table one by one, but that would take a long time. 
--Instead, Db2 (and almost every other database) allows you to load data from .CSV files.

--1. Download the 5 .csv files below to your local computer:
--Departments.csv
--Employees.csv
--Jobs.csv
--Locations.csv
--JobsHistory.csv
--2. In the Db2 Console, from the 3-bar menu icon in the top left corner, click Load, and then select Load Data.
--3. On the Load Data page that opens, ensure My Computer is selected as the source. Click on the browse files link.
--4.Choose the file Employees.csv that you downloaded to your computer and click Open.
--5.Once the File is selected, click Next in the bottom right corner.
--6. Select the schema for your Db2 Userid 
--7. It will show all the tables that have been created in this schema previously, including the Employees table. 
--Select the EMPLOYEES table, and in the new Table Definition tab that appears, choose Overwrite table with new data (note the warning message), then click Next.
--8.Since the source data files do not contain any rows with column labels, turn off the setting for Header in first row. 
--Also, click on the down arrow next to Date format and choose MM/DD/YYYY since that is how the date is formatted in the source file.
--9. Click Next. Review the load settings and click Begin Load in the bottom right corner.
--10. After loading has completed, you will notice that you were successful in loading all 10 rows of the Employees table. If there are any Errors or Warnings, you can see them on this screen.
--11. You can see the data that was loaded by clicking on View Table. 
--Alternatively, you can go to 3-bar menu icon > Explore > Tables and select the correct Schema. 
--Then click on the EMPLOYEES table. Click View Data at the bottom.
--12. Now it's your turn to load data to the remaining 4 tables of the HR database – LOCATIONS, JOB_HISTORY, JOBS, and DEPARTMENTS from the remaining source files.
--13. Click Load More Data and then follow the steps from Step 3 above again to load the remaining 4 tables. IMPORTANT Make sure you perform the steps in Step 8 for each of the 4 remaining file loads.

WEEK 2 - RELATIONAL DATABASE CONCEPTS
2.10 Practice Quiz

1.
Question 1
What is the function of a primary key?

The primary key is used to identify any rows in the table that contain NULL values.
The primary key uniquely identifies each row in a table. CORRECT
The primary key enables you to add data to columns.
The primary key is used to grant access to a table.

2.
Question 2
True or False: Data Manipulation Language statements like INSERT, SELECT, UPDATE, and DELETE are used to read and modify data.
True CORRECT
False

Explanation:
DDL statements are used to define, change, or drop database objects such as tables
DDL=create, alter, truncate, drop
DML statements are used to read and modify data in tables
DML= insert, select, update, delete
3.
Question 3
Data Definition Language (or DDL) statements are used to define, change, or delete database objects such as tables. Which of the following statements are all DDL statements? 
INSERT and UPDATE
SELECT and DELETE
CREATE, ALTER, DROP CORRECT
SELECT, INSERT, UPDATE

4.
Question 4
Which of the following queries will change the data type of an existing column (phone) to the varchar data type?
ALTER TABLE author ALTER COLUMN phone SET TYPE VARCHAR(20);
ALTER TABLE author ALTER COLUMN phone SET DATA TYPE VARCHAR(20); CORRECT
ALTER COLUMN phone SET DATA TYPE VARCHAR(20); 
ALTER TABLE author ALTER COLUMN phone DATA TYPE = VARCHAR(20);
Explanation:
General syntax is 
ALTER TABLE table_name
ALTER COLUMN column_name SET DATA TYPE data_type;

5.
Question 5
The five basic SQL commands are:

None of the above
CREATE, INSERT, RETRIEVE, MODIFY, DELETE
SELECT, COPY, PASTE, INSERT, ALTER
CREATE, SELECT, INSERT, UPDATE, DELETE correct

Explanation:
The 5 basic sql commands are: CREATE, INSERT, SELECT, UPDATE, DELETE

WEEK 2 - RELATIONAL DATABASE CONCEPTS
2.11 Graded Quiz

1.
Question 1
The primary key of a relational table uniquely identifies each _______ in a table.
Row CORRECT
column
relation
attribute

2.
Question 2
Which of the following statements about a database is/are correct?
A database is a logically coherent collection of data with some inherent meaning CORRECT
Data can only be added and queried from a database, but not modified.
Only SQL can be used to query data in a database.
All of the above

3.
Question 3
Attributes of an entity become ________ in a table.
rows
columns CORRECT
constraints
keys

4.
Question 4
What are the basic categories of the SQL language based on functionality?
Data Definition Language
Data Manipulation Language
Both of the above CORRECT
None of the above

5.
Question 5
The CREATE TABLE statement is a....
DML statement
DDL statement CORRECT
Both of the above

