-- INTEGER --

-- tinyint 0-255 - 1 byte (No negavties)
-- smallint 2^15(- and +) - 2 byte
-- int 2^31 (- and +) - 4 byte
-- bigint 2^63 (- and +) - 8 byte

DECLARE @myVar as TINYINT = 2


-- DECIMAl --
-- 1 - 9   -- 5 bytes
-- 10-19   9 bytes
-- 20-28   13 bytes
-- 29 - 38  17 bytes
-- money 8 bytes 
-- small money 4 bytes 


--Numeric is functionally equivalent to decimal

Declare @myvar as decimal(7,2) -- or numeric(7,2)
--Using (7,2) measn the vaalue can have 7 vaues all together but only 2 values after decimal
--12345.67-- is valid for the above 

-- CONVERSION BETWEEN NUBMER TYPES --
--IMPLICIT --
DECLARE @myvar as DEcimal(5,2) = 3
SELECT @myvar

--Explicit --
SELECT CONVERT (decimal(5,2), 3)
SELECT CAST(3 as decimal(5,2))/2
TRY_CONVERT  -- This function returns null if tit fails to convert --

SELECT convert(decimal(5,2), 1000) -- This will flag an error

---Strings
CHAR  -- ASCII 1 byte
VARCHAR -- ASCII
NCHAR -- UNICODE 2 bytes
NVARCHAR  -- UNICODE

len(variable) - get variable length 
DATALENGTH(variable) - shows how many byte it uses 

if you use char(10), and dont store anything inside it will stilluse 10 bytes 
unlike a varchar(10) but a varchar requires etxra 2 bytes. 

if you use n in char and varchar means you can use UNICODE easily.

DECLARE @charCharacter as char(valueLength)
--Using char(value) would trim out any character after the valueth character and it alswyas uses value bytes --
SET @charCharcater = 'HelloThere'
SELECT @charCHarcter as myString len(@charCHarcter) as MyLength, DATALENGTH(@charCHarcter) as myDataLength

DECLARE @charCharacter as varchar(10)
--Using varchar(10) always uses an extra byte to store --
SET @charCharcater = 'HelloThere'
SELECT @charCHarcter as myString len(@charCHarcter) as MyLength, DATALENGTH(@charCHarcter) as myDataLength

DECLARE @charCharacter as nchar(value)
--Using char(value) would trim out any character after the valueth character and it alswyas uses value bytes --
SET @charCharcater = 'HelloThere'
SELECT @charCHarcter as myString len(@charCHarcter) as MyLength, DATALENGTH(@charCHarcter) as myDataLength

DECLARE @charCharacter as nvarchar(value)
--Using nvarchar(value) always uses an extra byte to store --
SET @charCharcater = 'HelloThere'
SELECT @charCHarcter as myString len(@charCHarcter) as MyLength, DATALENGTH(@charCHarcter) as myDataLength



DECLARE @myvariable NVARCHAR(20) = N'hello'

How many bytes are used in N'hello'?



it is an NVARCHAR. It is 1 byte for each letter of hello, then multiply by 2 for the "N", plus 2 bytes because it is a "VAR". This makes (5*2)+2 = 12.

left(@variable, 2) -- this command shows 2 chaacters from the left 
right(@variable, 2) -- this command shows 2 chaacters from the right
substring(@variable, 3, 2) -- this command shows 2 chaacters from the left after 3 characters

--T Sql is not zero based, it starts counting from 1--

LTRIM removes space from the beginning of a string,
 and RTRIM removes spaces from the end.
 replace(varibale, 'i', 'L') - it replaces the first value WITH the larger value. 

--- ADDING STRINGS TOGETHER +
-- if is iif
-- case when can be used for conditions too 
Case when condition then case1 else case2

coalesce(''+variable)

concat(@variable1, ' ' +@varible2, ' ', variable2)

--- ADDING STRING TO INT
FORMAT(variable, 'c')  -- formats the value to a money format in dollar
FORMAT(variable, 'C', 'en-gb') -- Great Britain
FORMAT(variable, 'C', 'fr-FR') -- French money



--- DATE DATATYPES --

time
date
smalldatetime
datetime
DATETIME2
datetimeoffset

declare @mydate as datetime = '2015-06-24 12:34:56.124'
select @mydate as MyDate

declare @mydate2 as datetime = '20150624 12:34:56.124'
select @mydate2 as MyDate

SELECT DATEFROMPARTS(2015,06,24) as ThisDate
SELECT DATETIME2FROMPARTS(2015,06,24, 12,34,56,124,3) as ThatDate
Select year(@mydate) as myYear, month(@mydate) as myMonth, day(@mydate) as MyDAY

select Current_Timestamp as RightNow
select getDate() as RightNow
select sysdatetime() as RightNow
select dateadd(Year, 1, '2015-01-02 03:04:05') as myYear
select datepart(HOUR, '2015-01-02 03:04:05') as myHour
select DATENAME(WEEKDAY, getdate()) as myAnswer
select datediff(microsecond, '2015-01-02 03:04:05', GETDATE() ) as monthsElapsed 