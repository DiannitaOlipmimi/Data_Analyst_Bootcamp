# Data Analyst Bootcamp by Alex The Analyst

YouTube's first FREE Data Analyst Bootcamp

https://youtube.com/playlist?list=PLUaB-1hjhk8FE_XZ87vPPSfHqb6OcM0cF

## 🗂️Table of Contents
1. [SQL Basic]()
2. [SQL Intermediate]()
3. [SQL Advance]()
4. [Excel]()
5. [Tableau]()
6. [Power BI]()
7. [Python]()
8. [Portofolio Project (SQL)]()
9. [Portofolio Project Github]()

## 📑SQL Basic
<details>

**Part 1** | [Youtube](https://youtu.be/RSlqWnP-Dy8)

- installing SQL Server Management Studio
- create tables

example:
```sql
CREATE TABLE EmployeeSalary
(EmployeeID int,
JobTitle Varchar(50),
Salary int)
```

**Part 2** | [Youtube](https://youtu.be/PyYgERKq25I)

- SELECT and FROM statment

example:
```sql
SELECT TOP 5 *
FROM EmployeeDemographics
```

**Part 3** | [Youtube](https://youtu.be/A9TOuDZTPDU)

- WHERE statment

example:
```sql
SELECT *
FROM EmployeeDemographics
WHERE FirstName <> 'Jim'
```

**Part 4** | [Youtube](https://youtu.be/LXwfzIRD-Ds)

- GROUP BY and ORDER BY statment

example:
```sql
SELECT Age,Gender, COUNT(Gender) AS COUNTGENDER
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender, Age 
ORDER BY AGE DESC
```

</details>

## 📑SQL Intermediate

<details>

**Part 1** | [Youtube](https://youtu.be/9URM1_2S0ho)

- INNER OUTER JOIN 

example:

```sql
SELECT *
FROM EmployeeDemographics
INNER JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID 
```

**Part 2** | [Youtube](https://youtu.be/lYKkro6rKm0)

- UNION and UNION operator

example:

```sql
SELECT *
FROM EmployeeDemographics
UNION ALL
SELECT *
FROM WareHouseEmployeeDemographics
```


**Part 3** | [Youtube](https://youtu.be/Twusw__OzA8)

- CASE statment

example:

```sql
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
```

**Part 4** | [Youtube](https://youtu.be/tYBOMw7Ob8E)

- HAVING clause

example:

```sql
SELECT JobTitle, AVG(Salary)
FROM EmployeeDemographics
JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING AVG(Salary) > 45000
ORDER BY AVG(Salary)
```

**Part 5** | [Youtube](https://youtu.be/bhnrIforc7s)

- UPDATE and DELETE data

example:

```sql
UPDATE EmployeeDemographics
SET Age = 31,
Gender = 'Female'
WHERE FirstName = 'Holly' AND LastName = 'Flax'
```

**Part 6** | [Youtube](https://youtu.be/Dk7he_yEs4U)

- Aliasing

example:

```sql
SELECT AVG(Age) AS AvgAge
FROM EmployeeDemographics
```

**Part 7** | [Youtube](https://youtu.be/D6XNlTfglW4)

- PARTITION BY

example:

```sql
SELECT 
FirstName, LastName, Gender, Salary,
COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender
FROM EmployeeDemographics Demo
JOIN EmployeeSalary Sal
	ON Demo.EmployeeID = Sal.EmployeeID
```

</details>

## 📑SQL Advance

<details>

**Part 1** | [Youtube](https://youtu.be/K1WeoKxLZ5o)

- CTE (Common Table Expression)

example:

```sql

```

**Part 2** | [Youtube](https://youtu.be/RF0LE3hYFrI)

- Create Temporary table

example:

```sql

```

**Part 3** | [Youtube](https://youtu.be/GQj6_6V_jVA)

- String function 

example:

```sql

```

**Part 4** | [Youtube](https://youtu.be/NrBJmtD0kEw)

- Stored Procedures

example:

```sql

```

**Part 5** | [Youtube](https://youtu.be/m1KcNV-Zhmc)

- Subqueries

example:

```sql

```

</details>