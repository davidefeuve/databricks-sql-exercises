# Databricks SQL Exercises

A collection of SQL exercises completed in Databricks using Spark SQL to develop and demonstrate practical data analysis and data engineering skills.

This repository contains a growing set of SQL queries covering fundamental and intermediate concepts commonly used in real-world analytics and data engineering environments.

---

## Project Objectives

The objectives of this project are to:

* Strengthen SQL proficiency using Databricks and Spark SQL
* Practise querying and analysing structured datasets
* Develop problem-solving skills using SQL
* Demonstrate SQL capabilities through a public portfolio project
* Build experience with cloud-based data platforms

---

## Technologies Used

* Databricks
* Spark SQL
* GitHub
* CSV Datasets

---

## Datasets

The exercises use several datasets created and maintained for SQL practice:

| Dataset           | Description                                                                |
| ----------------- | -------------------------------------------------------------------------- |
| employees_dataset | Employee information including names, departments, salaries and hire dates |
| departments       | Department details, job titles and department managers                     |
| orders            | Order transaction data used for aggregation and analytical exercises       |
| city_population   | Population data used for grouping, filtering and ranking exercises         |

---

## SQL Topics Covered

Current exercises include:

* SELECT statements
* WHERE filtering
* ORDER BY
* LIMIT
* Aggregate functions
* GROUP BY
* HAVING
* Date functions
* String functions
* CASE statements
* Joins
* Subqueries

Planned additions include:

* Common Table Expressions (CTEs)
* Window Functions
* Ranking Functions
* Advanced Aggregations
* Data Quality Checks
* Analytical SQL Patterns

---

## Repository Structure

```text
databricks-sql-exercises/
│
├── datasets/
│   ├── city_population.csv
│   ├── departments.csv
│   ├── employees_dataset.csv
│   └── orders.csv
│
├── exercises/
│   └── SQL_exercises_solutions.sql
│
├── screenshots/
│
└── README.md
```

---

## Example Query

```sql
SELECT department,
       AVG(salary) AS avg_salary
FROM employees_dataset
GROUP BY department
ORDER BY avg_salary DESC;
```

---

## Skills Demonstrated

* SQL Query Development
* Data Exploration
* Data Aggregation
* Relational Data Analysis
* Data Transformation
* Analytical Thinking
* Databricks Workspace Usage
* Spark SQL Fundamentals
* Git and GitHub Version Control

---

## Future Improvements

Planned enhancements include:

* Additional SQL exercises
* Window function examples
* Common Table Expression (CTE) examples
* Query performance considerations
* More complex multi-table joins
* Databricks screenshots and walkthroughs

---

## Project Status

In Progress

This repository is continuously updated as new SQL concepts and exercises are completed.
