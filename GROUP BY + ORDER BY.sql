SELECT *
FROM employee_demographics;

-- Using group by clause without aggerigated functions, the fields should match. Like shown below

SELECT gender
FROM employee_demographics
GROUP BY gender;

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender;

SELECT gender, AVG(age), MAX(age), MIN(age), Count(age)
FROM employee_demographics
GROUP BY gender;

-- Order by
SELECT *
FROM employee_demographics
ORDER BY first_name DESC;

# The placement in the columns on the order by plays a important role.
SELECT *
FROM employee_demographics
ORDER BY gender, age;

# Column Position instead of column name
SELECT *
FROM employee_demographics
ORDER BY 5, 4;


