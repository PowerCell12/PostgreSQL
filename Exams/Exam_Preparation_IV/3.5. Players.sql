select
	concat(first_name, ' ', last_name),
	age,
	hire_date
from players
where first_name like 'M%'
order by age desc,  concat_ws(first_name, last_name)
