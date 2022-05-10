--TABLE CREATION--
-- The Command below is sued to create a table 
CREATE TABLE TableName (
    columnName int
)

-- TABLE CREATION WITH MULTIPLE columns --
--The command below is used to create table with multiple column--
CREATE TABLE tblEmployee
(columnNameA datatype,
 columnNameB datatype
)

create table tablename (columnA smallmoney not null,
 columnB smalldate not null,
 CONSTRAINT CONSTRAINTName unique (columnA, COLUMNB)
 )

ALTER TABLE tableName 
Add columnName datatype

ALTER TABLE tblEmployee
ADD Department VARCHAR(10)




--Command below removes a column from a table --
ALTER TABLE tblEmployee
DROP COLUMN Department

-- The command below modifies a table --
ALTER TABLE tblEmployee
ALTER COLUMN columnName datatype

--Used to select the right context--
use [DatabaseName]
go

-- GO defends the end of a batch 


Update TABLEName
Set ColumnName = NULL
Where ColumnName = ''