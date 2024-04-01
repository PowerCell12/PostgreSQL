create or replace procedure sp_players_team_name(in player_name varchar(50), out team_name varchar(45))
as $$
BEGIN

	if exists (select 1 from players join teams on teams.id = players.team_id where player_name = concat(players.first_name, ' ', players.last_name))
		then SELECT teams.name  INTO team_name  FROM players  JOIN teams ON teams.id = players.team_id  WHERE player_name = CONCAT(players.first_name, ' ', players.last_name);
	else team_name := 'The player currently has no team';
	end if;
	
						  
	
	


END;

$$
language plpgsql;
