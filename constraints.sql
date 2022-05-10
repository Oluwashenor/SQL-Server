Not Null CONSTRAINT --- This one makes sure that a field is not empty

-- Unique Constraints --

alter table tablename add CONSTRAINT constraintsName unique (columnname)
alter table tablename drop CONSTRAINT constraintsName
alter table tablename add CONSTRAINT constraintsName unique (columnname1, columnname2, columnname3) -- shows that the 3 columns cannot all be reapted together but can be repeated indiviually 

-- default CONSTRAINT 
alter table tableName add CONSTRAINT nameofConstraint DEFAULT GETDATE() for DateOfEntry

create table tablename 
(
    Amount SMALLMONEY not null,
    ColumnB smalldate not null,
    columnC datetime null CONSTRAINT CONSTRAINTName DEFAULt GETDATE()

)

-- check CONSTRAINTS
They allow refilling input aside datatype. such as maximum and minimum , range and the likes.

alter table tblTransaction add CONSTRAINT chkAmount check (Amount >-1000 and Amount < 1000)

ALTER table tableName with NOCHECK
add CONSTRAINT CONSTRAINTNAME CHECK
(REPLACE(columnName, '.', '') = columnName or columnName is null)

 --- Primary Key 
 -- PRIMARYKEYs are unique
 -- Cannot be Null
 -- Are usually clustered which also means sorted 
 

 alter table tblname
 add CONSTRAINT pk_constraitName PRIMARY KEY (ColumnName)

  alter table tblname
 add CONSTRAINT fk_constraitName FOREIGN KEY (ColumnName)
 REFERENCES tableName(columnName)

 CREATE TABLE tablename
 (COLUMNName int CONSTRAINT constarintName PRIMARY KEY IDENTITY(1,1),
 coloumnName VARCHAR(20)
 )

 SET IDENTITY_INSERT tablename OFF
  SET IDENTITY_INSERT tablename ON


-- THe two below work regardless of previously worked on table is.
  select @@IDENTITY
  select SCOPE_IDENTITY()


  select IDENT_CURRENT(tablename)



----FOREIGN KEY ----