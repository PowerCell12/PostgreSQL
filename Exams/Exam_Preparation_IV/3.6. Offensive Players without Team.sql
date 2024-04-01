select
	players.id,
	concat(players.first_name, ' ', players.last_name),
	players.age,
	players.position,
	players.salary,
	skills_data.pace,
	skills_data.shooting
from players
left join skills_data on skills_data.id = players.skills_data_id
where players.position = 'A'  and skills_data.pace + skills_data.shooting > 130 and players.team_id is null;
