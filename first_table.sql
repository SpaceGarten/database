
DROP DATABASE IF EXIST class4Demo


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
