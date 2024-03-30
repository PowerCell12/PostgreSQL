create or replace function fn_creator_with_board_games(first_name1 varchar(30))
RETURNS integer as
$$

	BEGIN
	
	
		RETURN COUNT(board_games.id) from creators left join creators_board_games ON creators_board_games.creator_id = creators.id
		left join board_games ON board_games.id = creators_board_games.board_game_id
		where creators.first_name = first_name1;
	
	
	
	END;


$$
LANGUAGE plpgsql;
