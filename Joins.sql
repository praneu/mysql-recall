-- Joins/ Inner

SELECT dem.employee_id, dem.first_name, dem.last_name, sal.occupation
FROM employee_demographics as dem
INNER JOIN employee_salary as sal
   ON dem.employee_id = sal.employee_id ;

-- Outer joins

-- Left outer joins --

SELECT Sal.employee_id, Dem.first_name, Dem.last_name, Dem.gender, Sal.occupation, Sal.salary
FROM employee_demographics AS Dem
LEFT OUTER JOIN employee_salary AS Sal
	ON DEM.employee_id = Sal.employee_id ;

-- Right outer joins--
SELECT Sal.employee_id, Dem.first_name, Dem.last_name, Dem.gender, Sal.occupation, Sal.salary
FROM employee_demographics AS Dem
RIGHT OUTER JOIN employee_salary AS Sal
	ON DEM.employee_id = Sal.employee_id ;

-- Self joins--

SELECT emp.first_name, emp.last_name,
emp_SecSa.first_name AS SecretSanta
FROM employee_salary AS emp
JOIN employee_salary AS emp_SecSa
	ON emp.employee_id +1  = emp_SecSa.employee_id;
 
