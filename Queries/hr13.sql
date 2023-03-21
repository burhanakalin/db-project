--get me first_name, last_name and department name for all employees
select first_name, last_name, DEPARTMENT_NAME
from EMPLOYEES e left join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

--where employees does not have department
select first_name, last_name, DEPARTMENT_NAME
from EMPLOYEES e left join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID
where e.DEPARTMENT_ID is null;

--get me first_name, last_name and department name, city for all employees
select first_name,last_name, department_name, CITY
from EMPLOYEES e join departments d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID
join LOCATIONS l
on d.LOCATION_ID = d.LOCATION_ID;

--get me first_name, last_name and department name, city, country_name for all employees
select first_name,last_name, department_name, CITY, COUNTRY_NAME
from EMPLOYEES e join departments d
                      on e.DEPARTMENT_ID = d.DEPARTMENT_ID
                 join LOCATIONS l
                      on d.LOCATION_ID = d.LOCATION_ID
                 join COUNTRIES c
                      on c.COUNTRY_ID = l.COUNTRY_ID;
