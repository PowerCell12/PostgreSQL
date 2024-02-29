update books
	SET title  = concat('***', RIGHT(title, -3))
where 'The' = SUBSTRING(title, 1, 3);

select title from books where substring(title, 1, 3)  = '***' order by id;
