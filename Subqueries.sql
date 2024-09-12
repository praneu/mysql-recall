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


-- The names of employees who are younger than 40 years old and earn more than the average salary of employees in their respective department.

SELECT ed.first_name, ed.last_name
FROM employee_demographics AS ed
JOIN employee_salary AS es ON ed.employee_id = es.employee_id
WHERE ed.age < 40 AND
es.salary > 
(SELECT AVG(salary)
FROM employee_salary
WHERE dept_id = es.dept_id);

-- The names of employees who work in departments where the average salary is greater than $60,000. Only include employees who are above 30 years old.

SELECT employee_demographics.first_name, employee_demographics.last_name
FROM employee_demographics 
JOIN employee_salary ON employee_demographics.employee_id = employee_salary.employee_id
WHERE employee_demographics.age > 30
AND employee_salary.dept_id IN 
(SELECT dept_id
FROM employee_salary
GROUP BY dept_id
HAVING AVG(salary) > 60000
);


-- The name of employees who earn more than the average salary of all employees.

SELECT employee_demographics.first_name, employee_demographics.last_name 
FROM employee_demographics
JOIN employee_salary ON employee_demographics.employee_id = employee_salary.employee_id
WHERE employee_salary.salary > 
                         (SELECT AVG(salary)
						  FROM employee_salary) ;
                          
-- The names of employees who have a salary higher than the average salary of their department.

SELECT employee_demographics.first_name ,employee_demographics.last_name
FROM employee_demographics
JOIN employee_salary ON employee_demographics.employee_id = employee_salary.employee_id
WHERE employee_salary.salary >
                       (SELECT AVG(salary)
                        FROM employee_salary
                        WHERE dept_id = employee_salary.dept_id);
                          
