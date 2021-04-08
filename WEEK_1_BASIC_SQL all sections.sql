WEEK 1 - BASIC SQL
1.1 Welcome to SQL for Data Science

SQL is a powerful language that we use to communicate with databases.
Learning SQL will give you a good understanding of relational databases. 
We will use Python and Jupyter notebooks to connect to relational databases and then access and analyze data
WEEK 1 - BASIC SQL
1.2 Introduction to Databases

What is SQL?
SQL= Structured Query Language
SQL is a language used for relational databases to query a database or to get data out of a database.
Query = 	set of instructions passed to a database
search database
A formalized instruction to a database to either return a set of records or perform a specified action on a set of records as specified in the query.
A request for information to a database application, a search engine, or another tool
Structured Query Language = Δομημένη γλώσσα ερωτημάτων / αναζήτησης
SQL is a language used for a database to query data

What is data?
Data is a collection of facts in the form of words, numbers, or even pictures
Data is important; so, it needs to be secure, and it needs to be stored and accessed quickly in a database

What is a database?
A database is a repository of data. 
Repository= a location for storage, αποθετήριο
A database is a program that stores data. 
A database also provides the functionality for adding, modifying, and querying that data. 

What is a relational database?
When data is stored in tabular form, the data is organized in tables like in a spreadsheet, which is columns and rows.
The columns contain properties about the item such as last name, first name, email address, city. 
A table is a collection of related things like a list of employees or a list of book authors. 
In a relational database, you can form relationships between tables. 

What is a DBMS (database management system)?
A set of software tools for the data in the relational database
The terms database, database server, database system, data server, and database management systems are often used interchangeably. 
For relational databases, it's called a relational database management system or RDBMS. 
The main purpose of a database management system, is not just to store the data but also facilitate retrieval of the data. 

Examples of RDBMS
my SQL, Oracle Database, DB2 Warehouse, and DB2 on Cloud.



Five basic SQL commands. 
1.	CREATE 		create a table, 
2.	INSERT 		insert data to populate the table, 
3.	SELECT		select data from the table, 
4.	UPDATE 		update data in the table, 
5.	DELETE 		delete data from the table. 
CREATE, INSERT, SELECT, UPDATE, DELETE

WEEK 1 - BASIC SQL
1.3 SELECT statement

The SELECT statement is used to select data from a database.
The SELECT statement retrieves data records from one or more tables of a database and the output is a result set according to the criteria you specify

Syntax of the SELECT statement
1 – DISPLAY ALL COLUMNS AND ALL THEIR ROWS, METHOD A
SELECT * FROM table ;
Output is:
all column headers and rows of the table (we can explore all of the database)
* selects all
<entity/table> is the name of the entity/table
Example:
SELECT * FROM FilmLocations
;

2– DISPLAY ALL COLUMNS AND ALL THEIR ROWS, METHOD B
SELECT column 1, column 2, … , column n FROM table
;
Output is:
all column headers and rows of the table (we can explore all of the database)
Method A and B are equivalent.
Example:
SELECT Title, ReleaseYear, Locations, FunFacts, ProductionCompany, Distributor, Director, Writer, Actor1, Actor2, Actor3 FROM FilmLocations
;

3 -DISPLAY SPECIFIC COLUMNS AND ALL THEIR ROWS
SELECT column 1, column 2 FROM table
;
Output is:
specific column headers and all rows of the table
Example:
SELECT Title, ReleaseYear FROM FilmLocations
;

4 -DISPLAY SPECIFIC COLUMNS AND SPECIFIC ROWS
SELECT column 1, column 2 FROM entity/table
WHERE column=value condition
;
Output is:
specific column headers and specific rows of the table
Example 1:
SELECT Title, ReleaseYear FROM FilmLocations
WHERE ReleaseYear < 2000
;
Example 2:
SELECT Title, ProductionCompany, Locations, ReleaseYear FROM FilmLocations 
WHERE Writer<>"James Cameron"
;


NOTES
1 – the FROM keyword
FROM: Specifies from which table to get the data. The clause can include optional JOIN subclauses to specify the rules for joining tables.

