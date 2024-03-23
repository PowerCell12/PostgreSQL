create or replace function fn_courses_by_client(phone_num VARCHAR(20))
returns integer as
$$
	
	BEGIN
	
		return COUNT(co.id) from clients join courses as co on clients.id = co.client_id where clients.phone_number = phone_num ;
		
	
	
	END;


$$
LANGUAGE plpgsql;
