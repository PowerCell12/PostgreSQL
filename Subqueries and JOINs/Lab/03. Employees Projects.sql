select 
	e.employee_id,
	concat(first_name, ' ', last_name),
	pr.project_id,
	pr.name
from employees as e
join employees_projects as p
on e.employee_id = p.employee_id
join  projects as pr
on pr.project_id = p.project_id
where pr.project_id = 1
