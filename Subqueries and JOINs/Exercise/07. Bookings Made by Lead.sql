select
	b.apartment_id,
	b.booked_for,
	c.first_name,
	c.country
from bookings as b
join customers as c
 using(customer_id)
where c.job_type = 'Lead'
