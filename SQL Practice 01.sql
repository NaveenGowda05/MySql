create database abd;
insert into class(id,name,phone,marks,email,city) 
values(6,"Praveen","6360954836",60,"praveen@gmail.com","bangalore");
insert into class(id,name,phone,marks,email,city) 
values(2,"lohith","6578963154",30,"lohith@gmail.com","hyderabad"),
(3,"mahesh","8884688434",70,"maheshh@gmail.com","chennai"),
(4,"shashi","9980329647",90,"shashi@gmail.com","mysore"),
(5,"faheem","9353354186",100,"faheem@gmail.com","delhi");
show tables;
select * from class;
create database abc;
drop database abc;
show tables;
select * from class;
drop database ram;
select * from students;
insert into students(id,name,phone,email,city,marks) values(2,"mahesh","9108647956","mahesh@gmail.com","mangalore",75);
use abd;
select * from class;
select * from class where name ="shashi";
select name, email from class;
select name, marks from class where name ="raghu"; -- to select particular coloumns
select * from class where name like "a%";
select * from class where marks <=35;
select * from class where marks > 80 and marks < 100;
select * from class;
select distinct city from class;
select count(*) from class; 
select count(distinct city) from class;
select * from class where name= "raghu" and city= "bangalore";
select * from class where name= "raghu" or city= "bangalore";
select * from class where not city="bangalore";
select* from class where name="raghu" or (city="bangalore" or city="delhi");
select * from class order by name;
select * from class order by marks DESC;
select * from class order by marks asc;
select * from class where city is null;
select * from class where city is not null;
select * from class limit 3;
select * from class order by marks DESC limit 3;
select min(marks) as fail_student from class;
select max(marks) as pass_student from class;
select avg(marks) from class;
select sum(marks) from class;
select * from class where city in ("mysore", "delhi", "hyderabad");
select * from class where city not in ("mysore", "delhi", "hyderabad");
select * from world.city where name in ("mysore", "delhi", "hyderabad");
select * from abd.class where city in (select name from world.city);
select * from abd.class where marks between 10 and 60;
use abd;
select name as std_name, marks as std_marks from class;
select name, concat("name:",name,"email:",email,"phone:",phone) as details from class;

select * from persons;
create table shirts (id int primary key auto_increment,
name varchar(200),
size enum("small", "medium", "large", "x large")
);
insert into shirts(id, name, size) values (1, "t-shirt", "medium");
select * from shirts;
insert into shirts(id, name, size) values (2, "t-shirt", "x large");
insert into shirts(id, name, size) values (3, "t-shirt", "small");

Create index ind_name on shirts(name);
select * from shirts use index(ind_name);
show index from shirts;

create table students1 (
student_id int auto_increment primary key,
fname varchar(200) not null,
lname varchar(200) not null,
city varchar(200) not null
);

insert into students1 (fname, lname, city) values
("John", "Doe", "New york"),
("Jane", "Doe", "Los Angles"),
("Bob", "Smith", "Chicago"),
("Rahul", "Majukar", "Bangalore");

insert into students1 (fname, lname, city) values ("rahul", "Majukar", "Bangalore");
select * from students1;

Create table courses (
course_id int auto_increment primary key,
branch varchar(200),
course_name varchar(200),
student_id int not null,
foreign key (student_id) references students1(student_id)
);

desc courses;


insert into courses (branch, course_name, student_id) values
("Computer Science", "Database Syetem", 1),
("Computer Science", "Web Development", 2),
("Engineering", "Electrical Engineering", 3),
("Business", "Marketing", 1),
("Business", "Finance", 2),
("Engineering", "Mechanical Engineering", 1);

select now();             -- current date and time
select curdate();           -- current date
select curtime();         -- current time
select dayname(now());     -- date 
select unix_timestamp();    -- current milis
select * from department; 
use abd;
select * from class;
views  -- creating virtual table on the original tabel. If any changes done in the original table, it affects to virtual table as well. Cannot create table in VIEW

create view student_attendance as select name, email from abd.class;
select * from student_attendance;
select * from student_attendance order by name asc;
insert into class(id, name, phone, marks, email, age, city, grade) values
(7,"Rohith", "1234567890", 40, "rohith890@gmail.com", 35, "Belguam", "B");

alter view student_attendance (view_name, email, marks, city) as select name, email, phone, city from class;
select * from student_attendance;

select * from class;
use abd;
select * from class where name="shashi";
select * from class where name="a%";
select * from class where name ="%a";
select * from class where name="%u";
select * from class where marks>=80;
