select
	count(case when department_id = 1 then 1 END) as "Engineering",
	count(case when department_id = 2 then 1 END) as "Tool Design",
	count(case when department_id = 3 then 1 END) as "Sales",
	count(case when department_id = 4 then 1 END) as "Marketing",
	count(case when department_id = 5 then 1 END) as "Purchasing",
	count(case when department_id = 6 then 1 END) as "Research and Development",
	count(case when department_id = 7 then 1 END) as "Production"
from employees;
