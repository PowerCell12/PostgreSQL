create view view_performance_rating as 
select
	first_name,
	last_name,
	job_title,
	salary,
	department_id,
	case
	
		when salary >= 25000 and substring(job_title, 1, 6) = 'Senior' THEN 'High-performing Senior'
		when salary >= 25000 and substring(job_title, 1, 6) != 'Senior' then 'High-performing Employee'
		ELSE 'Average-performing'
	end as performance_rating
	
from employees; 
