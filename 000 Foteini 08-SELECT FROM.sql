--08-SELECT

--SELECT statement
-- IBM Db2 on Cloud

/*
GENERAL THEORY:
The SELECT statement is used to select data and display data from a database.
The SELECT statement retrieves data records from one or more tables of a database and the output is a result set according to the criteria you specify
SELECT queries to retrieve data from the database
*/

--GENERAL SYNTAX
--1
SELECT * FROM table_name ; 
--selects all columns, all rows under them
--star * is a wildcard, it means all columns

--2
SELECT column1, column2, … , columnn FROM table_name ;
--selects all columns, all rows under them

--3
SELECT column1, column2 FROM table_name; 
--select certain columns and all rows under them

--4
SELECT column1, column2 FROM table_name
WHERE column = value;
--select certain columns. columns are selected by typing their name
--select certain rows by using a WHERE condition

--FROM
--Specifies from which table to get the data. 
--The clause can include optional JOIN subclauses to specify the rules for joining tables.

--WHERE
--Specifies which rows to retrieve.WHERE is optional
--WHERE can use many operators,
--equal to = 	
--greater than > 	
--less than < 	
--greater than or equal to >= 	
--less than or equal to <=	
--Not equal to <>	
--Result is displayed only when the  WHERE clause is True

--SEMICOLON
--Some database systems require a semicolon at the end of each SQL statement for execution
--It is a standard way to separate one SQL statement from another which allows more than one SQL statement to be executed in the same call to the server.

--EXPRESSIONS USED WITH THE SELECT STATEMENT
--COUNT, DISTINCT, LIMIT, OFFSET

--1) COUNT expression (returns a number. a number of rows)
--syntax is: COUNT(column) ,with a parenthesis
--returns the number of rows under a column
--output is e.g. count(columnA)= 15

--2) DISTINCT expression (displays unique rows, duplicate rows are ommited)
--syntax is: DISTINCT column ,without a parenthesis
--removes duplicate values from a result set and returns the unique values
--removes duplicate values from a result set and returns the unique values
--it is used to remove duplicate values from a specified result set and only return the unique values.
--(result set is the output of our query)

--3) LIMIT expression (displays a certain number of rows)
--syntax is: LIMIT number 
--restricts the number of rows retrieved from a table
--LIMIT is placed at the end of the syntax

--4) OFFSET expression (displays rows after a specified row)
--syntax is OFFSET number
--defines the row to start counting from
--if OFFSET is 2 then we start counting from row 3
--OFFSET is used after LIMIT

--EXAMPLES:


--EXAMPLE 1: SELECT + WHERE
--select all columns
--select certain rows with WHERE

SELECT * FROM INSTRUCTOR;
INSERT INTO Instructor
(ins_id, lastname, firstname, city, country)
VALUES(3, 'Saha', 'Sandip', 'Edmonton', 'CA'), 
(4, 'IBM', 'IBM', 'ATHENS', 'GREECE'),
(5, 'GOOGLE', 'GOOGLE', 'GERAKAS', 'GREECE');
SELECT * FROM INSTRUCTOR;

--actual example
SELECT * FROM INSTRUCTOR
WHERE ins_id < 2 ; --row 2 is not included
--actual example
SELECT * FROM INSTRUCTOR
WHERE country = 'GREECE';
--actual example
SELECT lastname, firstname FROM INSTRUCTOR;


--EXAMPLE 2: SELECT + WHERE
--select certain columns (type their names)
--select certain rows with WHERE

--add a column to the table
ALTER TABLE instructor
ADD COLUMN year integer ;
SELECT * FROM INSTRUCTOR;

--insert values under that column
INSERT INTO instructor
(year)
VALUES (2013), (2014), (2015), (2016), (2017); --i added these to additional rows!
SELECT * FROM instructor;

DELETE FROM Instructor
WHERE year in (2013, 2014, 2015, 2016, 2017); --I deleted the additional rows
SELECT * FROM Instructor;

INSERT INTO instructor
(ins_id, year)
VALUES (1, 2013), (2, 2014), (3, 2015), (4, 2016), (5, 2017);--i added these to additional rows!
SELECT * FROM instructor;

DELETE FROM Instructor
WHERE year in (2013, 2014, 2015, 2016, 2017); --I deleted the additional rows again
SELECT * FROM Instructor;

--so how can I add years under the year column in the exisitng 5 rows?

ALTER TABLE instructor
ADD COLUMN year integer ;
SELECT * FROM INSTRUCTOR;

--add values to the new column with UPDATE
UPDATE instructor SET year = 2013 WHERE ins_id = 1;
UPDATE instructor SET year = 2014 WHERE ins_id = 2;
UPDATE instructor SET year = 2015 WHERE ins_id = 3;
UPDATE instructor SET year = 2016 WHERE ins_id = 4;
UPDATE instructor SET year = 2017 WHERE ins_id = 5;
SELECT * FROM INSTRUCTOR;--this does not work reason code 7, I will drop the table and start over

