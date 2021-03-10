-- CREATE TABLE statement
/*The CREATE TABLE statement creates a table and its column headers
	Also, for the columns we define the datatype and the optional parameters

The general syntax is
CREATE TABLE table
(
Column1 datatype optionalparameters,
Column2 datatype,
Column3 datatype,
…
Column datatype
)
The CREATE TABLE statement uses parentheses 
*/

-- EXAMPLE: create a new table named "provinces"
CREATE TABLE provinces
(
id char(2) PRIMARY KEY NOT NULL,
name varchar(24)
);

SELECT * FROM provinces; -- I am adding this line to display the table

--Name of table is: provinces
--Name of column1 is: id
--Datatype of column1 is: char(2), character string of a fixed length=2
--Name of column2 is: name
--Datatype of column2 is: varchar(24), character string of a variable length up to 24

-- The table is created, it has columns but no rows and no data yet
