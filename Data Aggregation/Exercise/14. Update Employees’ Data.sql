UPDATE employees
SET salary = salary + 2500,
    job_title = CONCAT('Senior', ' ', job_title)
WHERE hire_date < '2015-01-16';

UPDATE employees
SET salary = salary + 1500,
    job_title = CONCAT('Mid-', job_title)
WHERE hire_date  >= '2015-01-16' AND hire_date <  '2020-03-04';

select
	first_name,
	job_title,
	salary
from employees;
