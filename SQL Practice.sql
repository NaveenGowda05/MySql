create database India;
show databases;
use india;
CREATE TABLE office (
    Emp_no int ,
    name varchar(200),
    Email varchar(200),
    salary int,
    grade varchar(200),
    city varchar(200)
);                             -- table created
select * from office;
insert into office (Emp_no, name, Email, salary, grade, city) 
values (1, "Mahesh", "Mahesh123@gmail.com", 10000, "E", "Hubli"), 
(2, "Suresh", "Suresh456@gmail.com", 20000, "D", "Mangalore"),
(3, "Vinod", "Vinod789@gmail.com", 30000, "C", "Hubli"),
(4, "Praveen", "Praaveen963@gmail.com", 40000, "B", "Hubli"),
(5, "Keerthi", "Keerthi741@gmail.com", 50000, "A", "Hubli");                   -- values added 
select * from office;
use india;
set autocommit = off;
drop table office;
commit;                                                                   -- saved 
truncate office;                                                               -- deleted 
rollback;                                                                       --  undo
alter table office add Experience int after city;                     -- table altered 
select * from office;
alter table office add nationality varchar(50) after Experience;     -- Column added to existing table
select * from office;
alter table office drop column nationality;                                -- column droped 
select * from office;
create table office_2 select * from office;                                    -- replica table created 
select * from office_2;
drop table office_2;                                                    -- replica table created deleted
create table Dummy_office select * from office;
select * from Dummy_office;
drop table Dummy_office;
create table Dummy_office select Emp_no, name, salary from office;
drop table Dummy_office;
create table Dummy_office select Emp_no, name, salary from office;                         --  replica table using selected columns 
select * from Dummy_office;     



use india;
select * from office;
select * from office where name ="Suresh";                  --  select employee from particular name
select *from office where Name like 'S%';                       --   selected name from letter
select * from office where salary <= 30000;                   -- selected from salary less than 30k
select * from office where salary =40000;
select * from office where name= "Suresh" and city="Mangalore";        -- selected from name and city
select * from office order by grade;                                    -- selected by order
select * from office order by name DESC limit 3;                  -- descending order
select * from office where city in ("Hubli");
set sql_safe_updates = 0;
update office set city="Bangalore" where Emp_no =1;
update office set city="Mysore" where Emp_no =3;
update office set city="Tumkur" where emp_no =4;                     -- Update column
commit;

