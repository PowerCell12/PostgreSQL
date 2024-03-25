select
	concat(o."name", ' - ', a."name"),
 	o.phone_number,
	c.cage_id
from owners as o
join animals  as a
on a.owner_id = o.id
join animals_cages  as c
on c.animal_id = a.id 
order by o."name", a."name" desc
