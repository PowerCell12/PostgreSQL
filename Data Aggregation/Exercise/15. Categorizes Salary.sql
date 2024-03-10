SELECT	
	job_title,
    CASE 
    	when avg(salary) > 45800 then   'Good' 
    	when avg(salary) between 27500 and 45800 then  'Medium' 
        when avg(salary) < 27500 then   'Need Improvement'
    end "Category"
    
from employees
group by job_title
order by "Category", job_title
