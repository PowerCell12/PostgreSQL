SELECT	
	mc.country_code,
	COUNT(*) 
from mountains as m
join mountains_countries as mc
on mc.mountain_id = m.id
where mc.country_code in ('US', 'RU', 'BG')
group by mc.country_code
order by COUNT(*) desc