2 – the WHERE clause
The WHERE clause Specifies which rows to retrieve 
The WHERE clause is optional

* WHERE can use many operators,
= 	equal to
> 	greater than
< 	less than
>= 	greater than or equal to
<=	less than or equal to
<>	Not equal to
Result is displayed only when the  WHERE clause is True
When the value is text, please enclose it in quotes

3  - SEMICOLON ;
Why is there a semicolon after the SQL statements?
Some database systems require a semicolon at the end of each SQL statement for execution. It is a standard way to separate one SQL statement from another which allows more than one SQL statement to be executed in the same call to the server. So, it is good practice to use a semicolon at the end of each SQL statement.


WEEK 1 - BASIC SQL
1.4 SELECT statement examples

Objectives
At the end of this lab you will be able to:

use SELECT queries to retrieve data from the database
Effort: 20 min

The general syntax of SELECT statments is:

select COLUMN1, COLUMN2, ... from TABLE1 ;

To retrieve all columns from the COUNTRY table we could use "*" instead of specifying individual column names:

select * from COUNTRY ;

The WHERE clause can be added to your query to filter results or get specific rows of data. To retrieve data for all rows in the COUNTRY table where the ID is less than 5:

select * from COUNTRY where ID < 5 ;

In case of character based columns the values of the predicates in the where clause need to be enclosed in single quotes. To retrieve the data for the country with country code "CA" we would issue:

select * from COUNTRY where CCODE = 'CA';

In the lab that follows later in the module, you will apply these concepts and practice SELECT queries hands-on.

WEEK 1 - BASIC SQL
1.5 Lab: Simple SELECT statements

Hands-on Lab : Basics of SQL SELECT Statement


In this lab, you will learn one of the most commonly used statements of SQL (Structured Query Language), the SELECT statement. 
The SELECT statement is used to select data from a database.

How does the syntax of a SELECT statement look?
SELECT column1, column2, ...
FROM table_name
WHERE condition
;

What do the keywords / clauses of a SQL statement shown above do?
FROM: Specifies from which table to get the data. 
The clause can include optional JOIN subclauses to specify the rules for joining tables.
[Optional Clause] WHERE : Specifies which rows to retrieve.

Why is there a semicolon after the SQL statements?
Some database systems require a semicolon at the end of each SQL statement for execution. 
It is a standard way to separate one SQL statement from another which allows more than one SQL statement to be executed in the same call to the server. 
So, it is good practice to use a semicolon at the end of each SQL statement.

Software Used in this Lab
In this lab, you will use Datasette , an open source multi-tool for exploring and publishing data.

Database Used in this Lab
The database used in this lab comes from the following dataset source: Film Locations in San Francisco under a PDDL: Public Domain Dedication and License.

Objectives
After completing this lab, you will be able to:
Query a database
Retrieve data records from one or more tables of a database as resultset according to the criteria you specify

Task A: Exploring the Database
Let us first explore the SanFranciscoFilmLocations database using the Datasette tool:
SELECT * FROM FilmLocations;

Task B: Example exercises on SELECT statement
Now let us go through some examples of SELECT queries:

In this example, suppose we want to retrieve details of all the films from the "FilmLocations" table. 
The details of each film record should contain all the film columns.
Problem:
Retrieve all records with all columns from the "FilmLocations" table.
Solution:
SELECT * FROM FilmLocations;

In this example, now we want to retrieve selective details of all the film records. 
Let us retrieve the names of all the films along with director names and writer names.
Problem:
Retrieve the names of all films with director names and writer names.
Solution:
SELECT Title, Director, Writer FROM FilmLocations;

In this example, we want to retrieve film names along with filming locations and release years. 
But we also want to restrict the output resultset so that we can retrieve only the film records released in 2001 and onwards (release years after 2001 including 2001).

Problem:
Retrieve the names of all films released in the 21st century and onwards (release years after 2001 including 2001), along with filming locations and release years.
Solution:
SELECT Title, ReleaseYear, Locations FROM FilmLocations 
WHERE ReleaseYear>=2001;

