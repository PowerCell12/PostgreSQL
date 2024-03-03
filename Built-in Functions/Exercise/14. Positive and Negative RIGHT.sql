SELECT
	peak_name,
	right(peak_name, 4) as "Positive Right",
	right(peak_name, -4) as "Negative Right"
FROM
peaks;
