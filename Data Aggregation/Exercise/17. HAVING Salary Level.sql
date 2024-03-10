select
	department_id,
	count(department_id),
	case		
		When avg(salary) > 50000 then 'Above average'
		when avg(salary) <= 50000 then 'Below average'
	end as salary_level
	

from employees
group by department_id
having avg(salary) > 30000
order by department_id;
