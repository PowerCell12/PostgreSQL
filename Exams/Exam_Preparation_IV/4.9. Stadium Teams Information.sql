CREATE OR REPLACE FUNCTION fn_stadium_team_name(stadium_name varchar(45))
RETURNS TABLE (team_name varchar(45	)) AS
$$
BEGIN
    RETURN QUERY
    SELECT teams.name
    FROM stadiums
    JOIN teams ON teams.stadium_id = stadiums.id
    WHERE stadiums.name = stadium_name
    ORDER BY teams.name;
END;
$$
LANGUAGE plpgsql;
