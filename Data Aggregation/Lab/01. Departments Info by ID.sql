select 
	department_id,
    COUNT(department_id) as "emplooyee_count"
FROm employees
GROUP BY department_id
order by department_id;