Task C: Practice exercises on SELECT statement
Finally, let us practice creating and running some SELECT queries.
Problem:
Retrieve the fun facts and filming locations of all films.
Solution:
SELECT Locations, FunFacts FROM FilmLocations;

Problem:
Retrieve the names, production company names, filming locations, and release years of the films which are not written by James Cameron.
Solution:
SELECT Title, ProductionCompany, Locations, ReleaseYear FROM FilmLocations WHERE Writer<>"James Cameron";

WEEK 1 - BASIC SQL
1.6 COUNT, DISTINCT, LIMIT

Below are a few useful expressions that are used with SELECT statements. 

COUNT expression
syntax is COUNT(column) with a parenthesis
retrieves the number of rows that match the query criteria

DISTINCT expression
syntax is DISTINCT column without a parenthesis
removes duplicate values from a result set and returns the unique values

LIMIT expression
syntax is LIMIT number
restricts the number of rows retrieved from a table
LIMIT is placed at the end of the syntax

OFFSET
syntax is OFFSET number
defines the row to start counting from
if OFFSET is 2 then we start counting from row 3
OFFSET is used after LIMIT

COUNT expression
retrieves the number of rows that match the query criteria
COUNT(column) gives number of rows under the column

1 – COUNT THE NUMBER OF ALL ROWS FOR ALL COLUMN HEADERS
SELECT COUNT(*) FROM entity/table
;
Output is:
Number of all rows under all column headers
(each row corresponds to one record)
Example:
SELECT COUNT(*) FROM FilmLocations
;
Output is:
3414
This is the number of all rows under all column headers

2 – COUNT THE NUMBER OF ALL ROWS FOR A SPECIFIC COLUMN HEADER
SELECT COUNT(column 1) FROM table
;
Output is:
Number of all rows for a specific column header
Example:
SELECT COUNT(Locations) FROM FilmLocations
;
Output is:
3414
This is the number of rows for the column header “Locations”

2 – COUNT THE NUMBER OF ALL ROWS FOR A SPECIFIC COLUMN HEADER AND SPECIFIC ROWS
SELECT COUNT(column 1) FROM table
WHERE predicate
;
Output is:
Number of rows under column header 1 that satisfy the condition of the WHERE clause
Example:
SELECT COUNT(Locations) FROM FilmLocations 
WHERE Writer="James Cameron"
;
Output is:
Number of rows for the column Locations and when the Writer is James Cameron
We chose the column and then we used a filter to choose the rows
We get 48
So, in the column Locations we have 48 rows for which the writer is James Cameron
Writer is a column too, we have filtered it

Exercise
Retrieve the number of locations of the films which are directed by Woody Allen.
Solution
Each row corresponds to one movie
I want the number of rows for the column Locations
I will filter the rows of the column Director with the WHERE clause and I will use the condition =’ Woody Allen’
SELECT COUNT(Locations) FROM FilmLocations 
WHERE Director="Woody Allen"
;
Output is:
COUNT(Locations) = 62

Exercise
Retrieve the number of films shot at Russian Hill.
Solution
I want the number of rows for the column Location
I want to filter the column Location with the WHERE clause and I will use the condition = “Russian Hill”
SELECT COUNT(Locations) FROM FilmLocations 
WHERE Locations ="Russian Hill"
;
Output is:
COUNT(Locations): 1

The course solution says SELECT Count(Title) FROM FilmLocations WHERE Locations="Russian Hill";
It counts using the column Title
I don’t think it matters which column I use for COUNT

Exercise
Retrieve the number of rows having a release year older than 1950 from the "FilmLocations" table.
Solution
I want the number of rows for the column Title
I want to filter the column ReleaseYear with the WHERE clause and I will use the condition ReleaseYear < 1950
SELECT COUNT(Title) FROM FilmLocations 
WHERE ReleaseYear < 1950;
;
Output is:
COUNT(Title): 62

The course solution says SELECT Count(*) FROM FilmLocations WHERE ReleaseYear<1950;
It counts rows for all column headers.

DISTINCT expression
removes duplicate values from a result set and returns the unique values
it is used to remove duplicate values from a specified result set and only return the unique values.
(result set is the output of our query)

