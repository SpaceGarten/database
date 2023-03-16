-- create a function that returns the text hello world please
DELIMITER //
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
create function celsius_to_farenheit(celsius float)
returns float
 		
 			
 				begin
 					return (celsius * 9/5) + 32;
 				end //

DELIMITER ;

-- Create a function that returns the course name of a course id
DELIMITER //
create function course_name(course_id varchar(50))
returns varchar(50)
 		
 			
 				begin
 					return (select title from course where course_id = course_id);
 				end //
DELIMITER ;


-- Create a function to determine your email address at a school
DELIMITER //
create function email_address(first_name varchar(50), last_name varchar(50), school varchar(50))
returns varchar(50)
 		
 			
 				begin
 					return concat(first_name, '.', last_name, '@', school, '.vcc.ca');
 				end //
DELIMITER ;


-- Create a function called calculateTax that returns a 2 digit decimal and calculates the tax that is 12% of the price 
DELIMITER //
create function calculateTax(price float)
returns float
 		
 			
 				begin
 					return price * 0.12;
 				end //
DELIMITER ;
