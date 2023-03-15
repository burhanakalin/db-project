SELECT * FROM EMPLOYEES ;
-- reads all column from employees table

select * from DEPARTMENTS;
-- reads all column from departments table

select first_name from EMPLOYEES;
-- reads first name column from employee table

select city from LOCATIONS;
--display city names

select first_name, last_name, salary from EMPLOYEES;
-- get me first name, last name and salary

select street_address, postal_code from LOCATIONS;
--get me street address and postal code

select distinct first_name from EMPLOYEES;
-- distinct keyword removes duplicates (Just for read, does not change the original data)

