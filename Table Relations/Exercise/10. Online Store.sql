create table item_types(
	id serial primary key,
	item_type_name text
);



create table items(

	id serial primary key,
	item_name text,
	item_type_id integer,
	
	
	CONSTRAINT fk_items_item_types
		FOREIGN KEY(item_type_id)
		REFERENCES item_types(id)
);


create table cities(

	id serial primary key,
	city_name text

);

create table customers(
	
	id serial primary key,
	customer_name text,
	birthday date,
	city_id integer,
	
	
	CONSTRAINT fk_customers_cities
		FOREIGN KEY(city_id)
		REFERENCES cities(id)
);


create table orders(

	id serial primary key,
	customer_id INTEGER,
		
	CONSTRAINT fk_orders_customers
		FOREIGN KEY(customer_id)
		REFERENCES customers(id)
);

create table order_items(

	order_id integer,
	item_id integer,
	
	CONSTRAINT fk_order_items_items
		FOREIGN KEY(item_id)
		REFERENCES items(id),
	
	CONSTRAINT fk_order_items_orders
		FOREIGN KEY(order_id)
		REFERENCES orders(id),
	
	CONSTRAINT pk_order_items
		PRIMARY KEY(order_id, item_id)
)


