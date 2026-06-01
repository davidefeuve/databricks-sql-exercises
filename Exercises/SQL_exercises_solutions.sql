-- Databricks notebook source
USE data_engineering;

-- COMMAND ----------

SHOW TABLES;

-- COMMAND ----------

-- Exercise 1
-- Write a query to select the first_name, last_name and email columns from employees_dataset
SELECT first_name, last_name, email
FROM employees_dataset
LIMIT 10;

-- COMMAND ----------

-- Exercise 2
-- Write a query to get all employees who were hired after 2022-01-01

SELECT first_name, last_name, date_hired
FROM employees_dataset
WHERE date_hired > '2022-01-01'
LIMIT 10;

-- COMMAND ----------

-- Exercise 3: Sorting results with ORDER BY
-- Write a query to get a list of employees sorted by last_name in descending order

SELECT first_name, last_name
FROM employees_dataset
ORDER BY last_name DESC
LIMIT 10;

-- COMMAND ----------

-- Exercise 4: Aggregate functions - COUNT
-- Write a query to count how many employees work in each department

SELECT department, COUNT(*) as employee_count
FROM employees_dataset
GROUP BY department
ORDER BY employee_count DESC;

-- COMMAND ----------

-- Exercise 5: Filtering groups using HAVING
-- Write a query to get the department with more than 200 employees

SELECT department, COUNT(*) as employee_count
FROM employees_dataset
GROUP BY department
HAVING employee_count > 200;

-- COMMAND ----------

-- Exercise 6: Using DISTINCT to remove duplicates
-- Write a query to list all unique department_id values in the employees_dataset table

SELECT DISTINCT department_id
FROM employees_dataset;

-- COMMAND ----------

-- Exercise 7: Joinning two tables (INNER JOIN)
-- Write a query to list all employees with their department_manager by joining the employees table with the departments table

SELECT e.first_name, e.last_name, d.department_id, d.department_manager
FROM employees_dataset e
INNER JOIN departments d ON e.department_id = d.department_id
LIMIT 10;

-- COMMAND ----------

-- Exercise 8: Using WHERE with JOIN
-- Write a query to find employees working in the 'Sales' department

SELECT e.first_name, e.last_name, d.department_id, d.department
FROM employees_dataset e
INNER JOIN departments d ON e.department_id = d.department_id
WHERE d.department = 'Sales'
LIMIT 10;

-- COMMAND ----------

-- Exercise 9: LEFT JOIN
-- Write a query to get all employees, including those who are not assigned to any department

SELECT e.first_name, e.last_name, d.department
FROM employees_dataset e
LEFT JOIN departments d ON e.department_id = d.department_id
LIMIT 10;

-- COMMAND ----------

-- Exercise 10: Using subqueries in SELECT
-- Write a query to get the employee with the highest salary in each department

SELECT e.first_name, e.last_name, e.salary, e.department
FROM employees_dataset e
WHERE e.salary = (
    SELECT MAX(salary)
    FROM employees_dataset
    WHERE department_id = e.department_id
);

-- COMMAND ----------

-- Exercise 11: Using CASE for conditional logic
-- Write a query to categorize employees based on their salary.
-- If the salary is greater than 75000, label as 'High Salary'; otherwise label it as 'Low Salary'

SELECT first_name, last_name, salary,
CASE 
    WHEN salary > 75000 THEN 'High Salary'
    ELSE 'Low Salary'
END AS salary_category
FROM employees_dataset
LIMIT 10;

-- COMMAND ----------

-- Exercise 12: String functions - CONCAT
-- Write a query to get a full name column by concatenating first_name and last_name

SELECT first_name, last_name, CONCAT(first_name, ' ', last_name) as full_name
FROM employees_dataset
LIMIT 10;

-- COMMAND ----------

-- Exercise 13: Date functions - YEAR
-- Write a query to list all employees hired in the year 2021

SELECT first_name, last_name, date_format(date_hired, 'dd/MM/yyyy') AS date_hired
FROM employees_dataset
WHERE YEAR(date_hired) = 2021
LIMIT 10;

-- COMMAND ----------

-- DBTITLE 1,Cell 16
-- Exercise 14: Aliases for Columns and Tables
-- Write a query to list employees along with their department names, using aliases for the table and columns

SELECT e.first_name AS `Employee First Name`, e.last_name AS `Employee Last Name`, d.department AS `Department`
FROM employees_dataset e
INNER JOIN departments d ON e.department_id = d.department_id
LIMIT 10;

-- COMMAND ----------

-- Exercise 15: Usint IN to filter data
-- Write a query to list employees who work in the 'Sales' or 'HR' departments

SELECT first_name, last_name, date_format(date_hired, 'dd/MM/yyyy') AS date_hired, department
FROM employees_dataset
WHERE department IN ('Sales', 'HR')
LIMIT 10;

-- COMMAND ----------

-- This is another way to complete exercise 15

SELECT first_name, last_name, date_format(date_hired, 'dd/MM/yyyy') AS date_hired, department
FROM employees_dataset
WHERE department = 'Sales' OR department = 'HR'
LIMIT 10;

-- COMMAND ----------

-- Exercise 16: Updating data
-- Write a query to update the office_location in departments table to 'Cambridge' where department = 'HR'

UPDATE departments
SET office_location = 'Cambridge'
WHERE department = 'HR';

-- COMMAND ----------

-- Confirm the update

SELECT department, office_location
FROM departments
WHERE department = 'HR'
LIMIT 10;

-- COMMAND ----------

-- Exercise 17: Deleting Data
-- Write a query to delete employees whith last_name = 'Gonzalez'

DELETE FROM employees_dataset
WHERE last_name = 'Gonzalez';

-- COMMAND ----------

