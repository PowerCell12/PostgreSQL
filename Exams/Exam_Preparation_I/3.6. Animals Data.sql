SELECT
	a.name,
    at.animal_type,
    to_char(a.birthdate, 'dd.mm.yyyy')
    
from animals as a
join animal_types as at
on a.animal_type_id = at.id
order by a.name
