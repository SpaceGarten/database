DROP DATABASE IF EXISTS coffee;

CREATE DATABASE coffee;

USE coffee;
-- 3 Tables from csv to sql
CREATE TABLE location (
    area_code INT NOT NULL PRIMARY KEY,
    state VARCHAR(255) NOT NULL,
    market VARCHAR(255) NOT NULL,
    market_size VARCHAR(255) NOT NULL CHECK (market_size IN ('Small Market', 'Major Market'))
    
);

CREATE TABLE product (
    
    product_line VARCHAR(255) NOT NULL,
    product_type VARCHAR(255) NOT NULL,
    product VARCHAR(255) NOT NULL,
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    type VARCHAR(255) NOT NULL

);

CREATE TABLE factTable (
    profit INT NOT NULL,
    margin INT NOT NULL,
    sales INT NOT NULL,
    cogs INT NOT NULL,
    total_expenses INT NOT NULL,
    marketing INT NOT NULL,
    inventory INT NOT NULL,
    budget_profit INT NOT NULL,
    budget_cogs INT NOT NULL,
    budget_margin INT NOT NULL,
    budget_sales INT NOT NULL,
    area_code INT NOT NULL,
    product_id INT NOT NULL,
    FOREIGN KEY (area_code) REFERENCES location(area_code),
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    date DATETIME NOT NULL

);

LOAD DATA LOCAL INFILE 'C:/Users/hison/Desktop/Coffee/Location.csv'
INTO TABLE location
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:/Users/hison/Desktop/Coffee/Product.csv'
INTO TABLE product
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:/Users/hison/Desktop/Coffee/factTable.csv'
INTO TABLE factTable
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;





-- create a procedure that updates the date format in factTable from 'YYYY-MM-DD HH:MM:SS' to 'YYYY-MM-DD HH:MM:SS AM/PM'
delimiter //
create procedure update_date_time()
begin
    update factTable
    set date = convert_date_time(date);
end//
delimiter ;
