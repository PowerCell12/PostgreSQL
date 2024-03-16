select 
 	e.employee_id,
	concat(e.first_name, ' ', e.last_name),
	d.department_id,
	d.name
from employees as e


join departments as d
on d.manager_id  = e.employee_id



order by employee_id
lIMIt 5      
