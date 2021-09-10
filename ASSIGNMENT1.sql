CREATE DATABASE ASSIGNMENT1;

USE ASSIGNMENT1;
CREATE TABLE students
(
	student_id INT NOT NULL,
    fname varchar(255),
    lname varchar(255),
    bday DATE,
    
    PRIMARY KEY (student_id)
);

CREATE TABLE employees
(
	employee_id INT NOT NULL,
    fname varchar(255),
    lname varchar(255),
    start_date DATE,
    
    PRIMARY KEY (employee_id)
);

CREATE TABLE subjects
(
	subject_id INT NOT NULL,
    subject_name varchar(255) NOT NULL,
    
    PRIMARY KEY (subject_name),
    UNIQUE (subject_id)
);

CREATE TABLE tutoring_sessions
(
	session_number INT NOT NULL,
    student_id INT NOT NULL,
    employee_id INT NOT NULL,
    subject_id INT,
    tutor_date DATE,
    total_hours INT,
    
    PRIMARY KEY (session_number),
    FOREIGN KEY (student_id) REFERENCES students(student_id) 
		ON UPDATE CASCADE,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
		ON UPDATE CASCADE,
    FOREIGN KEY (subject_id) REFERENCES subjects(subject_id)
		ON UPDATE CASCADE
);

CREATE TABLE employee_info
(
	employee_id INT,
    hours_worked INT,
    
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
		ON UPDATE CASCADE
);

INSERT INTO students VALUES (001, 'James', 'Mok', '2001-01-01');
INSERT INTO students VALUES (002, 'Michael', 'Brown', '2000-09-13');
INSERT INTO students VALUES (003, 'John', 'Doe', '2002-06-21');

INSERT INTO employees VALUES (001, 'Jane', 'Smith', '2018-01-17');
INSERT INTO employees VALUES (002, 'Katarina', 'Claes', '2020-08-11');
INSERT INTO employees VALUES (003, 'Marcus', 'Cicero', '2010-06-30');

INSERT INTO subjects VALUES (2215, 'Databases and SQL');
INSERT INTO subjects VALUES (1100, 'Physics I');
INSERT INTO subjects VALUES (3098, 'Calculus III');

INSERT INTO tutoring_sessions VALUES (23, 001, 003, 1100, '2021-08-29', 2);
INSERT INTO tutoring_sessions VALUES (56, 003, 002, 3098, '2021-09-06', 3);
INSERT INTO tutoring_sessions VALUES (78, 002, 001, 2215, '2021-08-27', 1);

INSERT INTO employee_info VALUES (001, 120);
INSERT INTO employee_info VALUES (002, 250);
INSERT INTO employee_info VALUES (003, 543);
