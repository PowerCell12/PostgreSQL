SELECT
	concat(elevation, ' ', REPEAT('-', 3), REPEAT('>', 2), ' ', peak_name) as "Elevation --->> Peak Name"
from peaks
where elevation >= 4884;
