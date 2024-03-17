SELECT
	b.booking_id,
    b.starts_at::date,
    b.apartment_id,
    concat(c.first_name, ' ', c.last_name) as customer_name
from bookings as b
RIGHT JOIN customers as c
 	USING(customer_id)
order by concat(c.first_name, ' ', c.last_name)
limit 10
