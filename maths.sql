-- if it shows pink, its a function

DECLARE @myvar as NUMERIC(7,2);

select @myvar * 2
select POWER(@myvar, 2)
select SQUARE(@myvar)
select SQRT(@myvar)

GO

FLOOR  - --rounds down to the nearest whole number 
CEILING(@myvar) --rounds up to the nearest whle number 
ROUND = -- takes it to the specifed decimal places

PI() -- basic pi in mathematices 

EXP(1)
ABS() --- Absolute value take away minus sign and returns the positive value
SIGN()   --  gives -1 for negative numbers, 0 for zero input, and 1 for positive numbers
RAND(345) --- Random value  

