CREATE SCHEMA ASSIGNMENT1;

USE ASSIGNMENT1;
CREATE TABLE students
(
	student_id INT NOT NULL,
    fname varchar(255),
    lname varchar(255),
    bday DATE,
    
    PRIMARY KEY (student_id)
);

CREATE TABLE employee
(
	employee_id INT NOT NULL,
    fname varchar(255),
    lname varchar(255),
    start_date DATE,
    
    PRIMARY KEY (employee_id)
);

CREATE TABLE subjects
(
	subject_id INT,
    subject_name varchar(255) NOT NULL,
    
    PRIMARY KEY (subject_id, subject_name)
);

CREATE TABLE tutoring_sessions
(
	session_number INT,
    student_id INT,
    employee_id INT,
    subject_id INT,
    tutor_date DATE,
    total_hours INT,
    
    PRIMARY KEY (session_number),
    FOREIGN KEY (student_id) REFERENCES students(student_id) 
		ON UPDATE CASCADE,
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
		ON UPDATE CASCADE,
    FOREIGN KEY (subject_id) REFERENCES subjects(subject_id)
		ON UPDATE CASCADE
);

