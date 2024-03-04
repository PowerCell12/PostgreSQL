select 
	EXTRACT(YEAR from booked_at),
	extract(MONTH from booked_at),
	extract(DAY from booked_at),
	extract(HOUR from booked_at),
	extract(MINUTE from booked_at),
	ceiling(extract(SECOND from booked_at))
from bookings;
