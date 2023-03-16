-- create a function that returns the text hello world please

DELIMITER //
DROP FUNCTION IF EXISTS helloworld;
create function helloworld()
returns varchar(50)
 		
 			
 				begin
                    DECLARE message VARCHAR(20);
 					SET message = 'Hello World';
                     return message;
 				end //
 			

DELIMITER ;


-- create a function to convert celsius to farenheit
DELIMITER //
DROP FUNCTION IF EXISTS celsius_to_farenheit;
create function celsius_to_farenheit(celsius float)
returns float
 		
 			
 				begin
 					return (celsius * 9/5) + 32;
 				end //

DELIMITER ;

-- Create a function that returns the course name of a course id
DELIMITER //
DROP FUNCTION IF EXISTS course_name;
create function course_name(course_id varchar(50))
returns varchar(50)
 		
 			
 				begin
 					return (select title from course where course_id = course_id);
 				end //
DELIMITER ;


-- Create a function to determine your email address at a school
DELIMITER //
DROP FUNCTION IF EXISTS email_address;
create function email_address(first_name varchar(50), last_name varchar(50))
returns varchar(255)
 		
 			
 				begin
                    DECLARE email VARCHAR(115);
 					SET EMAIL = lower(concat(trim(first_name), '.', trim(last_name), '@student.vcc.ca'));
                    SET EMAIL = REPLACE(EMAIL, ' ', '');
                    RETURN EMAIL;
 				end //
DELIMITER ;


-- Create a function called calculateTax that returns a 2 digit decimal and calculates the tax that is 12% of the price 
DELIMITER //
DROP FUNCTION IF EXISTS calculateTax;
create function calculateTax(price float)
returns DECIMAL(9,2)
 		
 			
 				begin
 					return price+(price * 0.12);
 				end //
DELIMITER ;
