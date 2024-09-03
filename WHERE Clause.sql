SELECT * 
FROM employee_salary
WHERE first_name = 'Ron' ;

SELECT *
FROM employee_salary
WHERE salary <= 50000 ;

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01' 
ORDER BY birth_date; 

-- AND OR NOT --
 
SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
AND gender = 'Male' ;

SELECT *
FROM employee_salary
WHERE salary = 50000 OR dept_id =1; 

SELECT * 
FROM employee_demographics
WHERE age <=29 
OR NOT gender = 'Male';


SELECT *
FROM employee_salary
WHERE (occupation ='Office Manager' AND last_name = 'Meagle') OR Salary <= 50000;

SELECT *
FROM employee_demographics
WHERE (first_name = 'Leslie' AND  age = 44 ) OR age > 55;

-- LIKE Statement = looks for a specific sequence patterns  --
-- % -anything and _ - exactly 

SELECT *
FROM employee_demographics
WHERE first_name LIKE '%er%';

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a%';

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a__';

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'A___%';

SELECT *
FROM employee_demographics
WHERE birth_date LIKE '1994_____7' ;