Problem
Retrieve the name of all films without any repeated titles
Solution
SELECT DISTINCT column1 FROM entity/table
;
SELECT DISTINCT Title FROM FilmLocations;
Output is:
All unique rows under column header Title
Duplicate rows are omitted

Problem
Retrieve the number of release years of the films distinctly, produced by Warner Bros. Pictures.
Solution
I have the column ReleaseYear and the column ProductionCompany
I want unique rows under the column ReleaseYear (use both COUNT and DISTINCT)
I want to filter the column ProductionCompany only for Warner Bros. Pictures (use WHERE clause)

SELECT COUNT(DISTINCT ReleaseYear) FROM FilmLocations
WHERE ProductionCompany = ‘Warner Bros. Pictures’
;
Output is:
COUNT(DISTINCT ReleaseYear): 14

Problem
Retrieve the name of all unique films released in the 21st century and onwards, along with their release years.
Solution
I want unique names in the Title column
I want the respective ReleaseYear column to appear too
I want to filter the ReleaseYear column to show films after or equal to 2001
SELECT DISTINCT Title, ReleaseYear FROM FilmLocations
WHERE ReleaseYear>=2001
;

Problem
Retrieve the names of all the directors and their distinct films shot at City Hall.
Solution
I want the column Director
I want unique names in the column Titles
I want to filter the column Locations for City Hall
SELECT DISTINCT Title, Director FROM FilmLocations
WHERE Locations=’ City Hall’;

Problem
Retrieve the number of distributors distinctly who distributed films acted by Clint Eastwood as 1st actor.
Solution
I want unique values under the column header Distributor
I want to filter the column header Actor1 for Clint Eastwood
Attention! I want number of rows so I will use COUNT before DISTINCT
COUNT uses a parenthesis, DISTINCT is placed before the column
SELECT COUNT(DISTINCT Distributor) FROM FilmLocations
WHERE Actor1=’ Clint Eastwood’
;
Output is:
COUNT(DISTINCT Distributor)


LIMIT expression
restricts the number of rows retrieved from a table


Problem
In this example, let us retrieve a specific number of rows from the top of the table in such a way that rows other than those are not in the output result set.
Retrieve the first 25 rows from the "FilmLocations" table.
Solution
SELECT * FROM FilmLocations LIMIT 25;
So, we select all rows under all column headers BUT in the end we specify that we want only the first 25 rows to appear in the result set


Problem
Now we want to retrieve a specific number of rows from the table, but this time, not from the top of the table. This time we want to retrieve a specific number of rows starting from a specific row in the table.
Retrieve the first 15 rows from the "FilmLocations" table starting from row 11.
Solution
SELECT * FROM FilmLocations LIMIT 15 OFFSET 10;
So, we select all rows under all column headers BUT in the end we specify that we want to start selection from row 10 and then select 15 rows
OFFSET defines the row we start from
LIMIT defines how many rows we want to select
When we do not use OFFSET it means we start selecting from the beginning
And of course OFFSET selects row and not the column header

Problem
Retrieve the name of first 50 films distinctly.
Solution
SELECT DISTINCT Title FROM FilmLocations LIMIT 50;

Problem
Retrieve first 10 film names distinctly released in 2015.
Solution
SELECT DISTINCT Title FROM FilmLocations
WHERE ReleaseYear=2015
LIMIT 10
;
Άρα το LIMIT μπαίνει στο τέλος

Problem
Retrieve the next 3 film names distinctly after first 5 films released in 2015.
Solution
SELECT DISTINCT Title FROM FilmLocations
WHERE ReleaseYear=2015
LIMIT 3 OFFSET 5
;

WEEK 1 - BASIC SQL
1.7 Lab:COUNT, DISTINCT, LIMIT

Please see WEEK_1_BASIC_SQL_1.6_COUNT, DISTINCT, LIMIT

WEEK 1 - BASIC SQL
1.8 INSERT statement

After a table is created, the table needs to be populated with data. 
To insert data into a table, we use the INSERT statement. 

The INSERT statement is used to Insert new rows into a table.
syntax of the INSERT statement
INSERT INTO table_name 
(column1, column2, ... )
VALUES (value1, value2, ... )
;
We define the column headers under which we provide the values which are data for the rows

