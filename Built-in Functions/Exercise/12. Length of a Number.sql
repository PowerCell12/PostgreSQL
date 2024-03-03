SELECT
	population::text,
	length(population::text) as "length"
FROM 
	countries;
