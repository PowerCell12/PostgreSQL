select 
	deposit_group,
	sum(deposit_interest)
from wizard_deposits
GROUP BY deposit_group
ORDER BY sum(deposit_interest) desc;
	
