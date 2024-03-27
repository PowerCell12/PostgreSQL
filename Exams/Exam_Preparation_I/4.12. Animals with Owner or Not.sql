create or replace procedure sp_animals_with_owners_or_not(animal_name varchar(30), out final text)
as $$

	BEGIN
	
		IF (SELECT owner_id FROM animals WHERE animal_name = name) IS NULL THEN final := 'For adoption';
		end if;
	
	END;
	

$$
LANGUAGE plpgsql;
