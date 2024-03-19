create  PROCEDURE sp_increase_salaries(department_name TEXT)
LANGUAGE plpgsql
as 
$$
	BEGIN
    	
        update  employees as e
        	set salary = salary + salary * 0.05
        from departments as d
        where e.department_id = d.department_id and d.name = department_name ;
    ENd;
$$;
