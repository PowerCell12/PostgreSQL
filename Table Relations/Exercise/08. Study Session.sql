create table students(

	student_name text,
	id serial PRIMARY KEY


);


create table exams(
	id integer primary key GENERATED BY DEFAULT AS IDENTITY 
   (START WITH 101 INCREMENT BY 1),
	exam_name text


);

create table students_exams(
	
	student_id integer,
	exam_id integer,
	
	CONSTRAINT fk_students_study_halls
		FOREIGN KEY(student_id)
		REFERENCES students(id),
	
	CONSTRAINT fk_exams_study_halls
		FOREIGN KEY(exam_id)
		REFERENCES exams(id)
);

create table study_halls(

	
	study_hall_name text,
	exam_id integer,
	
	CONSTRAINT fk_exams_study_halls
		FOREIGN KEY(exam_id)
		REFERENCES exams(id)
);



insert into students(student_name)
VALUES
	('Mila'),
	('Toni'),
	('Ron');
	
insert into exams(exam_name)
VALUES
	('Python Advanced'),
	('Python OOP'),
	('PostgreSQL');
	
	
insert into study_halls(study_hall_name, exam_id)
VALUES
	('Open Source Hall', 102),
	('Inspiration Hall', 101),
	('Creative Hall', 103),
	('Masterclass Hall', 103),
	('Information Security Hall', 103);
	
	
insert into students_exams(student_id, exam_id)
VALUES
	(1, 101),
	(1, 102),
	(2, 101),
	(3, 103),
	(2, 102),
	(2, 103);
