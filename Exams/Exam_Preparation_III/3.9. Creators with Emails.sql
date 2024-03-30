select
	concat(creators.first_name, ' ', creators.last_name),
	creators.email,
	max(board_games.rating)
from creators
join creators_board_games ON creators_board_games.creator_id = creators.id
join board_games ON board_games.id = creators_board_games.board_game_id
where right(creators.email, 4) = '.com'
group by concat(creators.first_name, ' ', creators.last_name), creators.email
order by concat(creators.first_name, ' ', creators.last_name)
