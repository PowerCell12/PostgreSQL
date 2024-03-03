SELECT
	concat(m.mountain_range, ' ', p.peak_name) as "Mountain Information",
	length(concat(m.mountain_range, ' ', p.peak_name)) as "Characters Length",
	bit_length(concat(m.mountain_range, ' ', p.peak_name)) as "Bits of a String"
FROM
	mountains as m, peaks as p
WHERE
	m.id = p.mountain_id;
