CREATE DATABASE Company;
USE Company;

CREATE TABLE Employees(
Id INT PRIMARY KEY,
Name VARCHAR(50),
Age INT NOT NULL,
Salary INT,
City VARCHAR(50)
);

INSERT INTO Employees ( Id, Name, Age, Salary, City) VALUES
	(1,'Amit', 25,	30000,	'Delhi'),
	(2,'Neha',	30,	 50000,	'Mumbai'),
	(3,'Rahul',	22,	25000,	'Delhi'),
	(4,'Priya',	28,	40000,	'Pune'),
	(5,'Ankit',35,	60000,	'Mumbai');
    
-- Q1. Write a query to display all columns from the Employees table.
SELECT * FROM Employees;

-- Q2. Show only name and salary of all employees.
SELECT Name, Salary FROM Employees;

-- Q3. Find employees who live in 'Delhi'.
SELECT * FROM Employees
WHERE City = 'Delhi'

-- Q4. Find employees whose age is greater than 25 AND salary is more than 30000.
SELECT * FROM Employees
WHERE age > 25 AND salary > 30000;

-- Q5. Find employees who live in 'Mumbai' OR 'Pune'.
SELECT * FROM Employees
WHERE city = 'Mumbai' OR city = 'Pune';

-- Q6. Find employees who are NOT from 'Delhi'.
SELECT * FROM Employees
WHERE city != 'Delhi';

-- Q7. Display all employees sorted by salary (high to low).
SELECT * FROM Employees
ORDER by  Salary DESC;

-- Q8. Sort employees by age (low to high).
 SELECT * FROM Employees
ORDER by  Age ASC;

-- Q9. Show only first 3 employees.
SELECT * FROM Employees
LIMIT 3;

-- Q10. Show unique cities from Employees table.
SELECT DISTINCT city FROM Employees;



