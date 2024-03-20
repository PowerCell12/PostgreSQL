create or replace FUNCTION fn_calculate_future_value(initial_sum INTEGER, yearly_interest_rate DECIMAL, number_of_years INTEGER)
returns NUMERIC as 
$$
	DECLARE
    	count INTEGER;
    BEGIN
        COUNT := 0;
        
        while (COUNT < number_of_years) LOOP
        	 initial_sum := initial_sum + initial_sum * yearly_interest_rate;
             COUNT := COUNT + 1;
        end loop;
  			
        return initial_sum::NUMERIC;
  
    END;
$$
LANGUAGE plpgsql
