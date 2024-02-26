select id, concat(first_name, ' ', middle_name, ' ', last_name) as "Full name", hire_date as "Hire Date" from employees order by hire_date OFFSET 9;
