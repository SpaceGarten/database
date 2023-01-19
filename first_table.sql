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


-- Adds new data entry
INSERT INTO staff(
    first_name, 
    last_name, 
    license_no, 
    staff_type, 
    username, 
    salary, 
    hire_date
) 
VALUES (
    'Jon',
    'Jones',
    '302342',
    'Dental Assistant',
    'jjones',
    '23423',
    '2023/01/01'
), (
    'Lan',
    'Bass',
    '234234',
    'Dental Assistant',
    'lbass',
    '100000',
    '2023/02/01'

), (
    'Dan',
    'Bark',
    '6322',
    'Dental Assistant',
    'dbar',
    '12345678',
    '2023/03/01'

), (
    'Jerry',
    'J',
    '114141',
    'Dental Assistant',
    'jjrr',
    '4000000',
    '2023/04/01'

), (
    'Pink',
    'P',
    '2722135',
    'Dental Assistant',
    'pp',
    '1321231',
    '2023/05/01'

);


-- Delete data entry
DELETE FROM staff WHERE license_no=302342 ORDER BY last_name DESC LIMIT 1;


-- Finding data, sorting
SELECT first_name, last_name, MAX(salary) FROM staff;

SELECT first_name, last_name, salary FROM staff WHERE salary > 20000;



-- sync
source C:\Users\Matt_\OneDrive\Documents\1201\Week 3


-- Log in to mySQL: root from application, run XAMPP/xamppfiles/bin/mysql

-- CREATE DATABASE class4DEMO;

-- USE class4Demo;

-- show tables;    

-- when inserting new data, INSERT INTO staff and include all the values intcluded

-- select * from staff;                  shows all added entry

-- to Delete a data entry, use DELETE FROM
