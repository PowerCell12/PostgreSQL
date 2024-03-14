create table customers(

	id serial primary key,
	customer_name text

);

create table contacts(

	id serial primary key,
	contact_name text,
	phone text,
	email text,
	customer_id integer,
	
	
	CONSTRAINT fk_contacts_customers
		FOREIGN KEY(customer_id)
		REFERENCES customers(id)
		ON DELETE SET NULL 
		On UPDATE CASCADE
);

insert into customers(customer_name)
Values
	('BlueBird Inc'),
	('Dolphin LLC');
	
	
insert into contacts(contact_name, phone, email, customer_id)
VALUEs
	('John Doe', '(408)-111-1234', 'john.doe@bluebird.dev', 1),
	('Jane Doe', '(408)-111-1235', 'jane.doe@bluebird.dev', 1),
	('David Wright', '(408)-222-1234', 'david.wright@dolphin.dev', 2);
	
	
delete FROM customers
where id = 1;



