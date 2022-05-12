CREATE VIEW viewName as 
QUERYCommand

--- For securing view
CREATE VIEW viewName WITH ENCRYPTION as 
QUERYCommand

-- you cant delete a row from a view if it relates to more than 1 table 
-- you can delete if its only based on 1 table 

--you can insert beyond the range of the view , but it wont be able to fetch it but you can insert.

dbo -- database owner

--  views do not use order by unless you are using top
-- views allow you restrict what people can see when they execute it 
 
--- SEEK and SCAN is how SQL Server uses an indexed view.
 -- DROP to get rid of a view

 drop view viewname

 --- if EXISTS()

 --INDEXED VIEW

 with SCHEMABINDING  -- used to make a view schema bound.

 create unique CLUSTERED INDEX inx_ViewByDepartment on dbo.ViewByDepartment 
