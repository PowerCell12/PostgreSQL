SELECT
	d.first_name,
	d.last_name,
	c.make,
	c.model,
	c.mileage
from drivers as d
join cars_drivers as cd
on cd.driver_id = d.id
join cars as c
on c.id = cd.car_id
where c.mileage is not null
order by c.mileage desc, d.first_name