Problem – Insert one row
In this example, suppose we want to insert a new single row into the Instructor table.
Insert a new instructor record with id 4 for Sandip Saha who lives in Edmonton, CA into the "Instructor" table.
Solution
SELECT * FROM Instructor
;
Output is:
We see the columns ins_id, lastname, firstname, city, country
We see the rows 1,2,3 under each column

INSERT INTO Instructor
(ins_id, lastname, firstname, city, country)
VALUES(4, 'Saha', 'Sandip', 'Edmonton', 'CA')
;
Output is:
We see the columns ins_id, lastname, firstname, city, country
We see the rows 1,2,3,4 under each column
The row 4 is the one we added


Problem
Insert two new instructor records into the "Instructor" table. 
First record with id 5 for John Doe who lives in Sydney, AU. 
Second record with id 6 for Jane Doe who lives in Dhaka, BD.
Solution
INSERT INTO Instructor
(ins_id, lastname, firstname, city, country)
VALUES
(5, 'Doe', 'John', 'Sydney', 'AU'),
(6, 'Doe', 'Jane', 'Dhaka', 'BD')
;

Problem
Insert a new instructor record with id 7 for Antonio Cangiano who lives in Vancouver, CA into the "Instructor" table.
Solution
INSERT INTO Instructor
(ins_id, lastname, firstname, city, country)
VALUES
(7, 'Cangiano', 'Antonio', 'Vancouver', 'CA')
;

With
SELECT * FROM Instructor
;
We see all rows

Problem
Insert two new instructor records into the "Instructor" table. First record with id 8 for Steve Ryan who lives in Barlby, GB. Second record with id 9 for Ramesh Sannareddy who lives in Hyderabad, IN.
Solution
INSERT INTO Instructor
(ins_id, lastname, firstname, city, country)
VALUES
(8, 'Ryan', 'Steve', 'Vancouver', 'CA'),
(9, 'Sannareddy', 'Ramesh', 'Hyderabad', 'IN')
;

WEEK 1 - BASIC SQL
1.9 UPDATE and DELETE statements

the UPDATE statement is used to update the data in existing rows in the table

syntax of the UPDATE statement
UPDATE table_name
SET
column1 = value1,
column2 = value2, ...
WHERE condition
;
We set the value for a column
We specify the row with the WHERE clause

Problem
In this example, we want to update one column of an existing row of the table.
Update the city for Sandip to Toronto.
Solution
UPDATE Instructor 
SET
city='Toronto' 
WHERE firstname="Sandip"
;
SELECT * FROM Instructor
;

Problem
In this example, we want to update multiple columns of an existing row of the table.
Update the city and country for Doe with id 5 to Dubai and AE respectively.
Solution
UPDATE Instructor 
SET city=’Dubai’, country=’AE’
WHERE ins_id=5
;
SELECT * FROM Instructor
;

Problem
Update the city of the instructor record to Markham whose id is 1.
Solution
City is the column
Markham is the value
Condition for the WHERE clause is ins_id=1
UPDATE Instructor
SET city=’Markham’
WHERE ins_id=1
;
SELECT * FROM Instructor
;

Problem
Update the city and country for Sandip with id 4 to Dhaka and BD respectively.
Solution
Column is city and country
Value is Dhaka and BD respectively.
Condition for the WHERE clause is ins_id=4
UPDATE Instructor
SET city=’Dhaka’, country=’BD’
WHERE ins_id=4
;
SELECT * FROM Instructor
;

the DELETE statement is used to remove rows from a table.

Syntax of the DELETE statement
DELETE FROM table_name
WHERE condition
;

Problem
In this example, we want to remove a row from the table.
Remove the instructor record of Doe whose id is 6.
Solution
DELETE FROM Instructor
WHERE ins_id=6
;
SELECT * FROM Instructor
;


Problem
Remove the instructor record of Hima.
Solution
DELETE FROM Instructor
WHERE firstname=’Hima’
;
SELECT * FROM Instructor
;

WEEK 1 - BASIC SQL
1.10 INSERT, UPDATE, DELETE

