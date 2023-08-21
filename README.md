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

**Part 2** | [Youtube](https://youtu.be/lYKkro6rKm0)

- UNION and UNION operator

example:


**Part 3** | [Youtube](https://youtu.be/Twusw__OzA8)

- CASE statment

example:

**Part 4** | [Youtube](https://youtu.be/tYBOMw7Ob8E)

- HAVING clause

example:

**Part 5** | [Youtube](https://youtu.be/bhnrIforc7s)

- UPDATE and DELETE data

example:

**Part 6** | [Youtube](https://youtu.be/Dk7he_yEs4U)

- Aliasing

example:

**Part 7** | [Youtube](https://youtu.be/D6XNlTfglW4)

- PARTITION BY

example:

</details>

## 📑SQL Advance