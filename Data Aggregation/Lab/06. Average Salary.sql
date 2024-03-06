select 
	department_id,
	avg(salary)
from employees
GROUP BY department_id
order by department_id;
