--04 TRUNCATE TABLE

--TRUNCATE TABLE statement
-- IBM Db2 on Cloud

/*
GENERAL THEORY:
Deletes data in a table but not the table itself
Delete all of the rows in a table, the rows remain but their data are deleted

(While you can use the DELETE statement without a WHERE clause to do this, it is generally quicker and more efficient to truncate the table instead.)
*/

--GENERAL SYNTAX
--1
TRUNCATE TABLE table_name;
--2
TRUNCATE TABLE table_name
IMMEDIATE
;

--The IMMEDIATE specifies to process the statement immediately and that it cannot be undone

--EXAMPLE 1- truncate the table "people"

CREATE TABLE people (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);
INSERT INTO people VALUES
    (1,'Brown', 'Mary', 'Whitelane 2', 'Bristol'),
    (2,'White', 'John', 'Blacklane 2', 'Sheffield');
 SELECT * FROM people; 

TRUNCATE TABLE people
IMMEDIATE
;
SELECT * FROM people;

--we delete the data in all rows in the table author, but we keep the table
--So we keep the table but without any data



--EXAMPLE 2-truncate the table "animals"

CREATE TABLE animals
(
    ID INTEGER NOT NULL,
    ANIMAL VARCHAR(20),
    QUANTITY INTEGER
    );
INSERT INTO animals VALUES
    (1,'Rabbit',3),
    (2,'Squirrel',4),
    (3,'Canary',2);
SELECT * FROM  animals;

TRUNCATE TABLE  animals IMMEDIATE;

SELECT * FROM  animals;
