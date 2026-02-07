-- Day 4 SQL Practice: Employee Database Exploration

CREATE DATABASE company;

USE company;

CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    age INT NOT NULL,
    city VARCHAR(30) NOT NULL,
    post VARCHAR(30) NOT NULL,
    salary FLOAT NOT NULL,
    department VARCHAR(30) NOT NULL
) AUTO_INCREMENT = 1001;

SELECT * FROM employees;

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
('Abhishek Tiwari', 26, 'Data Analytics', 'Software Engineer', 42000, 'IT'),
('Renu Gupta', 29, 'Noida', 'Operations Executive', 48000, 'Operations'),
('Sahil Bhatia', 34, 'Mumbai', 'Senior Developer', 82000, 'IT'),
('Komal Singh', 27, 'Delhi', 'Content Strategist', 45000, 'Marketing'),
('Parth Desai', 30, 'Ahmedabad', 'Sales Executive', 47000, 'Sales'),
('Madhuri Joshi', 33, 'Pune', 'Finance Manager', 71000, 'Finance'),
('Arvind Menon', 35, 'Chennai', 'IT Manager', 88000, 'IT');

SELECT * FROM employees;

SELECT DISTINCT city FROM employees;
SELECT DISTINCT post FROM employees;
SELECT DISTINCT department FROM employees;

SELECT * FROM employees WHERE city = "Noida";
SELECT * FROM employees WHERE post = 'Data Analyst';
SELECT * FROM employees WHERE department = 'IT';

SELECT * FROM employees WHERE salary >= 75000;
SELECT * FROM employees WHERE salary < 75000;

SELECT * FROM employees WHERE city = 'Noida' AND salary >= 50000;
SELECT * FROM employees WHERE city = 'Noida' OR salary >= 75000;

SELECT * FROM employees WHERE city = 'Noida' OR city = 'Delhi' OR city = 'Mumbai';
SELECT * FROM employees WHERE city IN ('Noida', 'Delhi', 'Mumbai');

SELECT * FROM employees WHERE salary >= 50000 AND salary <= 75000;
SELECT * FROM employees WHERE salary BETWEEN 50000 AND 75000;

SELECT * FROM employees WHERE name LIKE 'a%';
SELECT * FROM employees WHERE name LIKE '%a';
SELECT * FROM employees WHERE name LIKE '%a%';

SELECT * FROM employees ORDER BY name;
SELECT * FROM employees ORDER BY salary;
SELECT * FROM employees ORDER BY salary DESC;

SELECT * FROM employees ORDER BY salary DESC LIMIT 10;
SELECT * FROM employees ORDER BY salary LIMIT 10;
SELECT * FROM employees ORDER BY salary DESC LIMIT 10 OFFSET 10;

SELECT *
FROM employees
WHERE salary BETWEEN 75000 AND 85000
ORDER BY salary DESC
LIMIT 3;

SELECT *
FROM employees
WHERE city = 'Noida'
ORDER BY salary DESC
LIMIT 3;
