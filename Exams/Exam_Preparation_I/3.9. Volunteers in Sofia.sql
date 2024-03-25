SELECT
	v.name,
    v.phone_number,
    LTRIM(v.address, ' Sofia , ')
from volunteers as v
where  SUBSTRING(TRIM(v.address), 1, 5) = 'Sofia' and v.department_id = 2
order by v.name 
