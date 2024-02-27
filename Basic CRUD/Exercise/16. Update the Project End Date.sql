update projects
	SET end_date = start_date + Interval '5 months'
Where end_date  IS NULL;