DROP TABLE INSTRUCTOR;
CREATE TABLE INSTRUCTOR
(
ins_id integer,
lastname varchar(20),
firstname varchar(20),
city varchar(20),
country varchar(20)
);
SELECT * FROM INSTRUCTOR;
INSERT INTO INSTRUCTOR
VALUES
(1, 'Saha', 'Sandip', 'Edmonton', 'CA'),
(2, 'Saha', 'Sandip', 'Edmonton', 'CA'),
(3, 'Saha', 'Sandip', 'Edmonton', 'CA'), 
(4, 'IBM', 'IBM', 'ATHENS', 'GREECE'),
(5, 'GOOGLE', 'GOOGLE', 'GERAKAS', 'GREECE');
SELECT * FROM INSTRUCTOR;

ALTER TABLE instructor
ADD COLUMN year integer ;
SELECT * FROM INSTRUCTOR;

UPDATE instructor SET year = 2013 WHERE ins_id = 1;
UPDATE instructor SET year = 2014 WHERE ins_id = 2;
UPDATE instructor SET year = 2015 WHERE ins_id = 3;
UPDATE instructor SET year = 2016 WHERE ins_id = 4;
UPDATE instructor SET year = 2017 WHERE ins_id = 5;
SELECT * FROM INSTRUCTOR; -- NOW IT WORKS


--actual example
SELECT LASTNAME, FIRSTNAME FROM INSTRUCTOR
WHERE Year>=2015;
--actual example
SELECT * FROM instructor
WHERE year<>2013;--this means is not 2013


--EXAMPLE 3: SELECT/COUNT
--select all columns
--return NUMBER of rows under all columns
SELECT COUNT(*) FROM Instructor;

--select one column
--return NUMBER of rows under this column
SELECT COUNT(lastname) FROM instructor;


--EXAMPLE 4: SELECT/COUNT + WHERE
--select one column
--return NUMBER of rows under this column
--attention select certain rows with WHERE

SELECT COUNT(country) FROM instructor
WHERE year=2013;

--EXAMPLE 9: SELECT/COUNT/DISTINCT
--select one column and define we want unique rows
-- return all unique rows under this column.Duplicate rows are omitted

--first I will ad duplicate row at the end
INSERT INTO INSTRUCTOR
VALUES (6, 'GOOGLE', 'GOOGLE', 'GERAKAS', 'GREECE', 2017);
SELECT * FROM INSTRUCTOR;

SELECT DISTINCT FIRSTNAME FROM INSTRUCTOR;
--returns 3 rows with unique firstnames 


--EXAMPLE 10: SELECT/COUNT/DISTINCT + WHERE
--select one column
--use count to retrieve number of rows under that column
--use distinct to retrieve number of unique rows under that column
--select certain rows with WHERE

SELECT COUNT(DISTINCT lastname) FROM instructor
WHERE country = 'GREECE';
--returns 0.
--there are 3 rows with country Greece
--for these 3 rows lastname is IBM, GOOGLE, GOOGLE
--so 2 unique rows under column lastname
--attention! country = 'GREECE' and country = 'Greece' are different

SELECT COUNT(DISTINCT lastname) FROM instructor
WHERE city= 'Edmonton';
--returns 1
--there are 3 rows with city Edmonton
--for these 3 rows lastname is Saha, Saha, Saha
--so 1 unique row under column lastname 



--EXAMPLE: SELECT/DISTINCT + WHERE
--select two columns
--use distinct to retrieve unique rows under these columns
--select certain rows with WHERE
SELECT DISTINCT lastname, country FROM Instructor
WHERE year>=2013;
--unique rows under both columns

SELECT DISTINCT lastname, country FROM Instructor
WHERE city= 'Edmonton';

--EXAMPLE: SELECT/LIMIT
--select all columns
--select all rows
--use LIMIT to display a certain number of rows
SELECT * FROM Instructor LIMIT 2;

--EXAMPLE: SELECT/LIMIT/OFFSET
--select all columns
--select all rows
--use LIMIT to display a certain number of rows
--use OFFSET to start counting from a specific row
SELECT * FROM Instructor LIMIT 2 OFFSET 1;


--EXAMPLE: SELECT/DISTINCT/LIMIT
--select one column
--use DISTINCT to display unique rows under that column
--use LIMIT to display a certain number of rows
SELECT DISTINCT lastname FROM instructor LIMIT 4;

--EXAMPLE: SELECT/DISTINCT/LIMIT + WHERE
--select one column
--use DISTINCT to display unique rows under that column
--select certain rows with WHERE
--use LIMIT to display a certain number of rows
SELECT DISTINCT country FROM instructor
WHERE country = 'GREECE'
LIMIT 2;

--EXAMPLE: SELECT/DISTINCT/LIMIT/OFFSET +WHERE
--select one column
--use DISTINCT to display unique rows under that column
--select certain rows with WHERE
--use LIMIT to display a certain number of rows
--use OFFSET to start counting from a specific row
SELECT DISTINCT COUNTRY FROM INSTRUCTOR
WHERE YEAR<2017
LIMIT 2 OFFSET 1;

