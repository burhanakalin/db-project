/*
create table syntax:
create table TableName(
colName1 DataType Constraints,
colName2 DataType Constraints(optional)
colName3 DataType Constraints,
...
);
*/

CREATE TABLE ScrumTeame_Burhan(
    Emp_ID INTEGER PRIMARY KEY,
    FirstName varchar(30) not null,
    LastName varchar(30),
    JobTitle varchar(20)

);

select * from ScrumTeame_Burhan
order by Emp_ID asc ;


/*
INSERT INTO tableName (column1, column2,...)
VALUES (value1, value2 ... );
*/

INSERT INTO ScrumTeame_Burhan (emp_id, firstname, lastname,jobtitle)
VALUES (1, 'Severus', 'Snape','Tester');

INSERT INTO ScrumTeame_Burhan (Emp_ID, FirstName, LastName, JobTitle)
VALUES(2,'Ahmet','Yalcin','ScrumMaster');

INSERT INTO ScrumTeame_Burhan VALUES(3,'Pedro','Fernandes','Developer');

--how to update data
/*
UPDATE table_name
SET column1 = value1,
column2 = value2 , ...
WHERE condition;
*/
UPDATE ScrumTeame_Burhan
SET JOBTITLE = 'Tester'
where Emp_ID= '3';

--Delete from table
/*
DELETE FROM table_name
WHERE condition;
*/
DELETE ScrumTeame_Burhan
WHERE Emp_ID = 3;

commit;
