select
	deposit_group,
	is_deposit_expired,
	floor(avg(deposit_interest))
from  wizard_deposits
where deposit_start_date > '1985-01-01'
GROUP BY deposit_group, is_deposit_expired
ORDER BY deposit_group desc;
