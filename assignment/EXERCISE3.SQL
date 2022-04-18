Use Hr db with employees table
--Write a query to display first_name,hired date ('%d),midweek 
--using case statement as follows 
--if hire_date >15 then display 'AFTER 15'
--if hire_date <15 then display 'BEFORE 15'
--else correct 15

SELECT FirstName, HireDate, strftime('%d', HireDate/2) from employee;

SELECT HireDate, CASE WHEN HireDate > 15 THEN 'AFTER 15'

WHEN HireDate < 15 THEN 'BEFORE 15'

ELSE 'CORRECT' END FROM Employee;