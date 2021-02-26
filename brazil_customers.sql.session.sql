-- Provide a query only showing the Customers from Brazil.
SELECT FirstName || ' ' || LastName AS EmployeeName,
    CustomerId,
    Country
FROM Customer
Where Country = 'Brazil'