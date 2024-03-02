CREATE VIEW view_continents_countries_currencies_details as
SELECT 
	concat(con.continent_name, ':', ' ', con.continent_code) as "Continent Details",
	concat_ws(' ', cou.country_name, '-', cou.capital, '-', cou.area_in_sq_km, '-', 'km2') as "Country Information", 
	concat(cur.description, ' ', '(', cur.currency_code, ')') as "Currencies"
FROM 
	continents as con,
	countries as cou,
	currencies as cur
WHERE
	cou.currency_code = cur.currency_code AND cou.continent_code = con.continent_code
ORDER BY "Country Information", "Currencies";
