SELECT
	concat(a.address, ' ', a.address_2),
    b.booked_for
    
from apartments as a
join bookings as b
	USING(booking_id)
order by a.apartment_id
