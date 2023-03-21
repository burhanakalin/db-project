select * from SCRUMTEAME_BURHAN;

--adding column
ALTER Table SCRUMTEAME_BURHAN ADD Salary Integer;

INSERT INTO ScrumTeame_Burhan VALUES (3,'Pedro','Fernandes','Developer', null);

--update existing employee salary
UPDATE SCRUMTEAME_BURHAN SET SALARY = 10000 WHERE EMP_ID = 1;
UPDATE SCRUMTEAME_BURHAN SET SALARY = 12000 WHERE EMP_ID = 2;
UPDATE SCRUMTEAME_BURHAN SET SALARY = 15000 WHERE EMP_ID = 3;

--rename column
ALTER TABLE SCRUMTEAME_BURHAN RENAME COLUMN salary to annual_salary;

--delete, drop column
ALTER TABLE SCRUMTEAME_BURHAN DROP COLUMN annual_salary;

--how to change table
ALTER TABLE SCRUMTEAME_BURHAN RENAME TO AgileTeam_Burhan;

select * from AGILETEAM_BURHAN;

--truncate, if we want to delete all the data from table, but still keep the table structure, we use truncate
TRUNCATE TABLE AGILETEAM_BURHAN;

--if we want to delete the table and data together
DROP TABLE AgileTeam_Burhan;