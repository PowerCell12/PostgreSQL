SELECT
	bg.id,
	bg.name,
	bg.release_year,
	cat.name
from board_games as bg
left join categories as cat ON cat.id = bg.category_id 
where cat.name = 'Wargames' or cat.name = 'Strategy Games'
order by bg.release_year	desc
