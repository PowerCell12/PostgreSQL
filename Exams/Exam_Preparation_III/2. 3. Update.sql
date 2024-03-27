update  players_ranges
	SET max_players = 3
where min_players = 2 and max_players = 2;

select * From players_ranges;



update board_games 
	set "name" = concat("name", ' V2') 
where release_year >= 2020;
