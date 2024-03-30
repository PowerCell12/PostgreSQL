select
	creators.last_name,
	ceiling(avg(board_games.rating)),	
	publishers.name
from creators
join creators_board_games ON creators_board_games.creator_id = creators.id
join board_games ON board_games.id = creators_board_games.board_game_id
join publishers  on publishers.id = board_games.publisher_id
where publishers.name = 'Stonemaier Games'
group by creators.last_name, publishers.name
order by ceiling(avg(board_games.rating)) desc
