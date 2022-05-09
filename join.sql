-- inner (default)get all row from both table but only where 1 row or more exist in both, rows get excuded if not present in both   
-- left  ,,,  gets all the rows on the left table and picks where it tally on the right table
-- right  ... gets all the row on the right and picks where it tally on the left table
-- cross  ... multiplis both tables and gives posible combination



Select tblEmployee.EmployeeNumber, EmployeeFirstName, sum(Amount) as sumOfAmount
from tblEmployee
join tblTransaction
on tblEmployee.EmployeeNumber = tblTransaction.EmployeeNumber
group by tblEmployee.EmployeeNumber, EmployeeFirstName, EmployeeLastName
order by tblEmployee.EmployeeNumber