create table mountains(
	
	id serial PRIMARY KEY,
	name varchar(50)
);


create table peaks(
				  
	id serial PRIMARY KEY,
	name varchar(50),
	mountain_id int,
	
	CONSTRAINT fk_peaks_mountains
		FOREIGN KEY(mountain_id)
		REFERENCES mountains(id)
);
