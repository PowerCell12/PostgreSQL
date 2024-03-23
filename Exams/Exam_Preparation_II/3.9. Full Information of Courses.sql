select
	ad.name,
	case
		when extract('hour' from co.start) between  6 and 20  then 'Day'
		else 'Night'
	end,
	co.bill,
	c.full_name,
	ca.make,
	ca.model,
	cat.name
from courses as co
left join addresses as ad
on ad.id = co.from_address_id
left join clients as c
on co.client_id = c.id
left join cars as ca
on co.car_id = ca.id
left join categories as cat
on ca.category_id = cat.id
order by co.id


