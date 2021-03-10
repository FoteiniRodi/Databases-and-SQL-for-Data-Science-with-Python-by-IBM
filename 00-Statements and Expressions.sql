DDL data definition statements 4
CREATE TABLE, ALTER TABLE, DROP TABLE, TRUNCATE TABLE
1 CREATE TABLE, creates table and columns but not rows
2 ALTER TABLE, alters columns, their datatypes, their constraints
3 DROP TABLE, deletes a whole table
4 TRUNCATE TABLE, delete only the data not the table and its columns, empty rows stay

DML data manipulation statements 4
INSERT INTO, UPDATE, DELETE FROM, SELECT FROM
1 INSERT INTO, Adds rows to an existing table
2 UPDATE, Updates/modifies the values in rows of an existing table based on a WHERE condition
3 DELETE FROM, deletes rows of an existing table based on a WHERE condition
4 SELECT FROM, takes column as an argument
selects and displays columns and their rows
The SELECT statement is used to select data from a database.
The data returned is stored in a result table, called the result-set.

Other useful expressions 5
WHERE, COUNT, DISTINCT, LIMIT, OFFSET
1WHERE
The WHERE clause takes column=value as an argument
The WHERE clause filters the rows based on a condition
If the condition is True, rows are displayed otherwise they are not
The WHERE clause is not only used in SELECT statements, it is also used in UPDATE, DELETE, etc.!
WHERE column IN (value1, value2); to delete two rows
2 COUNT
COUNT takes a (column) as an argument
COUNT returns number of rows
The COUNT() function returns the number of rows that matches a specified criterion.
3 DISTINCT
DISTINCT takes column as an argument
DISTINCT returns unique rows under selected column, no duplicates
4 LIMIT
LIMIT takes a number as an argument
LIMIT is placed at the end of the syntax
LIMIT defines how many rows are displayed
5 OFFSET
OFFSET instructs at which row to start attention if I define OFFSET 2, then it starts counting from row 3
when LIMIT and OFFSET are used together, OFFSET is placed last
