create or replace function fn_count_employees_by_town(town_name varchar(20))
returns integer as
$$
	BEGIN 
		
		return COUNT(*) as count from towns left join addresses using(town_id) left join employees using(address_id) where town_name = towns.name; 
		
	
	
	END;
$$
LANGUAGE plpgsql;
