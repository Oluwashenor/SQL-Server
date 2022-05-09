-- The command below names the column MyAnswer by using the 'AS' command, AS is optional-- 
SELECT 4+9 AS MyAnswer 


SELECT ColumnName FROM tableName
SELECT * FROM tableName
SELECT TOP(5) * FROM tableName
SELECT actualName AS proposedName, actualName AS proposedName FROM SportTeams

SELECT * FROM tableName where [column] = 'value'  -- Equals to value
SELECT * FROM tableName where [column] <> 'value'  -- not Equal to value
SELECT * FROM tableName where [column] < 'value'  -- where they come earlier in the alphabet than the word value
SELECT * FROM tableName where [column] >= 'value'  -- where they come after or equal in the alphabet than the word value
SELECT * FROM tableName where [column] LIKE 'W%'  -- starts with w
SELECT * FROM tableName where [column] LIKE '%W%'  -- 
SELECT * FROM tableName where [column] LIKE '_W%'  -- has one leter before w


-- % =0 - infinty character
-- _ = 1 character
-- [A-G] = in the range A-G
-- [AGQ]  = A, G, Q
-- [^AGQ] = NOT A, G or Q

SELECT * from tablename where columnname like '[r-t]%' -- where coulnmname start with a r, s or t 
SELECT * from tablename where columnname like '[^rst]%' -- where columnname not start wth rst 
SELECT * from tablename where columnname like '[%]%' -- where columnname not start wth %

SELECT * from tblEmployee
WHERE EmployeeNumber <=200

SELECT * from tblEmployee
WHERE EmployeeNumber != 200

SELECT * from tblEmployee
WHERE EmployeeNumber >=200 and EmployeeNumber <= 209

SELECT * from tblEmployee
WHERE EmployeeNumber < 200 or EmployeeNumber > 209

SELECT * from tblEmployee
WHERE EmployeeNumber BETWEEN 200 and 209

SELECT * from tblEmsployee
WHERE EmployeeNumber NOT BETWEEN 200 and 209

SELECT * from tblEmployee
WHERE EmployeeNumber in (200, 204, 208)

select YEAR(dATEOFBIRTH) FROM TABLENAME

select YEAR(dATEOFBIRTH), COUNT(*) as NumberBorn FROM TABLENAME Group By year(dATEOFBIRTH) -- it picks for each year and summaries number of people i that row

select left(employeelastname, 1) as Initial, count(*) as CountOfInitial from the tblEmployee group by  left(employeelastname, 1)

select left(employeelastname, 1) as Initial, count(*) as CountOfInitial
from the tblEmployee 
group by  left(employeelastname, 1)
having count(*)>=50
ORDER by COUNT(*) DESC



-- SELECT FROM  WHERE, GROUP BY, HAVING and ORDER BY.

-- The WHERE clause can reduce the number of rows remaining only before the GROUP BY takes place, and the HAVING can reduce the number of rows after the grouping.

-- A SELECT clause alias is:

SELECT MyField as MyNewField

Select column, count(*) as columnHeading
from tableName
group by column

-- The query below selects a column from another table, hene the derived table 

select column (Select column, count(*) as columnHeading
from tableName
group by column)

 ----  Derived tables

 you cant use order by in derived tables



select distinct columnName from tablename


-- you can also select into a new table 


---- joining 3 tables 
