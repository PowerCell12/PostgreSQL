select
	a.name, 
	EXTRACT('Year' FROM a.birthdate),
	at.animal_type
from animals as a
join animal_types as at ON at.id = a.animal_type_id
where a.owner_id is null and at.animal_type <> 'Birds' and age('01-01-2022', a.birthdate) < interval '5 years'
order by a.name
