select
	concat(coaches.first_name, ' ', coaches.last_name),
	concat(players.first_name, ' ', players.last_name),
	teams.name,
	skills_data.passing,
	skills_data.shooting,
	skills_data.speed
from coaches
join players_coaches
ON players_coaches.coach_id = coaches.id
join players 
on players.id = players_coaches.player_id
join teams
on teams.id = players.team_id
join skills_data
on skills_data.id = players.skills_data_id
order by concat(coaches.first_name, ' ', coaches.last_name) ASC, concat(players.first_name, ' ', players.last_name) DESC		
