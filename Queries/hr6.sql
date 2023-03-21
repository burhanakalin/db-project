--how can we rename the column that we displayed
select first_name as "given_name", LAST_NAME as "surname"
from EMPLOYEES;

--text functions, string manipulation
--java first_name+" "+last_name
--in sql concat is ||

select first_name||' '||last_name as "full_name"
from EMPLOYEES;

--Task;
--add @gmail.com and name new column to full_email
select EMAIL||'@gmail.com' as "full_email" from EMPLOYEES;

--making all lower case
select lower(EMAIL||'@gmail.com') as "full_email" from EMPLOYEES;

--upper case
select upper(EMAIL||'@gmail.com') as "full_email" from EMPLOYEES;

--length(value)
select first_name, length(first_name) as "lenght name"
from EMPLOYEES
order by "lenght name" desc;

--substr(colName, begIndex, NumberOfChar)
select substr(first_name,0,1)||'.'||substr(last_name,0,1) as "initials"
from EMPLOYEES;


select substr(first_name,0,1)||'.'||substr(last_name,0,1) as "initials",
       first_name||' '||last_name as "full_name",
       lower(EMAIL||'@gmail.com') as "full_email" from EMPLOYEES;


--Create a VIEW Table
CREATE VIEW EmailList_Burhan as select substr(first_name,0,1)||'.'||substr(last_name,0,1) as "initials",
       first_name||' '||last_name as "full_name",
       lower(EMAIL||'@gmail.com') as "full_email" from EMPLOYEES;

select "full_name"
from EmailList_Burhan;

--deletes the view
drop view EMAILLIST_Burhan;

