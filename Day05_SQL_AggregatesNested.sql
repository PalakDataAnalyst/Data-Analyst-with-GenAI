Day 5 - Advanced select query part -2 

create database company;

use company;

CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    age int NOT NULL,
    city VARCHAR(30) NOT NULL,
    post VARCHAR(30) NOT NULL,
    salary float NOT NULL,
    department VARCHAR(30) NOT NULL
)auto_increment = 1001;

select * from employees;

INSERT INTO employees 
(name, age, city, post, salary, department) 
VALUES
('Amit Sharma', 28, 'Delhi', 'Software Engineer', 55000, 'IT'),
('Priya Verma', 32, 'Mumbai', 'HR Manager', 60000, 'HR'),
('Ravi Kumar', 26, 'Bangalore', 'Data Analyst', 56000, 'IT'),
('Sneha Patel', 29, 'Ahmedabad', 'Accountant', 45000, 'Finance'),
('Vikram Singh', 35, 'Chennai', 'Project Manager', 75000, 'IT'),
('Neha Joshi', 24, 'Pune', 'Software Engineer', 52000, 'IT'),
('Arjun Mehta', 31, 'Noida', 'Data Analyst', 58000, 'IT'),
('Kiran Nair', 27, 'Kochi', 'Marketing Executive', 47000, 'Marketing'),
('Manish Gupta', 30, 'Jaipur', 'Sales Executive', 46000, 'Sales'),
('Anjali Desai', 33, 'Noida', 'Data Analyst', 61000, 'IT'),
('Rahul Yadav', 25, 'Lucknow', 'Software Engineer', 50000, 'IT'),
('Pooja Reddy', 28, 'Hyderabad', 'Recruiter', 42000, 'HR'),
('Sandeep Mishra', 34, 'Delhi', 'Operations Manager', 68000, 'Operations'),
('Meera Iyer', 29, 'Chennai', 'Data Analyst', 72000, 'IT'),
('Nikhil Jain', 26, 'Indore', 'Software Engineer', 51000, 'IT'),
('Shweta Kapoor', 27, 'Mumbai', 'Marketing Manager', 65000, 'Marketing'),
('Deepak Chauhan', 32, 'Noida', 'System Administrator', 56000, 'IT'),
('Roshni Pillai', 30, 'Kochi', 'HR Executive', 43000, 'HR'),
('Harsh Vardhan', 35, 'Delhi', 'Senior Developer', 80000, 'IT'),
('Kavita Bansal', 28, 'Pune', 'Business Development Executive', 48000, 'Sales'),
('Ajay Thakur', 31, 'Bangalore', 'Team Lead', 70000, 'IT'),
('Divya Menon', 26, 'Chennai', 'Content Writer', 40000, 'Marketing'),
('Suresh Raina', 29, 'Noida', 'Accountant', 46000, 'Finance'),
('Ritika Sharma', 27, 'Delhi', 'UI/UX Designer', 53000, 'Design'),
('Varun Malhotra', 33, 'Mumbai', 'Product Manager', 85000, 'Business'),
('Alok Pandey', 30, 'Patna', 'Software Engineer', 49000, 'IT'),
('Sunita Rao', 34, 'Hyderabad', 'HR Manager', 62000, 'HR'),
('Gaurav Khanna', 28, 'Jaipur', 'Sales Manager', 64000, 'Sales'),
('Preeti Sinha', 25, 'Bangalore', 'Junior Developer', 42000, 'IT'),
('Ashok Das', 36, 'Kolkata', 'Finance Head', 90000, 'Finance'),
('Nisha Agarwal', 29, 'Delhi', 'Marketing Specialist', 55000, 'Marketing'),
('Rohan Kapoor', 27, 'Mumbai', 'Software Engineer', 52000, 'IT'),
('Anita George', 31, 'Chennai', 'Operations Executive', 47000, 'Operations'),
('Santosh Patil', 33, 'Pune', 'Data Analyst', 68000, 'IT'),
('Ishita Bose', 26, 'Kolkata', 'Recruiter', 41000, 'HR'),
('Kunal Arora', 28, 'Delhi', 'System Engineer', 54000, 'IT'),
('Pallavi Deshmukh', 30, 'Nagpur', 'Sales Executive', 45000, 'Sales'),
('Rajesh Nair', 35, 'Noida', 'Project Manager', 78000, 'IT'),
('Simran Kaur', 27, 'Amritsar', 'Marketing Executive', 46000, 'Marketing'),
('Mohit Saxena', 29, 'Noida', 'Software Engineer', 51000, 'IT'),
('Ananya Ghosh', 32, 'Kolkata', 'HR Specialist', 60000, 'HR'),
('Tarun Sharma', 28, 'Delhi', 'Data Analyst', 57000, 'IT'),
('Vidya Krishnan', 31, 'Chennai', 'Data Analyst', 62000, 'IT'),
('Abhishek Tiwari', 26, 'Noida', 'Software Engineer', 42000, 'IT'),
('Renu Gupta', 29, 'Noida', 'Operations Executive', 48000, 'Operations'),
('Sahil Bhatia', 34, 'Mumbai', 'Senior Developer', 82000, 'IT'),
('Komal Singh', 27, 'Delhi', 'Content Strategist', 45000, 'Marketing'),
('Parth Desai', 30, 'Ahmedabad', 'Sales Executive', 47000, 'Sales'),
('Madhuri Joshi', 33, 'Pune', 'Finance Manager', 71000, 'Finance'),
('Arvind Menon', 35, 'Chennai', 'IT Manager', 88000, 'IT');

