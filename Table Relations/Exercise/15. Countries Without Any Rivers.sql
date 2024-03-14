select
	COUNT(*)
from countries as c
left join countries_rivers as r
On  c.country_code = r.country_code
where r.country_code is  null;
