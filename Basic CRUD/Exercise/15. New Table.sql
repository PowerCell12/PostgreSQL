create table company_chart
AS SELECT concat(first_name, ' ', last_name) as "Full Name", job_title as "Job Title", department_id as "Department ID", manager_id as "Manager ID" from employees;

