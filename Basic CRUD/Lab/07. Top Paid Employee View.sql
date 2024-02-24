CREATE VIEW first_view AS 
SELECT * FROM employees ORDER BY salary DESC LIMIT 1;

SELECT * FROM first_view;
