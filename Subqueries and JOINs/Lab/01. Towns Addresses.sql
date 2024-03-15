SELECT	
	T.town_id,
    T.name,
    A.address_text
from towns as T
join addresses as A
on T.town_id = A.town_id
where T.name = 'Sofia' or T.name = 'Carnation' or T.name = 'San Francisco'
order by T.town_id, A.address_id;
