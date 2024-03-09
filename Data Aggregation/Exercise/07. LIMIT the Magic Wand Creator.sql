SELECT
	magic_wand_creator,
	min(magic_wand_size)
from wizard_deposits
GROUP BY magic_wand_creator
order by min(magic_wand_size)
limit 5;
