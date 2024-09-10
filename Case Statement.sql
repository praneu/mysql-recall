-- Case Statement --

SELECT first_name, last_name, age, 
CASE
   WHEN age <= 30 THEN 'Young' 
   WHEN age BETWEEN 31 AND 40 THEN 'Mid-life'
   WHEN age >= 40 THEN 'Old'
   END AS Age_group
FROM employee_demographics;
 
-- Senario of pay incresase and bonuses:
-- Salary < 50000 = 5% increase
-- Salary > 50000 = 7% increase
-- Anyone from Finance department = 10% bonus

SELECT first_name, last_name, salary,
CASE
	WHEN salary < 50000 THEN salary + (salary * 0.05)
    WHEN salary > 50000 THEN  salary + (salary * 0.07)
END AS New_Salary,
CASE
    WHEN dept_id = 6 THEN salary * 0.10 
END AS Bonus
FROM employee_salary;




