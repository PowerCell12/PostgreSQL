alter table users add column initials character(2);


update users
 SET initials = SUBSTRING(first_name, 1, 2);
 
 
select 	
	initials,
	COUNT(initials) as user_count
from users
group by initials
order by user_count desc, initials;
	
