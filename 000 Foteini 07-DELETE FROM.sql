--07-DELETE

--DELETE FROM Statement
-- IBM Db2 on Cloud

/*
GENERAL THEORY:
the DELETE statement is used to remove rows from a table.
DELETE FROM table_name removes a row or rows of data from a table

The DELETE statement is used to delete existing records in a table
*/


--GENERAL SYNTAX
DELETE FROM table_name
WHERE condition
;

--ATTENTION, to choose two rows we use the WHERE clause like this, WHERE column IN (value1, value2) see example 
--ATTENTION, Be careful when deleting records in a table! 
--Notice the WHERE clause in the DELETE statement. 
--The WHERE clause specifies which record(s) should be deleted. If you omit the WHERE clause, all records in the table will be deleted!


--EXAMPLE
--EXAMPLE
--EXAMPLE

--EXAMPLE 1: delete one row from a table according to a condition
--remove the row whose id is 2 from table instructor

DELETE FROM Instructor
WHERE ins_id = 2;
SELECT * FROM Instructor;

--EXAMPLE 2: delete one row from a table according to a condition

INSERT INTO Instructor
VALUES (2, 'Brown', 'John', 'Sydney', 'Australia'), (3, 'White', 'Hima', 'Sao Paolo', 'Brasil');
SELECT * FROM Instructor;

--Now remove the instructor record of Hima.
--the whole row for which lastname=Hima will be deleted from the table!
DELETE FROM Instructor
WHERE firstname='Hima';
SELECT * FROM Instructor;


--EXAMPLE 3: delete two rows by using a different WHERE CONDITION

CREATE TABLE howtodelete2rows
(
id int,
firstname varchar(20),
lastname varchar(20),
city varchar(20),
country varchar(20)
);
select * from howtodelete2rows;

INSERT INTO howtodelete2rows
VALUES ( 1, 'JOHN', 'BROWN', 'LONDON', 'UK'), (2, 'MARY', 'WHITE', 'LONDON', 'UK'),
(3, 'MARGARET', 'THATCHER', 'LONDON', 'UK');
select * from howtodelete2rows;

DELETE FROM howtodelete2rows
WHERE ID IN (1, 2);
select * from howtodelete2rows;


--EXAMPLE 4: delete all rows 
--It is possible to delete all rows in a table without deleting the table. 
--This means that the table structure, attributes, and indexes will be intact

INSERT INTO howtodelete2rows
VALUES ( 1, 'JOHN', 'BROWN', 'LONDON', 'UK'), (2, 'MARY', 'WHITE', 'LONDON', 'UK');
select * from howtodelete2rows;

DELETE FROM howtodelete2rows;
select * from howtodelete2rows;


