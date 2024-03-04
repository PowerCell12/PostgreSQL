create table bookings_calculation as 
select booked_for from bookings where apartment_id = 93;


alter table bookings_calculation add column multiplication numeric;
alter table bookings_calculation add column modulo numeric;


update bookings_calculation
	set multiplication = booked_for * 50,
	modulo = booked_for % 50;
	
