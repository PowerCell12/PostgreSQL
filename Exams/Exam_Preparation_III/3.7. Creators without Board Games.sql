select 
	creators.id,
	 concat(creators.first_name, ' ', creators.last_name),
	 creators.email
from creators 
left join creators_board_games  ON creators_board_games.creator_id = creators.id
left join board_games ON board_games.id = creators_board_games.board_game_id
where board_games.rating is null;
