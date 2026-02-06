/*
Day 3: SQL Constraints Practice
Topic: PRIMARY KEY, NOT NULL, UNIQUE, CHECK + Derived Columns
Date: 2026-02-06
Description: Created a school database to demonstrate SQL constraints, 
added derived columns for analytics, and applied conditional logic.
*/

create database school;
use school;

create table students(
    roll_number int primary key auto_increment,
    name varchar(30) not null,
    phone_number varchar(15) not null unique,
    email_id varchar(50) not null unique,
    marks1 int not null check(marks1 >= 0 and marks1 <= 100),
    marks2 int not null check(marks2 >= 0 and marks2 <= 100),
    marks3 int not null check(marks3 >= 0 and marks3 <= 100)
);

-- Insert records
insert into students(name, phone_number, email_id, marks1, marks2, marks3)
values ('Vijay Verma', '+91-9811234567', 'vijay@gmail.com', 45, 39, 56);

insert into students(name, phone_number, email_id, marks1, marks2, marks3)
values 
('Mahima Gupta', '+91-8823114567', 'mahima@gmail.com', 55, 44, 66),
('Pankaj Mishra', '+91-7911452346', 'pankaj@gmail.com', 54, 93, 65);

-- Add derived columns
alter table students add column total_marks int;
alter table students add column average_marks float;
alter table students add column result varchar(10);

-- Populate derived values
update students set total_marks = marks1 + marks2 + marks3;
update students set average_marks = total_marks / 3;

update students 
set result = case
    when average_marks >= 60 then 'Good'
    else 'Average'
end;

select * from students;
