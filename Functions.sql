-- String Functions --

SELECT first_name, LENGTH(first_name)
FROM employee_demographics
ORDER BY 1;

SELECT department_name , UPPER(department_name)
FROM parks_departments;

SELECT TRIM('     WELCOME    ') AS TrimmedString;
SELECT LTRIM('     WELCOME    ') AS TrimmedString;
SELECT RTRIM('     WELCOME    ') AS TrimmedString;

SELECT first_name, 
LEFT(first_name,3) AS Left_ExtractString,
RIGHT(first_name, 4) AS Right_ExtractString
FROM employee_salary;

SELECT first_name,
SUBSTRING(first_name,3,2)
FROM employee_demographics;

SELECT birth_date,
SUBSTRING(birth_date,6,2) AS birth_month
FROM employee_demographics;

SELECT birth_date,
REPLACE(birth_date,0,'')
FROM employee_demographics;

SELECT LOCATE ('P', 'Pablo');

SELECT first_name,
LOCATE('an',first_name)
FROM employee_demographics
ORDER BY 2;


SELECT first_name, last_name,
CONCAT(first_name,' ', last_name) AS Full_Name
FROM employee_demographics;


-- Nummeric Functions --

SELECT COUNT(department_id) AS Number_of_Departments
FROM parks_departments;

SELECT AVG(salary) AS Average_Salary
FROM employee_salary;

SELECT MAX(salary) AS Lagest_Salary
FROM employee_salary;



