create table mountains(

	id serial Primary Key,
	name varchar(50)
);



create table peaks(

	id serial PRIMARY KEY,
	name varchar(50),
	mountain_id int,
	
	constraint fk_mountain_id
		FOREIGN KEY(mountain_id)
		REFERENCES mountains(id)
		ON DELETE CASCADE

)
