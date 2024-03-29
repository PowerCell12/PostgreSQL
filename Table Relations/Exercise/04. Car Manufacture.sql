create table manufacturers(

	id serial primary key,
	name text
);

create table models(

	id INTEGER primary key GENERATED BY DEFAULT AS IDENTITY 
   (START WITH 1000 INCREMENT BY 1),
	model_name text,
	manufacturer_id integer,
	
	CONSTRAINT fk_models_manufacturers
		FOREIGN KEY(manufacturer_id)
		REFERENCES manufacturers(id)
);

create table production_years(

	id serial primary key,
	established_on date,
	manufacturer_id integer,

	
	CONSTRAINT fk_production_years_manufacturers
		FOREIGN KEY(manufacturer_id)
		REFERENCES manufacturers(id)
);



insert into manufacturers(name)
VALUES
	('BMW'),
	('Tesla'),
	('Lada');
	
	
insert into models(model_name, manufacturer_id)
VALUES
	('X1', 1),
	('i6', 1),
	('Model S', 2),
	('Model X', 2),
	('Model 3', 2),
	('Nova', 3);
	
	
insert into production_years(established_on, manufacturer_id)
VALUES 
	('1916-03-01', 1),
	('2003-01-01', 2),
	('1966-05-01', 3);
	
	

	
	
	




