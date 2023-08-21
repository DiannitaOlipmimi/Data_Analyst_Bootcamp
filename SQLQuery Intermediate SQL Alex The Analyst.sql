/*
INNER JOIN, FULL/LEFT/RIGHT/OUTER JOINS
*/

SELECT *
FROM EmployeeDemographics

SELECT *
FROM EmployeeSalary

SELECT *
FROM EmployeeDemographics
INNER JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID 

SELECT *
FROM EmployeeDemographics
FULL OUTER JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID 

/*
LEFT = FIRST TABLE
RIGHT = SECOND TABLE
*/

SELECT *
FROM EmployeeDemographics
LEFT OUTER JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID 

SELECT *
FROM EmployeeDemographics
RIGHT OUTER JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID 

SELECT 
EmployeeDemographics.EmployeeID,
FirstName,
LastName,
JobTitle,
Salary
FROM EmployeeDemographics
INNER JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID 


SELECT 
EmployeeSalary.EmployeeID,
FirstName,
LastName,
JobTitle,
Salary
FROM EmployeeDemographics
RIGHT OUTER JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID 

SELECT 
EmployeeDemographics.EmployeeID,
FirstName,
LastName,
JobTitle,
Salary
FROM EmployeeDemographics
LEFT OUTER JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

SELECT 
EmployeeDemographics.EmployeeID,
FirstName,
LastName,
Salary
FROM EmployeeDemographics
INNER JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE FirstName <> 'Michael'
ORDER BY Salary DESC

SELECT 
JobTitle,
AVG(Salary)
FROM EmployeeDemographics
INNER JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE JobTitle = 'Salesman'
GROUP BY JobTitle

/*
UNION, UNION ALL
select all data in one output
*/

SELECT *
FROM EmployeeDemographics
UNION ALL
SELECT *
FROM WareHouseEmployeeDemographics

/*
only connect if the column is the same
*/

SELECT EmployeeID, FirstName, Age
FROM EmployeeDemographics
UNION ALL
SELECT EmployeeID, JobTitle, Salary
FROM EmployeeSalary

/*
doesn't make sense, age != salary
*/

/*
CASE statment
*/

SELECT 
FirstName,
LastName,
Age,
CASE
	WHEN Age > 30 THEN 'Old'
	ELSE 'Young'
END
FROM EmployeeDemographics
WHERE Age is NOT NULL
ORDER BY Age

SELECT 
FirstName,
LastName,
Age,
CASE
	WHEN Age > 30 THEN 'Old'
	WHEN Age BETWEEN 27 AND 30 THEN 'Young'
	ELSE 'Baby'
END
FROM EmployeeDemographics
WHERE Age is NOT NULL
ORDER BY Age

SELECT 
FirstName,
LastName,
Age,
CASE
	WHEN Age = 38 THEN 'Stanley'
	WHEN Age > 30 THEN 'Old'
	WHEN Age BETWEEN 27 AND 30 THEN 'Young'
	ELSE 'Baby'
END
FROM EmployeeDemographics
WHERE Age is NOT NULL
ORDER BY Age

/*
the output based on the condition that meet first Stanley > Old
*/

SELECT FirstName, LastName, JobTitle, Salary,
CASE
	WHEN JobTitle = 'Salesman' THEN Salary + (Salary * 0.1)
	WHEN JobTitle = 'Accountant' THEN Salary + (Salary * 0.5)
	WHEN JobTitle = 'HR' THEN Salary + (Slaary * 0.000001)
	ELSE Salary + (Salary * 0.03)
END AS SalaryAfterRaise
FROM EmployeeDemographics
JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

/*
HAVING clause
*/

SELECT JobTitle, COUNT(JobTitle)
FROM EmployeeDemographics
JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE COUNT(JobTitle) > 1
GROUP BY JobTitle

/*
error because aggregate group by
*/

SELECT JobTitle, COUNT(JobTitle)
FROM EmployeeDemographics
JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING COUNT(JobTitle) > 1

SELECT JobTitle, AVG(Salary)
FROM EmployeeDemographics
JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING AVG(Salary) > 45000
ORDER BY AVG(Salary)

/*
UPDATE/DELETE data
*/

SELECT *
FROM EmployeeDemographics

UPDATE EmployeeDemographics
SET EmployeeID = 1012
WHERE FirstName = 'Holly' AND LastName = 'Flax'

UPDATE EmployeeDemographics
SET Age = 31,
Gender = 'Female'
WHERE FirstName = 'Holly' AND LastName = 'Flax'

SELECT *
FROM EmployeeDemographics

DELETE FROM EmployeeDemographics
WHERE EmployeeID = 1005

SELECT *
FROM EmployeeDemographics

/*
aliasing
*/

SELECT FirstName AS Fname
FROM EmployeeDemographics

SELECT FirstName Fname
FROM EmployeeDemographics

SELECT FirstName + ' ' + LastName FullName
FROM EmployeeDemographics

SELECT AVG(Age) AS AvgAge
FROM EmployeeDemographics

SELECT Demo.EmployeeID
FROM EmployeeDemographics Demo
JOIN EmployeeSalary Sal
	ON Demo.EmployeeID  =Sal.EmployeeID

SELECT 
Demo.EmployeeID, 
Demo.FirstName, 
Demo.LastName,
Sal. JobTitle, 
Ware.Age
FROM EmployeeDemographics Demo
LEFT JOIN EmployeeSalary Sal
	ON Demo.EmployeeID = Sal.EmployeeID
LEFT JOIN WareHouseEmployeeDemographics Ware
	ON Demo.EmployeeID = Ware.EmployeeID

/*
Partition By
Divide rather than sum row like GROUP BY
*/

SELECT 
FirstName, LastName, Gender, Salary,
COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender
FROM EmployeeDemographics Demo
JOIN EmployeeSalary Sal
	ON Demo.EmployeeID = Sal.EmployeeID

SELECT 
Gender, COUNT(Gender)
FROM EmployeeDemographics Demo
JOIN EmployeeSalary Sal
	ON Demo.EmployeeID = Sal.EmployeeID
GROUP BY Gender