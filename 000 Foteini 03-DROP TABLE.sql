--03 DROP TABLE

--DROP TABLE statemenet
-- IBM Db2 on Cloud

/*
GENERAL THEORY:
We use the DROP TABLE statement to delete an existing table
Deletes a whole table
The table is deleted from the database
If you delete a table that contains data, by default the data will be deleted alongside the table.
WARNING: before dropping a table ensure that it doesn't contain important data that can't be recovered easily. 
Note that if the table does not already exist and you try to drop it, you will see an error like XXX.YYY is an undefined name. 
It is quite common to issue a DROP before doing a CREATE, in test and development scenarios.
*/
--GENERAL SYNTAX:

DROP TABLE table_name;

--EXAMPLE 1
--It is quite common to issue a DROP before doing a CREATE in test and development scenarios. Here is an example:

DROP TABLE COUNTRY;
CREATE TABLE COUNTRY
(ID integer PRIMARY KEY NOT NULL,
CCODE char(2),
NAME varchar(60)
);
SELECT * FROM COUNTRY
