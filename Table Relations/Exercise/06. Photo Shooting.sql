create table customers(

	id serial PRIMARY KEY,
	name text,
	"date" date
);

create table photos(

	id serial PRIMARY KEY,
	url text,
	place text,
	customer_id integer,
	
	CONSTRAINT fk_photos_customers
		FOREIGN KEY(customer_id)
		REFERENCES customers(id)
);



insert into customers(name, "date")
values
	('Bella', '2022-03-25'),
	('Philip', '2022-07-05');
	
	
insert into photos(url, place, customer_id)
VALUES
	('bella_1111.com', 'National Theatre', 1),
	('bella_1112.com', 'Largo', 1),
	('bella_1113.com', 'The View Restaurant', 1),
	('philip_1121.com', 'Old Town', 2),
	('philip_1122.com', 'Rowing Canal', 2),
	('philip_1123.com', 'Roman Theater', 2);
