select 
	r.start_point,
	r.end_point,
	c.id,
	concat(c.first_name, ' ', c.last_name)
from routes as r
join campers as c
on c.id = r.leader_id;
