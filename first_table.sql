DROP DATABASE IF EXISTS class4Demo;

-- re-create the database
CREATE DATABASE class4DEMO;

-- Create a table
CREATE TABLE staff (
    staff_id INT AUTO_INCREMENT PRIMARY KEY, 
    first_name VARCHAR(32) NOT NULL,
    last_name VARCHAR(64) NOT NULL,
    license_no VARCHAR(10), 
    staff_type VARCHAR(32) NOT NULL,
    username VARCHAR(128) NOT NULL,
    salary FLOAT(8, 2) NOT NULL,
    hire_date date NOT NULL
);

-- show the table
DESC staff;



INSERT INTO staff(first_name, 
last_name, 
license_no, 
staff_type, 
username, 
salary, 
hire_date
) 



-- Log in to mySQL: root from application, run XAMPP/xamppfiles/bin/mysql

-- CREATE DATABASE class4DEMO;

-- USE class4Demo;

-- show tables;
