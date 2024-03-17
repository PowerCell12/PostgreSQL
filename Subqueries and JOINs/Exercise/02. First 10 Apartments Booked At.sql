SELECT	
	a.name,
    a.country,
    b.booked_at::DATE
from apartments as a
left join bookings as b
	using(booking_id)
limit 10
