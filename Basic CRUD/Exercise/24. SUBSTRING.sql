create view view_initials as 
select SUBSTRING(first_name from 1 for 2) as "initial", last_name from employees order by last_name;
