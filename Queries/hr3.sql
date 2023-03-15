--get me all info who is working as IT_PROG OR SA_REP
SELECT *
FROM EMPLOYEES
WHERE JOB_ID IN('IT_PROG', 'SA_REP');

--HOW MANY EMPLOYEE WORK AS IT_PROG OR SA_REP
SELECT count(*)
FROM EMPLOYEES
WHERE JOB_ID IN('IT_PROG', 'SA_REP');

--how many employees making salary more than 8000
select count(*)
from EMPLOYEES
where SALARY > 8000;

--how many unique first names we have
select count(distinct first_name)
from EMPLOYEES;

--get me all employees based on who is making more salary to low salary
select * from EMPLOYEES
order by SALARY desc ;

--desc 9-0 Z-A
--asc 0-9 A-Z

--get me all employees based on who is making low salary to high salary
select * from EMPLOYEES
order by SALARY asc ;

--get me all employees info order by alphabetical based on first name
select * from EMPLOYEES
order by first_name ;
-- NOTE: order by is default asc

-- get me all employees whose fist name start with 'C'
select * from EMPLOYEES
where first_name like 'C%';

--get me 5 letter first name where the middle char is 'z'
select * from EMPLOYEES
where first_name like '__z__';

--get me first name where second char is u
select first_name from EMPLOYEES
where first_name like '_u%';

--find ne minimum salary
select min(SALARY) from EMPLOYEES;

--find me maximum salary
select max(SALARY) from EMPLOYEES;

--find me average salary
select avg(SALARY) from EMPLOYEES;
--round
select round(avg(SALARY), 2) from EMPLOYEES;

--find me summary of salaries
select sum(SALARY) from EMPLOYEES;






