select 
	c.id,
	c.make,
	c.mileage,
	count(cou.id) as count_of_courses,
	ROUND(AVG(cou.bill), 2)
from cars as c
left join courses as cou
on cou.car_id = c.id
group by c.id, c.make, c.mileage
having count(cou.id) <> 2
order by count(cou.id) desc, c.id
