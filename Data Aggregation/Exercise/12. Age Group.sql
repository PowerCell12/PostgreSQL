select
	case
		
		when age between 11 and 20 THEN '[11-20]'
		when age between 21 and 30 then '[21-30]'
		when age between 31 and 40 then '[31-40]'
		when age between 41 and 50 then '[41-50]'
		when age between 51 and 60 then  '[51-60]'
		when age > 60 then '[61+]'
	
	end as "Age Group",
	COUNT(age)
from wizard_deposits
group by "Age Group"
order by "Age Group";
