-- INSERT INTO statement
-- IBM Db2 on Cloud

-- The INSERT INTO statement adds rows in a table
-- We use this statement in a table that already exists
-- first we define the columns within parentheses
--	then use the keyword VALUES and write the data for each column to create a complete row, again within parentheses
--	Number of columns should be = number of values
--we can add multiple rows at a time
/*
General syntax is:

INSERT INTO table
(column1, column2, ... )
VALUES (value1, value2, ... ) ;
*/

--EXAMPLE: add two rows to the table "provinces"
INSERT INTO provinces
(id, name)
VALUES ('AB', 'ALBERTA'), ('BC', 'COLUMBIA');

SELECT * FROM provinces; -- I am adding this line to display the table

--EXAMPLE: add four rows to the table "author"
INSERT INTO author
(author_id, lastname, firstname, email, city, country)
VALUES 
(1, 'Thomas', 'John', 'johnt@+++', 'New York', 'US' ),
(2, 'Alice', 'James', 'alicej@+++', 'Seattle', 'US' ),
(3, 'Wells', 'Steve', 'stevew@+++', 'Montreal', 'CA' ),
(4, 'Kumar', 'Santosh', 'kumars@+++', 'London', 'UK' );

SELECT * FROM author; -- I am adding this line to display the table
