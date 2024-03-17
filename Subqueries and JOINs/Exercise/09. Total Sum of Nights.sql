select
	a.name as "name",
	sum(b.booked_for) as "sum"
from apartments as a
join bookings as b
 using(apartment_id)
group by a.name
order by a.name
