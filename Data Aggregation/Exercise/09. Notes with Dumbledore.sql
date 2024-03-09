select 
	last_name,
    count(notes)
 from wizard_deposits
 where notes LIKE '%Dumbledore%'
 GROUP by last_name
 
