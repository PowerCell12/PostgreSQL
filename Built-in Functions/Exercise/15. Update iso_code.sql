update countries
	SET iso_code = UPPER(SUBSTRING(country_name, 1, 3))
where iso_code IS NULL;
