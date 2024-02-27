update employees
	set salary = salary + 1500, job_title = concat('Senior', ' ', job_title)
where hire_date BETWEEN '1998-01-01' and '2000-01-07';
