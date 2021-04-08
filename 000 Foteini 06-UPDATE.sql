--06-UPDATE

--UPDATE statement
-- IBM Db2 on Cloud


/*
GENERAL THEORY:
the UPDATE statement is used to update the data in existing rows of a  table
The UPDATE statement is used to modify/update the existing records in a table.
The UPDATE table_name statement edits row or rows in a table
The UPDATE statement modifies/updates values in the rows
*/


--GENERAL SYNTAX

--update chosen rows
UPDATE table_name
SET column1 =  value1, column2 = value2, ...
WHERE condition
;

--update all rows
UPDATE table_name
SET column1 =  value1, column2 = value2, ...
;

--We set the value for a column
--We specify the row with the WHERE clause
--Question: What is the function of a WHERE clause in an UPDATE statement?
--Answer: A WHERE clause enables you to specify which rows will be updated.

--Be careful when updating records in a table! 
--Notice the WHERE clause in the UPDATE statement. 
--The WHERE clause specifies which record(s) that should be updated. 
--If you omit the WHERE clause, all records in the table will be updated!


--EXAMPLE 1
--EXAMPLE 2
--EXAMPLE 3
--EXAMPLE 4
--EXAMPLE 5
--EXAMPLE 6
--EXAMPLE 7
--EXAMPLE 8

--EXAMPLE 1: update a row using the WHERE condition
--Update/Modify lastname='Smith' into lastname='Brewster' 

DROP TABLE INSTRUCTOR;
CREATE TABLE INSTRUCTOR
(INS_ID INT,
 LASTNAME VARCHAR(20),
 FIRSTNAME VARCHAR(20), 
CITY VARCHAR(20), 
COUNTRY VARCHAR(20)
);
SELECT * FROM INSTRUCTOR;

INSERT INTO INSTRUCTOR
(INS_ID, LASTNAME, FIRSTNAME, CITY, COUNTRY)
VALUES (1, 'SMITH', 'JOHN', 'MILAN', 'ITALY');
SELECT * FROM INSTRUCTOR;

UPDATE INSTRUCTOR 
SET LASTNAME = 'Brewster' 
WHERE LASTNAME = 'SMITH';
SELECT * FROM INSTRUCTOR;


--EXAMPLE 2: 
--Here we want to update one column of an existing row of the table.
--Update the city to Quebec when firstname=Sandip

INSERT INTO INSTRUCTOR
VALUES (2, 'Kumar', 'Sandip', 'Toronto', 'Canada');
SELECT * FROM INSTRUCTOR;

UPDATE Instructor 
SET city = 'Quebec' 
WHERE firstname = 'Sandip';
SELECT * FROM Instructor;


--EXAMPLE 3: 
--Here we want to update multiple columns of an existing row of the table.
--Update the city and country  to Dubai and AE respectively when id = 2

UPDATE Instructor 
SET city = 'Dubai', country = 'AE'
WHERE ins_id = 2;
SELECT * FROM Instructor;



--EXAMPLE 4: 
--Update the city  to Markham when id is 1.
--City is the column
--Markham is the value
--Condition for the WHERE clause is ins_id=1

UPDATE Instructor
SET city='Markham'
WHERE ins_id=1;
SELECT * FROM Instructor;



--EXAMPLE 5: 
--update the QUANTITY column of the PETSALE table with some values
--currently all rows under column Quantity have no values
--show all the records of the table. 

DROP TABLE PETSALE;
CREATE TABLE PETSALE
(
ID INTEGER,
ANIMAL VARCHAR(256),
SALEPRICE DECIMAL(6,2),
QUANTITY INTEGER
);
SELECT * FROM PETSALE;

INSERT INTO PETSALE
VALUES (1, 'CAT', 500.20, NULL), (2, 'DOG', 600.10, NULL),
(3, 'HAMSTER', 250.21, NULL), (4, 'RABBIT', 300.28, NULL), (5, 'CHICKEN', 300.00, NULL);
SELECT * FROM PETSALE;


UPDATE PETSALE SET QUANTITY = 9 WHERE ID = 1;
UPDATE PETSALE SET QUANTITY = 3 WHERE ID = 2;
UPDATE PETSALE SET QUANTITY = 2 WHERE ID = 3;
UPDATE PETSALE SET QUANTITY = 6 WHERE ID = 4;
UPDATE PETSALE SET QUANTITY = 24 WHERE ID = 5;

SELECT * FROM PETSALE;



--EXAMPLE 6: 
--update the column saleprice = 100.00, for all records

UPDATE PETSALE
SET SALEPRICE = 100.00;
SELECT * FROM PETSALE;

--EXAMPLE 7
--Set the value of the SALEPRICE = 500.00
--but only the ones where the ANIMAL = 'CAT'

UPDATE PETSALE
SET SALEPRICE = 500.00
WHERE ANIMAL = 'CAT';
SELECT * FROM PETSALE;

--EXAMPLE 8: 
--Update the columns saleprice and quantity when id=2

UPDATE PETSALE
SET SALEPRICE= 850.50, QUANTITY = 1000
WHERE ID = 2;
SELECT * FROM PETSALE;

