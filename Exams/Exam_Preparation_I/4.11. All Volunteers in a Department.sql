create or replace function fn_get_volunteers_count_from_department(searched_volunteers_department varchar(30))
returns INTEGER AS
$$

	BEGIN
		

		return (select COUNT(*) from volunteers join volunteers_departments ON volunteers_departments.id = volunteers.department_id where volunteers_departments.department_name = searched_volunteers_department );
		
	
	
	
	END;

$$
LANGUAGE plpgsql;
