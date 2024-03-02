alter TABLE countries add column capital_code character(2);

update  countries
	SET capital_code = left(capital , 2);
	
