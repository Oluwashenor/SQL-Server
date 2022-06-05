-- unions remove duplicate 
-- union all does not remove duplicates 
-- excepts == shows all rows that are in the first table except where it is present in the second. brings back anything new in the second table 
-- intersect -- like union, but discard the  (brings back everything that is old)

--ordering comes after the last query 

select convert(char(5), hi) as Greeting
UNION
select convert(char(5), 'hello') as GreetingNow
UNION
select convert(char(5), 'bonjour') as Greeting
UNION 
select convert(char(5), 'hi') as Greeting

select case when @variable = 'value A' then 'First Option'
            when @variable = 'Option B' then 'Second option'
            else 'No Option' END as ColumnHeaderName


-- elses are optional in cases

select case @variable when  'value A' then 'First Option'
            when 'Option B' then 'Second option'
            else 'No Option' END as ColumnHeaderName


isNull(a, b) if a is not equals null it returns A, else if B is not equals null, returns 
select * from tablename where COLUMNName is null

declare @variable as varchar(10) = 'Option B'
SELECT isnull(@variable, 'No Option') as MyOptions
go

-- isnull(A, B) if A is not equal null it returns A, if b is not equal to null it returns B, otherwise returns null;
-- isnull takes

-- coalesce, takes one or multiple options then it returns first non null value

----- MERGE ----
