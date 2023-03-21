--get me all employees firstname, lastname and their managers first and lastname

select * from EMPLOYEES;

select EMPLOYEE_ID, first_name, last_name, manager_id
from EMPLOYEES;

select e1.employee_id, e1.first_name,e1.last_name, e1.manager_id, e2.employee_id, e2.first_name, e2.last_name
from EMPLOYEES e1 join EMPLOYEES e2
on e1.MANAGER_ID = e2.EMPLOYEE_ID
order by e1.EMPLOYEE_ID;
