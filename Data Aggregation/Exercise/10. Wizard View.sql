create view view_wizard_deposits_with_expiration_date_before_1983_08_17 as
select
	concat(first_name, ' ', last_name) as "Wizard Name",
	deposit_start_date as "Start Date",
	deposit_expiration_date as "Expiration Date",
	deposit_amount as "Amount"
from wizard_deposits
where deposit_expiration_date <= '1983-08-17'
group by "Wizard Name",  deposit_start_date, deposit_expiration_date, deposit_amount
order by deposit_expiration_date;	
