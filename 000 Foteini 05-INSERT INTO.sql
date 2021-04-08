--05 INSERT INTO

-- INSERT INTO statement
-- IBM Db2 on Cloud

/*
GENERAL THEORY:
After a table is created, it needs to be populated with data (so, after CREATE TABLE we use INSERT INTO or we can load a csv file)
To insert data into a table, we use the INSERT statement (we type data with INSERT INTO but we can load data from a csv file)
the INSERT INTO statement inserts new rows with data to an existing table
Inserts rows with data to populate the table
We use this statement in a table that already exists
First we define the columns within parentheses
then use the keyword VALUES and write the data for each column to create a complete row, again within parentheses
Number of columns should be = number of values
we can add one row at a time or we can add multiple rows at a time
we can add data under specific columns that we define
we can add data under all columns
*/

--GENERAL SYNTAX
--It is possible to write the INSERT INTO statement in two ways:

--1. Specify both the column names and the values to be inserted:
--We define the column headers under which we provide the values which are data for the rows
INSERT INTO table_name (column1, column2, ... )
VALUES (value1, value2, ... )
;

--2. If you are adding values for ALL the columns of the table, you do not need to specify the column names in the SQL query. 
--However, make sure the order of the values is in the same order as the columns in the table.
INSERT INTO table_name
VALUES (value1, value2, value3, ...);



--EXAMPLES
--EXAMPLE 1: insert one row in an existing table
--EXAMPLE 2: add two rows to the table "provinces"
--EXAMPLE 3: add four rows to the table "author"
--EXAMPLE 4: Insert a new record without specifying columns (because I add data under ALL columns)
--EXAMPLE 5: Insert Data Only in Specified Columns
--EXAMPLE 6: Add rows with automatic filling of the row number


--EXAMPLE 1: insert one row in an existing table
--(first create the table then add rows with data into it with INSERT INTO)

CREATE TABLE Instructor
(
ins_id int, 
lastname varchar(24), 
firstname varchar(24), 
city varchar(24), 
country char(2)
);
SELECT * FROM Instructor; -- I am adding this line to display the table

INSERT INTO Instructor
(ins_id, lastname, firstname, city, country)
VALUES(1, 'Saha', 'Sandip', 'Edmonton', 'CA');
SELECT * FROM Instructor; -- I am adding this line to display the table



--EXAMPLE 2: add two rows to the table "provinces"
--I have created the table "provinces" before, it has no rows with data yet
INSERT INTO provinces
(id, name)
VALUES ('AB', 'ALBERTA'), ('BC', 'COLUMBIA');

SELECT * FROM provinces; -- I am adding this line to display the table


--EXAMPLE 3: add four rows to the table "author"
--I have created the table "author" before, it has no rows with data yet
--to circumvent error reason code "7" I dropped the table and created it again
DROP TABLE author;
CREATE TABLE author
(
author_id int, 
lastname VARCHAR(20), 
firstname VARCHAR(20), 
email VARCHAR(20), 
city VARCHAR(20), 
country VARCHAR(20)
);
SELECT * FROM author;


INSERT INTO author
(author_id, lastname, firstname, email, city, country)
VALUES 
(1, 'Thomas', 'John', 'johnt@+++', 'New York', 'US'),
(2, 'Alice', 'James', 'alicej@+++', 'Seattle', 'US'),
(3, 'Wells', 'Steve', 'stevew@+++', 'Montreal', 'CA' ),
(4, 'Kumar', 'Santosh', 'kumars@+++', 'London', 'UK');

SELECT * FROM author; -- I am adding this line to display the table



--EXAMPLE 4: Insert a new record without specifying columns (because I add data under ALL columns)

INSERT INTO author
VALUES 
(5, 'Dave', 'John', 'johnt@+++', 'New York', 'US');
SELECT * FROM author;



--EXAMPLE 5: Insert Data Only under Specified Columns

INSERT INTO author
(author_id, lastname)
VALUES (6, 'White');
SELECT * FROM author;


--EXAMPLE 6: Add rows with automatic filling of the row number
--W3Schools use 'Cardinal' and the number of the new row is added automatically
--INSERT INTO Customers (CustomerName, City, Country)
--VALUES ('Cardinal', 'Stavanger', 'Norway');
--Did you notice that we did not insert any number into the CustomerID field?
--The CustomerID column is an auto-increment field and will be generated automatically when a new record is inserted into the table.
--I cannot make this work here

DROP TABLE author2;
CREATE TABLE author2
(
author_id int, 
lastname VARCHAR(20), 
firstname VARCHAR(20), 
email VARCHAR(20), 
city VARCHAR(20), 
country VARCHAR(20)
);
SELECT * FROM author2;

INSERT INTO author2
VALUES(1, 'Brown', 'John', 'brownJ@+++', 'Rome', 'Italy');
SELECT * FROM author2;

INSERT INTO author2
(lastname, firstname, email, city)
VALUES('Rown', 'Mary', 'rownM@+++', 'Rome');
SELECT * FROM author2;
--row is added but the cardinal nmber is left blank:(


