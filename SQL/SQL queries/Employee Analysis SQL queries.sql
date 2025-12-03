DROP DATABASE employee_analysis;
CREATE DATABASE employee_analysis;
USE employee_analysis;
CREATE TABLE employees (
    employee_id INT,
    department VARCHAR(100),
    region VARCHAR(100),
    education VARCHAR(100),
    gender VARCHAR(20),
    recruitment_channel VARCHAR(100),
    no_of_trainings INT,
    age INT,
    previous_year_rating FLOAT,
    length_of_service INT,
    kpis_met_more_than_80 INT,
    awards_won INT,
    avg_training_score INT,
    tenure_years FLOAT
);
USE employee_analysis;
SHOW TABLES;
SHOW CREATE TABLE employees;
SELECT COUNT(*) AS total_employees FROM employees;
SELECT department, COUNT(*) 
FROM employees
GROUP BY department;
SELECT department, AVG(avg_training_score)
FROM employees
GROUP BY department;
SELECT department, AVG(kpis_met_more_than_80)*100 AS kpi_success_rate
SELECT education, AVG(kpis_met_more_than_80)*100 AS kpi_success_rate
FROM employees
GROUP BY education;
SELECT recruitment_channel, COUNT(*)
FROM employees
GROUP BY recruitment_channel;
SELECT recruitment_channel, AVG(kpis_met_more_than_80)*100 AS kpi_success_rate
FROM employees
GROUP BY recruitment_channel;
SELECT kpis_met_more_than_80, AVG(age) 
FROM employees
GROUP BY kpis_met_more_than_80;
SELECT 
    CASE
        WHEN tenure_years < 2 THEN '0–2 years'
        WHEN tenure_years BETWEEN 2 AND 5 THEN '2–5 years'
        WHEN tenure_years BETWEEN 5 AND 10 THEN '5–10 years'
        ELSE '10+ years'
    END AS tenure_group,
    COUNT(*)
FROM employees
GROUP BY tenure_group;
SELECT kpis_met_more_than_80, AVG(avg_training_score)
FROM employees
GROUP BY kpis_met_more_than_80;
SELECT previous_year_rating, AVG(kpis_met_more_than_80)*100 AS kpi_rate
FROM employees
GROUP BY previous_year_rating;
SELECT COUNT(*) 
FROM employees
WHERE avg_training_score > 80;
SELECT awards_won, AVG(kpis_met_more_than_80)*100 AS kpi_success_rate
FROM employees
GROUP BY awards_won;
SELECT region, AVG(kpis_met_more_than_80)*100 AS kpi_success_rate
FROM employees
GROUP BY region;
SELECT region, AVG(avg_training_score)
FROM employees
GROUP BY region;
SELECT gender, AVG(kpis_met_more_than_80)*100
FROM employees
GROUP BY gender;
SELECT length_of_service, AVG(kpis_met_more_than_80)*100
FROM employees
GROUP BY length_of_service;
SELECT department,
       AVG(avg_training_score) AS avg_training_score,
       AVG(kpis_met_more_than_80)*100 AS kpi_success_rate
FROM employees
GROUP BY department
ORDER BY kpi_success_rate DESC;
SELECT department, AVG(previous_year_rating)
FROM employees
GROUP BY department;
SELECT
   CASE
      WHEN age < 25 THEN 'Under 25'
      WHEN age BETWEEN 25 AND 35 THEN '25-35'
      WHEN age BETWEEN 36 AND 45 THEN '36-45'
      ELSE '45+'
   END AS age_group,
   COUNT(*)
FROM employees
GROUP BY age_group;

