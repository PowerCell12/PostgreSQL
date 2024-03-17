SELECT
	b.booking_id,
    a.name as apartment_owner,
    a.apartment_id,
    concat(c.first_name, ' ', c.last_name) as customer_name
from bookings  as b
full join apartments  as a
 	using(booking_id)
full join customers as C
 	Using(customer_id)
order by b.booking_id, a.name, concat(c.first_name, ' ', c.last_name);
