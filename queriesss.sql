create database schools;
show databases;
use schools;
create table students (
id int primary key auto_increment,
name varchar(50) not null,
age int,
gender varchar (10),
city varchar(30),
grade decimal(5,2),
email varchar (100) unique


);
insert into students (name,age,gender,city,grade,email)
values
('mariam',19,'female','luxor',95,'mariam@gmail.com'),
('ahmed',22,'male','cairo',88,'ahmed@gmail.com'),
('sara',20,'female','luxor',91,'sara@gmail.com'),
('kareem',23,'male','aswan',89,'kareem@gmail.com'),
('omar',21,'male','cairo',85,'omar@gmail.com'),
('nada',19,'female','luxor',90,'nada@gmail.com'),
('youssif',24,'male','aswan',70,'youssif@gmail.com'),
('salma',20,'female','cairo',90,'salma@gmail.com');
select * from students;
select name, age from students;
select name from students;
select name , age from students
where age > 20 ;
select name , city from students
where city = 'luxor';
select name from students 
where gender = 'female';
select name , grade from students
where grade > 90;
select name , age from students
where age <= 21 and age >= 19 ;
select name , age from students
where age between 19 and 21;
select name , city from students
where city = 'cairo' or city = 'aswan';
select name from students 
where name like 'A%';
select name from students 
where name like '%a%';
select name from students 
where name like '%a';
select name  , grade from students 
order by grade asc;
select name , grade from students 
order by grade desc;
select name , age from students 
order by age ;
select name from students 
limit 3;
select name , grade from students
order by  grade desc
limit 2 ;
select name , grade from students
limit 2 , 3;
select name , grade from students
limit 2 offset 3 ;
select name , grade , age from students
order by age desc , grade desc;
select name , grade , age from students
order by age asc , grade desc;
select name , grade , age from students
order by age asc, grade asc;
select name , grade, grade * 2 as final_grade from students
order by final_grade desc;
select count(*) 
from students;
select sum(grade)
from students;
select avg(grade)
from students;
select max(grade)
from students;
select min(grade)
from students;
select upper(name)
from students;
select lower(name)
from students;
select length(name)
from students;
select name , length(name)
from students
order by length(name) desc;
select * from students
where length(name)> 4;
select concat(name,' ', city)
from students;
select substring(name , 1,3)
from students;
select * from students
where substring(name,1,1) ='m';
select * from students
where substring(name,1,1) like '%m%';
select trim('  mariam  ')
from students;
select trim(name)
from students;
select curdate();
select curtime();
select now();
select name , count(*)
from students
group by name;
select  city ,avg(grade)
from students
group by city;
select  city  ,max(grade)
from students
group by city;
select  city  ,min(grade)
from students
group by city;
select  city  ,sum(grade)
from students
group by city;
select city , count(*)
from students
group by city
having count(*) > 1;
select city , avg(grade)
from students
group by city
having avg(grade) > 90;
select city , sum(grade)
from students
group by city
having sum(grade) > 180;
SELECT city,
COUNT(*) AS total_students,
AVG(grade) AS average_grade,
MAX(grade) AS highest_grade,
MIN(grade) AS lowest_grade,
SUM(grade) AS total_grades
FROM students
GROUP BY city
ORDER BY average_grade DESC;

