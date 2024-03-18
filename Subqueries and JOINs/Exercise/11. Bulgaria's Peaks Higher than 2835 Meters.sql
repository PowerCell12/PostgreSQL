SELECT
	mc.country_code,
    m.mountain_range,
    p.peak_name,
    p.elevation
from mountains as m
join peaks as p
on p.mountain_id = m.id
join mountains_countries as mc
on m.id = mc.mountain_id
where p.elevation > 2835 and mc.country_code = 'BG'
order by p.elevation desc
