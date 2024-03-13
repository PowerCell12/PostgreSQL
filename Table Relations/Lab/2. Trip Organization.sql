select 
	v.driver_id,
	v.vehicle_type,
	concat(first_name, ' ', last_name) as driver_name
from vehicles as v
join campers
on v.driver_id = campers.id;
