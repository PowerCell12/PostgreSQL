create table employees_projects(
 
	id serial primary key,
  	employee_id serial,
 	project_id serial,
  
  	CONSTRAINT fk_employee
  		FOREIGN key(employee_id)
  			REFERENCES employees(id),
  
  	CONSTRAINT fk_project
  		FOREIGN key(project_id)
  		REFERENCES projects(id)
  
);
