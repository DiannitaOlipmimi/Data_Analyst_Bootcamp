SELECT TOP (1000) 
[EmployeeID],
[FirstName],
[LastName],
[Age],
[Gender]
FROM [SQL Tuturial].[dbo].[EmployeeDemographics]

SELECT * FROM [SQL Tuturial].[dbo].[EmployeeSalary]

/*
using SELECT statment
TOP, DISTINCT, COUNT, AS, MAX, MIN, AVG
*/

SELECT TOP 5 *
FROM EmployeeDemographics

SELECT DISTINCT(EmployeeID)
FROM EmployeeDemographics

SELECT DISTINCT(Gender)
FROM EmployeeDemographics

/*
showing sum of all non null values
*/

SELECT COUNT(LastName) AS LastNameCount
FROM EmployeeDemographics

SELECT MAX(Salary)
FROM EmployeeSalary

SELECT MIN(Salary)
FROM EmployeeSalary

SELECT AVG(Salary)
FROM EmployeeSalary


/*
WHERE statment
=, <>, <, >, AND, OR, LIKE, NULL, NOT NULL, IN
*/

SELECT *
FROM EmployeeDemographics
WHERE FirstName = 'Jim'

SELECT *
FROM EmployeeDemographics
WHERE FirstName <> 'Jim'

SELECT *
FROM EmployeeDemographics
WHERE Age > 30

SELECT *
FROM EmployeeDemographics
WHERE Age <= 32

SELECT *
FROM EmployeeDemographics
WHERE Age <= 30 AND GENDER = 'Male'

/*
Only one Criteria
*/

SELECT *
FROM EmployeeDemographics
WHERE Age <= 30 OR GENDER = 'Male'

SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'S%'

SELECT *
FROM EmployeeDemographics
WHERE FirstName is NOT NULL

SELECT *
FROM EmployeeDemographics
WHERE FirstName IN ('Jim', 'Michael')

/*
GROUP BY, ORDER BY
*/

SELECT *
FROM EmployeeDemographics

SELECT Gender, COUNT(Gender)
FROM EmployeeDemographics
GROUP BY Gender 

SELECT Age,Gender, COUNT(Gender)
FROM EmployeeDemographics
GROUP BY Gender, Age 

SELECT Age,Gender, COUNT(Gender) AS COUNTGENDER
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender, Age 
ORDER BY AGE DESC

SELECT Age,Gender, COUNT(Gender) AS COUNTGENDER
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender, Age 
ORDER BY Age ASC

SELECT *
FROM EmployeeDemographics
ORDER BY 4 DESC, 5 

SELECT *
FROM EmployeeDemographics
ORDER BY 4 DESC, 5 DESC