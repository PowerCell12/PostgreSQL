create or replace FUNCTION fn_full_name(first_name text, last_name text)
returns text AS
$$
	
    BEGIN
    	
        if first_name is null and last_name is null then return null;
        ELSIF first_name is null and last_name is not null then return initcap(last_name);
        elseif first_name is not null and last_name is null then return initcap(first_name);
        else return concat(initcap(first_name), ' ', initcap(last_name));
        end if;
        
    END;


$$
LANGUAGE plpgsql
