create table addresses(

	id serial primary key,
	name varchar(100) not null


);


create table categories(

	id serial primary key,
	name varchar(10) not null

);


create table clients(

	id serial primary key,
	full_name varchar(50) not null,
	phone_number varchar(20) not null

);


create table drivers(

	id serial primary key,
	first_name varchar(30) not null,
	last_name varchar(30) not null,
	age integer check (age > 0) not null, -- maybe error
	rating numeric(10, 2) default 5.5 -- maybe error
);



create table cars(

	id serial primary key,
	make varchar(20) not null,
	model varchar(20),
	year integer default 0 check (year  > 0) not null,
	mileage integer default 0 check (mileage > 0),
	condition char(1) not null, 
	category_id integer not null,
	
	CONSTRAINT fk_cars_categories
		FOREIGN KEY(category_id)	
		REFERENCES categories(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);



create table courses(

	id serial primary key,
	from_address_id integer not null,
	start TIMESTAMP not null, 
	bill numeric(10, 2) default 10 check (bill > 0),
	car_id integer not null,
	client_id integer not null,
	
	CONSTRAINT fk_courses_addresses
		FOREIGN KEY(from_address_id)
		REFERENCES addresses(id)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	
	CONSTRAINT fk_courses_cars
		FOREIGN KEY(car_id)
		REFERENCES cars(id)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	
	
	CONSTRAINT fk_courses_clients
		FOREIGN KEY(client_id)
		REFERENCES clients(id)
		ON UPDATE CASCADE
		ON DELETE CASCADE
);


create table cars_drivers(


	car_id integer not null,
	driver_id integer not null,
	
	CONSTRAINT fk_cars_drivers_cars
		FOREIGN KEY(car_id)
		REFERENCES cars(id)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	
	
	CONSTRAINT fk_cars_drivers_drivers
		FOREIGN KEY(driver_id)
		REFERENCES drivers(id)
		ON UPDATE CASCADE
		ON DELETE CASCADE
);




