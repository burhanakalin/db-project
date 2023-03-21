select * from EMPLOYEES;

select * from DEPARTMENTS;

select first_name, last_name, DEPARTMENT_NAME
from EMPLOYEES e left join DEPARTMENTS d
on d.DEPARTMENT_ID = e.DEPARTMENT_ID;

select CUSTOMER_ID, first_name, last_name, address, phone
from customer left join ADDRESS
on customer.ADDRESS_ID = address.ADDRESS_ID
where address.ADDRESS_ID is null;

select * from customer full outer join ADDRESS
on customer.ADDRESS_ID = ADDRESS.ADDRESS_ID
where CUSTOMER.ADDRESS_ID is null or
      ADDRESS.ADDRESS_ID is null;

