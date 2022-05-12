-- NOCOUNT ON , stops the no of row line from comming up

CREATE TRIGGER trigger_name 
on tablename
after delete, INSERT, UPDATE
as 
BEGIN
    select * from Inserted
    select * from Deleted
END
Go

-- after query accepts, 1 or 2 or 3 actions 



CREATE TRIGGER trigger_name 
on tablename
INSTEAD OF delete
as 
BEGIN
    select * from Inserted
    select * from Deleted
END
Go