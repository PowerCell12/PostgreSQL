SELECT
	o.name,
	count(*)
from owners as o
join animals  as a
on a.owner_id = o.id
group by o.name
order by count(*) desc, o.name
limit 5
