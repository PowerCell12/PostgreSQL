select
	project_name,
	CASE
    	WHEN start_date IS NULL AND end_date IS NULL THEN 'Ready for development'
    	WHEN end_date IS NULL and start_date is not null THEN 'In Progress'
    	ELSE 'Done'
  	END as project_status


from projects
where project_name like '%Mountain%'
