--I want to see first name, last name phone number of David(s)
SELECT first_name, last_name, PHONE_NUMBER
from EMPLOYEES
where first_name = 'David' and last_name = 'Lee';

-- get me all information who is making more than 7000 salary
SELECT * from EMPLOYEES
where salary > 7000;

--get me email of who is making less than 4000
SELECT email from EMPLOYEES
where SALARY < 4000;

--get me all info who is working as IT_PROG or SA_REP
SELECT * from EMPLOYEES
where JOB_ID = 'IT_PROG' or JOB_ID = 'SA_REP';

-- get me first name, last name salary who is making more than 5000 and less than 10000
SELECT first_name, last_name, SALARY
from EMPLOYEES
--where SALARY >= 5000 and SALARY <= 10000;
where SALARY between 5000 and 10000;

select *
from EMPLOYEES
where EMPLOYEE_ID between 130 and 170;

--get me all info where employee_id 135 176 154 129
select *
from EMPLOYEES
--where EMPLOYEE_ID = 135 or EMPLOYEE_ID =176 or EMPLOYEE_ID =154 or EMPLOYEE_ID =129;
where EMPLOYEE_ID in(135, 176, 154, 129)

--get me city where country_id IT, US, UK
SELECT CITY, COUNTRY_ID
FROM LOCATIONS
WHERE COUNTRY_ID IN ('IT','US','UK');

