create table products(

	product_name varchar(100)


);


insert into products(product_name)
VALUES	
	('Broccoli'),
	('Shampoo'),
	('Toothpaste'),
	('Candy');
	
	
alter table products add column id serial PRIMARY KEY;
