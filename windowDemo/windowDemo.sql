CREATE DATABASE windowDemo;
USE windowDemo;


create table windowDemo (
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50),
	major VARCHAR(4),
	year INT,
	gpa DECIMAL(2,1),
	credits INT
);
insert into windowDemo (first_name, last_name, email, major, year, gpa, credits) values ('Berna', 'Julyan', 'bjulyan0@go.com', 'HOSP', 2014, 3.1, 17);
insert into windowDemo (first_name, last_name, email, major, year, gpa, credits) values ('Marcille', 'Sturzaker', 'msturzaker1@dailymail.co.uk', 'CSTP', 2013, 0.5, 18);
insert into windowDemo (first_name, last_name, email, major, year, gpa, credits) values ('Davis', 'Taberner', 'dtaberner2@smugmug.com', 'HOSP', 2012, 0.2, 45);
insert into windowDemo (first_name, last_name, email, major, year, gpa, credits) values ('Annadiane', 'Penhallurick', 'apenhallurick3@youku.com', 'CSTP', 2012, 1.4, 19);
insert into windowDemo (first_name, last_name, email, major, year, gpa, credits) values ('Marius', 'Hatchman', 'mhatchman4@pcworld.com', 'HAIR', 2015, 0.3, 3);
insert into windowDemo (first_name, last_name, email, major, year, gpa, credits) values ('Stormi', 'Pinkie', 'spinkie5@xrea.com', 'HOSP', 2015, 3.5, 19);
insert into windowDemo (first_name, last_name, email, major, year, gpa, credits) values ('Edna', 'Gantz', 'egantz6@moonfruit.com', 'HAIR', 2016, 0.3, 35);
insert into windowDemo (first_name, last_name, email, major, year, gpa, credits) values ('Nikita', 'Shrimpling', 'nshrimpling7@msn.com', 'HAIR', 2016, 2.8, 35);
insert into windowDemo (first_name, last_name, email, major, year, gpa, credits) values ('Nickolaus', 'Schild', 'nschild8@umich.edu', 'HOSP', 2014, 1.7, 26);
insert into windowDemo (first_name, last_name, email, major, year, gpa, credits) values ('Meir', 'Kingdon', 'mkingdon9@bigcartel.com', 'HOSP', 2013, 2.4, 34);
insert into windowDemo (first_name, last_name, email, major, year, gpa, credits) values ('Viki', 'Shelper', 'vshelpera@ucoz.com', 'CSTP', 2014, 3.1, 21);
insert into windowDemo (first_name, last_name, email, major, year, gpa, credits) values ('Winni', 'Burkitt', 'wburkittb@ucoz.ru', 'HOSP', 2015, 3.1, 35);
insert into windowDemo (first_name, last_name, email, major, year, gpa, credits) values ('Aubrey', 'Greatland', 'agreatlandc@ustream.tv', 'HORT', 2016, 3.8, 15);
insert into windowDemo (first_name, last_name, email, major, year, gpa, credits) values ('Valentino', 'Giacomini', 'vgiacominid@alexa.com', 'HOSP', 2016, 0.3, 9);
insert into windowDemo (first_name, last_name, email, major, year, gpa, credits) values ('Bailey', 'Sellens', 'bsellense@mapy.cz', 'HOSP', 2016, 1.8, 12);
insert into windowDemo (first_name, last_name, email, major, year, gpa, credits) values ('Buffy', 'Karpychev', 'bkarpychevf@miibeian.gov.cn', 'HOSP', 2015, 0.9, 25);
insert into windowDemo (first_name, last_name, email, major, year, gpa, credits) values ('Jemie', 'Lello', 'jlellog@wikipedia.org', 'HOSP', 2015, 3.5, 39);
insert into windowDemo (first_name, last_name, email, major, year, gpa, credits) values ('Alphonse', 'Beament', 'abeamenth@google.com.au', 'HAIR', 2016, 2.3, 27);
insert into windowDemo (first_name, last_name, email, major, year, gpa, credits) values ('Rhonda', 'Maddra', 'rmaddrai@nationalgeographic.com', 'HORT', 2015, 1.0, 31);
insert into windowDemo (first_name, last_name, email, major, year, gpa, credits) values ('Morey', 'Phidgin', 'mphidginj@miibeian.gov.cn', 'HOSP', 2015, 2.3, 28);
insert into windowDemo (first_name, last_name, email, major, year, gpa, credits) values ('Sapphira', 'Rounding', 'sroundingk@people.com.cn', 'HORT', 2012, 3.5, 43);
insert into windowDemo (first_name, last_name, email, major, year, gpa, credits) values ('Delora', 'Bernardin', 'dbernardinl@nhs.uk', 'HOSP', 2012, 3.3, 8);
insert into windowDemo (first_name, last_name, email, major, year, gpa, credits) values ('Doll', 'Gillimgham', 'dgillimghamm@economist.com', 'HOSP', 2016, 2.1, 25);
insert into windowDemo (first_name, last_name, email, major, year, gpa, credits) values ('Franz', 'Kulis', 'fkulisn@xinhuanet.com', 'HORT', 2013, 2.5, 31);
insert into windowDemo (first_name, last_name, email, major, year, gpa, credits) values ('Yettie', 'Maypes', 'ymaypeso@salon.com', 'HOSP', 2015, 3.0, 27);
insert into windowDemo (first_name, last_name, email, major, year, gpa, credits) values ('Ted', 'Starie', 'tstariep@google.ru', 'HAIR', 2013, 1.7, 44);
insert into windowDemo (first_name, last_name, email, major, year, gpa, credits) values ('Dennie', 'Sturdey', 'dsturdeyq@wikispaces.com', 'HOSP', 2013, 4.0, 10);
insert into windowDemo (first_name, last_name, email, major, year, gpa, credits) values ('Terra', 'Gillogley', 'tgillogleyr@loc.gov', 'HAIR', 2015, 0.3, 5);
insert into windowDemo (first_name, last_name, email, major, year, gpa, credits) values ('Langston', 'Gorrie', 'lgorries@amazon.com', 'HORT', 2012, 1.2, 37);
insert into windowDemo (first_name, last_name, email, major, year, gpa, credits) values ('Tedda', 'Stocky', 'tstockyt@phoca.cz', 'HAIR', 2015, 1.2, 5);
select * from windowDemo;


-- select year, sum(credits) as credits_year
--     FROM windowDemo
--     group by year
--     order by year;

    

-- SELECT year, major,
--     SUM(credits) OVER() AS total_credits,
--     SUM(credits) OVER(PARTITION BY major) AS major_credits
--     FROM windowDemo
--     ORDER BY year, major, credits;
