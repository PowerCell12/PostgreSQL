SELECT
	id,
	first_name,
	last_name,
	salary::"numeric",
	department_id,
	case 
		WHEN department_id = 1 then 'Management'
		when department_id = 2 then 'Kitchen Staff'
		when department_id = 3 then 'Service Staff'
		ELSE 'Other'
	end
FROM employees
ORDER BY id;
