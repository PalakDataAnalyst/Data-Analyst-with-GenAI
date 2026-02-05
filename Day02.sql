-- =========================================================
-- Day 02: SQL Aggregates & Table Alteration Practice
-- Course: Data Analyst with GenAI 
-- Author: Palak Srivastava
-- Purpose: Practice database creation, multi-row inserts,
--          altering tables, and updating records.
-- =========================================================

-- Create database if not exists
CREATE DATABASE IF NOT EXISTS company;

-- Drop database if exists
DROP DATABASE IF EXISTS company;

-- Use database
USE company;

-- Create employees table
CREATE TABLE IF NOT EXISTS employees (
    id INT,
    name VARCHAR(50),
    salary FLOAT
);

-- Read table data
SELECT * FROM employees;

-- Inserting multiple rows with single insert query
INSERT INTO employees (id, name, salary)
VALUES
(1001, 'Vijay Verma', 52500),
(1002, 'Mahima Gupta', 53600),
(1003, 'Pankaj Mishra', 55250);

-- Add new column 'department' to employees table
ALTER TABLE employees ADD COLUMN department VARCHAR(30);

-- Update all rows with default department
UPDATE employees SET department = 'IT';

-- Update specific row
UPDATE employees SET department = 'Management' WHERE id = 1002;
