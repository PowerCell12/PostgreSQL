select concat(first_name, ' ', last_name) as "Full Name", job_title, salary from employees where salary In (12500, 14000, 23600, 25000) ORDER by salary DESC
