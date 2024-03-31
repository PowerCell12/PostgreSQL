insert into coaches(first_name, last_name, salary, coach_level)
select 
		players.first_name, players.last_name, players.salary * 2, length(players.first_name)
from players
where players.hire_date < '2013-12-13 07:18:46';
