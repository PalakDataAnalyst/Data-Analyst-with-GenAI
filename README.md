# Data Analyst with GenAI 📊🤖
From HR Operations to Data Analytics—documenting my journey into SQL, Python, and GenAI-powered insights.

Welcome! This repository tracks my daily progress and projects while pursuing the **Data Analyst with GenAI course at Incapp**. I am focusing on bridging the gap between traditional data analysis and modern AI-driven workflows.

## 🚀 The Goal
To build a strong foundation in SQL, Python, and Data Visualization, using GenAI tools to accelerate data cleaning, query optimization, and insight generation.

## 🛠 Tech Stack
* **Languages:** SQL, Python
* **Tools:** Power BI, Excel
* **AI Integration:** Gen AI, ChatGPT, Gemini
* **Training Provider:** Incapp

## 📈 Learning Log
| Day | Topic | Key Achievement | Code |
| :--- | :--- | :--- | :--- |
| Day 01 | SQL Basics | CRUD operations & Basic Filtering | [Day01.sql](./SQL/Day01.sql) |
-- =========================================================
-- Day 01: SQL Basics - CRUD Operations & Basic Filtering
-- Course: Data Analyst with GenAI (Incapp Institute)
-- Author: Palak Srivastava
-- Purpose: Practice creating databases, tables, and performing
--          Create, Read, Update, Delete operations in SQL.
-- =========================================================
-- Day 01: Practiced SQL Basics - CRUD Operations & Basic Filtering

-- Creating a database
CREATE DATABASE school;

-- Dropping a database
DROP DATABASE school;

-- Creating and dropping schema
CREATE SCHEMA school;
DROP SCHEMA school;

-- Using the database
USE school;

-- Creating a table
CREATE TABLE students (
    roll_number INT,
    name VARCHAR(30),
    city VARCHAR(30)
);

-- Deleting a table
DROP TABLE students;

-- Reading table data
SELECT * FROM students;

-- Inserting data into table
INSERT INTO students (roll_number) VALUES (101);

INSERT INTO students (name, roll_number) 
VALUES ('Pankaj Mishra', 102);

INSERT INTO students 
VALUES (103, 'Manoj Pandey', 'Greater Noida');

-- Updating existing data in table
UPDATE students 
SET city = 'Noida' 
WHERE roll_number = 102;

UPDATE students 
SET name = 'Vijay Verma', city = 'Greater Noida' 
WHERE roll_number = 101;

-- Deleting specific row
DELETE FROM students 
WHERE roll_number = 102;

-- Deleting all rows
DELETE FROM students;
---
📌 Connect with me on [LinkedIn](https://www.linkedin.com/in/palak-srivastava-12bb19234)  
✉️ Email: palaksrivastava05@gmail.com
