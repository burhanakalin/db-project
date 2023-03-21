--find the highest 14th salary
--list salary high to low without duplicate values
select min(SALARY)
from (select distinct SALARY
      from EMPLOYEES
      order by SALARY desc)
where rownum <= 14;

--find employee info who is making 14th highest salary
select *
from EMPLOYEES
where SALARY = (select min(SALARY)
                from (select distinct SALARY
                      from EMPLOYEES
                      order by SALARY desc)
                where rownum <= 14);

--find employee info who is making 14th highest salary (with duplicates)

select *
from EMPLOYEES
where SALARY = (select min(SALARY)
                from (select *
                      from EMPLOYEES
                      order by SALARY desc)
                        where rownum <= 14);