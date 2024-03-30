CREATE TABLE search_results (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    release_year INT,
    rating FLOAT,
    category_name VARCHAR(50),
    publisher_name VARCHAR(50),
    min_players VARCHAR(50),
    max_players VARCHAR(50)
);

create or replace procedure  usp_search_by_category(category varchar(50))
AS $$
	
	BEGIN
		TRUNCATE TABLE search_results;
	
		INSERT INTO search_results(name, release_year, rating, category_name, publisher_name, min_players, max_players)
		SELECT 
			board_games.name,
			board_games.release_year,
			round(board_games.rating, 2),
			categories.name,
			publishers.name,
			concat(players_ranges.min_players, ' people'),
			concat(players_ranges.max_players, ' people')
		FROM categories
		join board_games
		on board_games.category_id = categories.id
		join players_ranges
		on players_ranges.id = board_games.players_range_id
		join publishers
		on publishers.id = board_games.publisher_id
		where categories.name = category
		order by publishers.name, board_games.release_year desc;
	
	
	END;



$$
LANGUAGE plpgsql;
