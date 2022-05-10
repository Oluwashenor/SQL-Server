Not Null CONSTRAINT --- This one makes sure that a field is not empty

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