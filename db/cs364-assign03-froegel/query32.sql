/*List the employees who has the second and third highest number of sales.
Sales can be found by joining all the tables from Employee to InvoiceLine (you can ignore the Quantity attribute)
and then counting the number of tuples for each employee.
Your output columns should be listed as FirstName, LastName and NumSales in that order;
note that you will need to alias the columns to achieve this.(query32.sql*/

SELECT LastName, FirstName, count(*)
    FROM (SELECT FirstName, LastName, EmployeeId FROM Employee) JOIN (SELECT CustomerId, SupportRepId FROM Customer)
            ON EmployeeId = SupportRepId
        NATURAL JOIN (SELECT CustomerId FROM Invoice)
    GROUP BY EmployeeId
    ORDER BY count(*) DESC
    LIMIT 2
    OFFSET 1
        
 