Hands-on Lab : INSERT, UPDATE, DELETE
Estimated time needed: 20 minutes

In this lab, you will learn some commonly used DML (Data Manipulation Language) statements of SQL other than SELECT. First, you will learn the INSERT statement, which is used to insert new rows into a table. Next, you will learn the UPDATE statement which is used to update the data in existing rows in the table. Lastly, you will learn the DELETE statement which is used to remove rows from a table.



How does the syntax of an INSERT statement look?

INSERT INTO table_name (column1, column2, ... )
VALUES (value1, value2, ... )
;
How does the syntax of an UPDATE statement look?

UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition
;


How does the syntax of a DELETE statement look?

DELETE FROM table_name
WHERE condition
;

Exploring the Database
SELECT * FROM Instructor;

Problem:
Insert a new instructor record with id 4 for Sandip Saha who lives in Edmonton, CA into the "Instructor" table.

Solution:
INSERT INTO Instructor(ins_id, lastname, firstname, city, country)
VALUES(4, 'Saha', 'Sandip', 'Edmonton', 'CA');
SELECT * FROM Instructor;

Problem:
Insert two new instructor records into the "Instructor" table. First record with id 5 for John Doe who lives in Sydney, AU. Second record with id 6 for Jane Doe who lives in Dhaka, BD.

Solution:
INSERT INTO Instructor(ins_id, lastname, firstname, city, country)
VALUES(5, 'Doe', 'John', 'Sydney', 'AU'), (6, 'Doe', 'Jane', 'Dhaka', 'BD');
SELECT * FROM Instructor;


Problem:
Insert a new instructor record with id 7 for Antonio Cangiano who lives in Vancouver, CA into the "Instructor" table.
Solution:
INSERT INTO Instructor(ins_id, lastname, firstname, city, country)
VALUES(7, 'Cangiano', 'Antonio', 'Vancouver', 'CA');

SELECT * FROM Instructor;

Problem:
Insert two new instructor records into the "Instructor" table. First record with id 8 for Steve Ryan who lives in Barlby, GB. Second record with id 9 for Ramesh Sannareddy who lives in Hyderabad, IN.
Solution:
INSERT INTO Instructor(ins_id, lastname, firstname, city, country)
VALUES(8, 'Ryan', 'Steve', 'Barlby', 'GB'), (9, 'Sannareddy', 'Ramesh', 'Hyderabad', 'IN');

SELECT * FROM Instructor;

In this example, we want to update one column of an existing row of the table.
Problem:
Update the city for Sandip to Toronto.
Solution:
UPDATE Instructor 
SET city='Toronto' 
WHERE firstname="Sandip";
SELECT * FROM Instructor;

In this example, we want to update multiple columns of an existing row of the table.
Problem:
Update the city and country for Doe with id 5 to Dubai and AE respectively.
Solution:
UPDATE Instructor 
SET city='Dubai', country='AE' 
WHERE ins_id=5;
SELECT * FROM Instructor;

Problem:
Update the city of the instructor record to Markham whose id is 1.
Solution
UPDATE Instructor 
SET city='Markham' 
WHERE ins_id=1;

SELECT * FROM Instructor;

Problem:
Update the city and country for Sandip with id 4 to Dhaka and BD respectively.
Solution
UPDATE Instructor 
SET city='Dhaka', country='BD' 
WHERE ins_id=4;

SELECT * FROM Instructor;

In this example, we want to remove a row from the table.
Problem:
Remove the instructor record of Doe whose id is 6.
Solution:
DELETE FROM instructor
WHERE ins_id = 6;
SELECT * FROM Instructor;

Problem:
Remove the instructor record of Hima.
Solution
DELETE FROM instructor
WHERE firstname = 'Hima';

SELECT * FROM Instructor;

WEEK 1 - BASIC SQL
1.11 Practice Quiz

1.
Question 1 Which of the following statements are correct about databases?
All  CORRECT
A database can be populated with data and be queried 
There are different types of databases - Relational, Hierarchical, No SQL, etc.
A database is a repository of data

