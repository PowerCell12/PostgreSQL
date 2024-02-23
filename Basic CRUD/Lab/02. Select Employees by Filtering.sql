select id, first_name || ' ' || last_name as "full_name", job_title, salary from employees
where salary > 1000.00
ORDER by id;
