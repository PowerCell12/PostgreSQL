select
	bg.name,
	bg.rating,
	categories.name
from board_games as bg
join categories on categories.id = bg.category_id
where bg.rating > 7.00
AND exists (select 1 from board_games where substring("name", 1, 1) in  ('a', 'A')) 
order by bg.name, bg.rating desc
limit 5	
