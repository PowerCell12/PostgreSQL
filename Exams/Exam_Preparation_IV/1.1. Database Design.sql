create table towns(
	
	id serial primary key,
	name varchar(45) not null



);



create table stadiums(

	id serial primary key,
	name varchar(45) not null,
	capacity integer check(capacity > 0) not null,
	town_id integer not null,
	
	
	CONSTRAINT fk_stadiums_towns
		FOREIGN KEY(town_id)
		REFERENCES towns(id)
		ON UPDATE CASCADE
		ON DELETE CASCADE
);


create table teams(

	id serial primary key,
	name varchar(45) not null,
	established DATE not null,
	fan_base integer DEFAULT 0 check(fan_base >= 0) not null, -- if error here
	stadium_id integer not null,
		
	CONSTRAINT fk_teams_stadiums
		FOREIGN KEY(stadium_id)
		REFERENCES stadiums(id)
		ON UPDATE CASCADE
		ON DELETE CASCADE
);


create table coaches(

	id serial primary key,
	first_name varchar(10) not null,
	last_name varchar(20) not null,
	salary numeric(10, 2) DEFAULT 0 check(salary >= 0) not null, -- error
	coach_level integer default 0 check(coach_level >= 0) not null -- error
);


create table skills_data(

	id serial primary key,
	dribbling integer default 0 check(dribbling >= 0),
	pace integer default 0 check(pace >= 0),
	passing integer default 0 check(passing >= 0),
	shooting integer default 0 check(shooting >= 0),
	speed integer default 0 check(speed >= 0),
	strength integer default 0 check(strength >= 0)
);

	
create table players(

	id serial primary key,
	first_name varchar(10) not null,
	last_name varchar(20) not null,
	age integer default 0 check(age >= 0) not null,
	position char(1) not null,  -- maybe error
	salary numeric(10, 2) default 0 check(salary >= 0) not null,
	hire_date TIMESTAMP,
	skills_data_id integer not null,
	team_id integer,
	
	
	CONSTRAINT fk_players_skills_data
		FOREIGN KEY(skills_data_id)
		REFERENCES skills_data(id)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	
	
	CONSTRAINT fk_players_teams
		FOREIGN KEY(team_id)
		REFERENCES teams(id)
		ON UPDATE CASCADE
		ON DELETE CASCADE
);



create table players_coaches(

	player_id integer,
	coach_id integer,
	
	CONSTRAINT fk_players_coaches_players
		FOREIGN KEY(player_id)
		REFERENCES players(id)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	
	
	CONSTRAINT fk_players_coaches_coaches
		FOREIGN KEY(coach_id)
		REFERENCES coaches(id)
		ON UPDATE CASCADE
		ON DELETE CASCADE
);
