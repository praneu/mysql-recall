-- Subqueries --

SELECT *
FROM employee_demographics
WHERE employee_id IN 
				(SELECT employee_id
	                 FROM employee_salary
                     WHERE dept_id = 1);
				

SELECT first_name, salary, AVG(salary)
FROM employee_salary
GROUP BY salary, first_name;

SELECT first_name, salary,
  (SELECT AVG(salary) FROM employee_salary) AS avg_salary
FROM employee_salary;


SELECT gender, 
AVG(age) AS avg_age, 
MIN(Age) AS min_age, 
MAX(age) AS max_age, 
COUNT(gender) 
FROM employee_demographics
GROUP BY gender;

-- Avg of the oldest (max_age) or avg of the youngest age --

SELECT AVG(max_age)
FROM
(SELECT gender, 
AVG(age) AS avg_age, 
MIN(Age) AS min_age, 
MAX(age) AS max_age, 
COUNT(gender) employee_demographics
FROM employee_demographics
GROUP BY gender) AS agg_table;


-- the names of employees who are younger than 40 years old and earn more than the average salary of employees in their respective department.

SELECT ed.first_name, ed.last_name
FROM employee_demographics AS ed
JOIN employee_salary AS es ON ed.employee_id = es.employee_id
WHERE ed.age < 40 AND
es.salary > 
(SELECT AVG(salary)
FROM employee_salary
WHERE dept_id = es.dept_id);
