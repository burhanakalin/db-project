select * from TESTERS;

select * from DEVELOPERS;

---------------

select * from TESTERS
UNION
select * from DEVELOPERS;

-----------------

select * from TESTERS
UNION ALL
select * from DEVELOPERS;

-----------------

select * from TESTERS
MINUS
select * from DEVELOPERS;

-----------------

select names from DEVELOPERS
intersect
select names from TESTERS;

--how to find duplicate names in employees table
select first_name, count(*)
from EMPLOYEES
group by first_name
having count(*) > 1;