select * from employees;

-- Using Operators with select query

select distinct city from employees;

select distinct post from employees;

select distinct department from employees;

select * from employees where city = "Noida";

select * from employees where post = 'data analyst';

select * from employees where department = 'IT';

select * from employees where salary >= 75000;

select * from employees where salary < 75000;

select * from employees where city = 'Noida' and salary >= 50000;

select * from employees where city = 'Noida' or salary >= 75000;

select * from employees where city = 'Noida' or city = 'Delhi' or city = 'Mumbai';

select * from employees where city in ('Noida', 'Delhi', 'Mumbai');

select * from employees where salary >= 50000 and salary <= 75000;

select * from employees where salary between 50000 and 75000;

select * from employees where name like 'a%';

select * from employees where name like '%a';

select * from employees where name like '%a%';

select * from employees order by name;

select * from employees order by salary;

select * from employees order by salary desc;

select * from employees order by salary desc limit 10;

select * from employees order by salary limit 10;

select * from employees order by salary desc limit 10 offset 10;

SELECT 
    *
FROM
    employees
WHERE
    salary BETWEEN 75000 AND 85000
ORDER BY salary DESC
LIMIT 3;

SELECT 
    *
FROM
    employees
WHERE
    city = 'Noida'
ORDER BY salary DESC
LIMIT 3;

-- Using aggregation functions with select query
select count(*) as 'Number of Employees' from employees;

select count(id) as 'Number of Employees' from employees;

select sum(salary) as 'Total Salary' from employees;

select avg(salary) as "Average Salary" from employees;

select min(salary) as 'Minimum Salary' from employees;

select max(salary) as "Maximum Salary" from employees;

SELECT 
    COUNT(id) AS 'Number of Employees',
    SUM(salary) AS 'Total Salary',
    AVG(salary) AS 'Average Salary',
    MIN(salary) AS 'Minimum Salary',
    MAX(salary) AS 'Maximum Salary'
FROM
    employees;

-- Nested queries
SELECT 
    id AS 'Employee Id',
    name AS 'Employee Name',
    salary AS 'Employee Salary'
FROM
    employees
WHERE
    salary >= (SELECT AVG(salary) FROM employees);
    
SELECT 
    *
FROM
    employees
WHERE
    salary >= (SELECT AVG(salary) FROM employees);
    
SELECT 
    id AS 'Employee Id',
    name AS 'Employee Name',
    salary AS 'Employee Salary',
    (SELECT AVG(salary) FROM employees) AS 'Overall Average Salary'
FROM
    employees;
    
SELECT 
    id AS 'Employee Id',
    name AS 'Employee Name',
    salary AS 'Employee Salary',
    (SELECT AVG(salary) FROM employees) AS 'Overall Average Salary',
    salary - (SELECT AVG(salary) FROM employees) 
    as 'Difference from Overall Average Salary'
FROM
    employees;
    
SELECT 
    id AS 'Employee Id',
    name AS 'Employee Name',
    salary AS 'Employee Salary',
    (SELECT AVG(salary) FROM employees) AS 'Overall Average Salary',
    round((salary - (SELECT AVG(salary) FROM employees)) / (SELECT AVG(salary) FROM employees) * 100, 2)
    as 'Difference in Percentage from Overall Average Salary'
FROM
    employees;
    
SELECT 
    id AS 'Employee Id',
    name AS 'Employee Name',
    salary AS 'Employee Salary',
    (SELECT AVG(salary) FROM employees) AS 'Overall Average Salary',
    round((salary - (SELECT AVG(salary) FROM employees)) / (SELECT AVG(salary) FROM employees) * 100, 2)
    as 'Difference in Percentage from Overall Average Salary'
FROM
    employees
where
	(salary - (SELECT AVG(salary) FROM employees)) / (SELECT AVG(salary) FROM employees) * 100 >= 25;
    
