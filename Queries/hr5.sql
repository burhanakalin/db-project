--how to find employee's information of who is making highest salary in the company

--get me the highest salary
select max(SALARY) from EMPLOYEES;

--highest salary employee information
select *
from EMPLOYEES
where SALARY = 24000;

--subquery
select *
from EMPLOYEES
where SALARY = (select max(salary) from EMPLOYEES);

