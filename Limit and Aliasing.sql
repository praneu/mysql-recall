-- LIMIT & ALIASING

SELECT *
FROM employee_demographics
LIMIT 3;

-- Find the three Oldest employee -- 

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 3;

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 1 ,1 ;  -- the row after the first.--

-- Aliasing

#SELECT gender , AVG(age) AS avg_age 
 SELECT gender , AVG(age)  avg_age
FROM employee_demographics
GROUP BY gender
HAVING avg_age > 40;
