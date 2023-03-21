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

--finding second highest salary
---get highest salary first
select max(SALARY) from EMPLOYEES;

---highest after 24K
select max(SALARY)
from EMPLOYEES
where SALARY < 24000;

---combining two previous queries
select max(SALARY)
from EMPLOYEES
where SALARY < (select max(SALARY) from EMPLOYEES);

---employee information who is making second highest salary
select * from EMPLOYEES
where SALARY = (select max(SALARY)
       from EMPLOYEES
       where SALARY < (select max(SALARY) from EMPLOYEES));


--------------------------------
select * from EMPLOYEES
    order by SALARY desc;

select *
from EMPLOYEES
where rownum < 11;

--list the employees who makes top 10 salary

--get the first 10 people then order them high to low based on salary
select *
from EMPLOYEES
where rownum < 11
order by SALARY desc;

--order all employees based on salary high to low, display only first 10 result
select *
from (select *
      from EMPLOYEES
      order by SALARY desc)
where rownum < 11;



