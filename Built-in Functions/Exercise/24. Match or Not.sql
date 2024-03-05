select
	companion_full_name,
	email
from users
where 
	lower(companion_full_name) Like '%and%'
And
	email not LIKe '%@gmail';
