select
	cl.full_name,
	count(car_id),
	sum(co.bill)
from clients as cl
join courses as co
on cl.id = co.client_id
where substring(cl.full_name, 2, 1) = 'a'
group by cl.full_name
HAVING count(car_id) > 1
order by cl.full_name
