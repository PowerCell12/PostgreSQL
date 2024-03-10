select 
	magic_wand_creator,
	max(deposit_amount) as "Max Deposit Amount"
from wizard_deposits
where deposit_amount not BETWEEN 20000 AND 40000
group by magic_wand_creator
order by "Max Deposit Amount" desc
limit 3;
