select 
	v.name,
    v.phone_number,
    v.address,
    v.animal_id,
    v.department_id
from volunteers as v
order by v.name, v.animal_id, v.department_id
