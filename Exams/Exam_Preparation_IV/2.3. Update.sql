UPDATE coaches
SET salary = salary * coach_level
WHERE LEFT(coaches.first_name, 1) = 'C'
AND EXISTS (
    SELECT 1
    FROM coaches
    LEFT JOIN players_coaches ON coaches.id = players_coaches.coach_id
    LEFT JOIN players ON players_coaches.player_id = players.id
    GROUP BY players.id
);
