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


Declare @myvar as decimal(7,2) -- or numeric(7,2)
--12345.67-- is valid for the above 