2.
Question 2 True or False: A SELECT statement is used to retrieve data from a table.
Correct. A SELECT statement is used to retrieve data from a table. CORRECT
Incorrect. A SELECT statement is used to retrieve data from a table.

3.
Question 3 You are working on a Film database, with a FilmLocations table. 
You want to retrieve a list of films that were released in 2019.
You run the following query but find that all the films in the FilmLocations table are listed. 
SELECT Title,ReleaseYear, Locations FROMFilmLocations;
What is missing?

A LIMIT clause to limit the results to films released in 2019.
Nothing, the query is correct.
A WHERE clause to limit the results to films released in 2019. CORRECT
A DINSTINCT clause to specify a distinct year.

4.
Question 4 Which of the following statements would you use to add a new instructor to the Instructor table.

INSERT INTO Instructor
(ins_id, lastname, firstname, city, country)
VALUES(4, 'Doe', 'John', 'Sydney', 'AU'); CORRECT

ADD INTO Instructor(ins_id, lastname, firstname, city, country)
VALUES(4, 'Doe', 'John', 'Sydney', 'AU');

SELECT Instructor(ins_id, lastname, firstname, city, country)
FROM VALUES(4, 'Doe', 'John', 'Sydney', 'AU');

UPDATE Instructor(ins_id, lastname, firstname, city, country)
WITH VALUES(4, 'Doe', 'John', 'Sydney', 'AU');

5.
Question 5 What is the function of a WHERE clause in an UPDATE statement?

A WHERE clause enables you to list the column and data to be updated. 
A WHERE clause is never used with an UPDATE statement.
A WHERE clause enables you to specify a new table to receive the updates.
A WHERE clause enables you to specify which rows will be updated. CORRECT

A WHERE clause is used to restrict the rows in the result set. If you run a UPDATE statement without a WHERE clause, you will update all the rows in the table.

WEEK 1 - BASIC SQL
1.12 Graded Quiz

1.
Question 1 True or False: The SELECT statement is called a query, and the output we get from executing the query is called a result set.
TRUE

2.
Question 2 True or False: The INSERT statement can be used to insert multiple rows in a single statement.
TRUE 

3.
Question 3
Assume there exists an INSTRUCTOR table with several columns including FIRSTNAME, LASTNAME, etc. 
Which of the following is the most likely result set for the following query:
SELECT DISTINCT(FIRSTNAME) FROM INSTRUCTOR;

a) 	LEON
LEON
PAUL
PAUL
b) 	LEON
PAUL
JOE
c) 	LEON
PAUL
LEON
JOE
d) 	LEON KATSNELSON
PAUL ZIKOPOLOUS
JOE SANTARCANGELO

DISTINCT precedes the column FIRSTNAME so we will get unique values for FIRSTNAME
a is false because it contains duplicates
b is true because it contains unique/distinct values for the column FIRSTNAME
c is false because it contains duplicates
d is false because it contains two columns 

4.
Question 4 What does the following SQL statement do?
UPDATE INSTRUCTOR SET LASTNAME = 'Brewster' WHERE LASTNAME = 'Smith'
Changes all rows for the instructor with a last name of Smith to have a last name of Brewster. CORRECT
Change the row for the instructor with a last name of Brewster to have a last name of Smith.
Change all rows in the table to have a last name of Smith.
Change all rows in the table to have a last name of Brewster.

The UPDATE statement modifies/updates values in the rows
We set column=value using the condition in WHERE
So, we choose the rows for which LASTNAME=’Smith’
For these rows we define LASTNAME=’Brewster’

5.
Question 5 Which of the following SQL statements will delete the authors with IDs of A10 and A11?
DELETE FROM AUTHOR WHERE AUTHOR_ID IS ('A10', 'A11') 
DELETE FROM AUTHOR WHERE AUTHOR_ID IN ('A10', 'A11') CORRECT
DELETE ('A10', 'A11') FROM AUTHOR
D: DELETE AUTHOR_ID IS ('A10', 'A11') FROM AUTHOR

Syntax for DELETE statement is
DELETE FROM table_name
WHERE column=value;
ATTENTION, to choose two rows we use the WHERE clause like this, WHERE column IN (value1, value2)

