CREATE TABLE employees(
	id SERIAL NOT NULL PRIMARY KEY,
	first_name CHARACTER VARYING(30),
	last_name CHARACTER VARYING(50),
	hiring_date DATE DEFAULT '2023-01-01',
	salary NUMERIC(10, 2),
	devices_number int
);

CREATE TABLE departments(
	
	id SERIAL PRIMARY KEY NOT NULL,
	name CHARACTER VARYING(50),
	code CHARACTER(3),
	description TEXT
);

CREATE TABLE issues(
	id SERIAL PRIMARY KEY UNIQUE,
	description CHARACTER VARYING(150),
	"date" DATE,
	start timestamp
);
