SELECT
	teams.id,
	teams.name,
	COUNT(players.id),
	teams.fan_base
from teams	
left join players
on players.team_id = teams.id
where teams.fan_base >  30000
group by teams.id, teams.name, teams.fan_base
order by COUNT(players.id) desc, teams.fan_base desc
