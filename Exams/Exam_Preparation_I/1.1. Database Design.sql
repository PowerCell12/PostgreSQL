create table owners(	
	id serial primary key,
	name varchar(50) not NULL,
	phone_number varchar(15) not NULL,
	address varchar(50) 
);


create table animal_types(

	id serial primary key,
	animal_type varchar(30) not null
);


create table cages(

	id serial primary key,
	animal_type_id integer NOT NULL,
	
	CONSTRAINT fk_cages_animal_types
		FOREIGN KEY(animal_type_id)
		REFERENCES animal_types(id)
		ON DELETE CASCADE
        ON UPDATE CASCADE
);


create table animals(
	
	id serial primary key,
	name varchar(30) not null,
	birthdate DATE not null,
	owner_id INTEGER,
	animal_type_id integer not null,
	
	CONSTRAINT fk_animals_owners
		FOREIGN KEY(owner_id)
		REFERENCES owners(id)
		ON DELETE CASCADE
        ON UPDATE CASCADE,
	
	CONSTRAINT fk_animals_animal_types
		FOREIGN KEY(animal_type_id)
		REFERENCES animal_types(id)
		ON DELETE CASCADE
        ON UPDATE CASCADE
);


create table volunteers_departments( 

	id serial primary key,
	department_name varchar(30) not null
);


create table volunteers(

	id serial primary key,
	name varchar(50) not null,
	phone_number varchar(15) not null,
	address varchar(50),
	animal_id integer,
	department_id integer not null,
	
	CONSTRAINT fk_volunteers_animals
		FOREIGN KEY(animal_id)
		REFERENCES animals(id)
		ON DELETE CASCADE
        ON UPDATE CASCADE,
	
	CONSTRAINT fk_volunteers_volunteers_departments
		FOREIGN KEY(department_id)
		REFERENCES volunteers_departments(id)
		ON DELETE CASCADE
        ON UPDATE CASCADE
);


create table animals_cages(

	cage_id integer not null,
	animal_id integer not null,
	
	CONSTRAINT fk_animals_cages_cages
		FOREIGN KEY(cage_id)
		REFERENCES cages(id)
		ON DELETE CASCADE
        ON UPDATE CASCADE,
	
	
	CONSTRAINT fk_animals_cages_animals
		FOREIGN KEY(animal_id)
		REFERENCES animals(id)
		ON DELETE CASCADE
        ON UPDATE CASCADE
);	
	
