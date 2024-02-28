create view view_addresses AS
SELECT concat(e.first_name, ' ', e.last_name) as "Full Name", e.department_id, concat(a.number, ' ', a.street) as "Address" from employees as e, addresses as a where e.address_id = a.id order by concat(a.number, ' ', a.street);
