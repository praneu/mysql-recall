-- Having and Where

SELECT gender, AVG(age)
FROM employee_demographics
-- WHERE AVG(age) > 40 ERROR --
GROUP BY gender 
HAVING AVG(age);


SELECT occupation, AVG(salary)
FROM employee_salary
GROUP BY occupation;


SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'  -- Data filtered at the row level
GROUP BY occupation
HAVING AVG(salary) > 75000  -- Filtered at the aggregate function level
							-- This having is only going to work for aggregated function after the group by actually runs.
;