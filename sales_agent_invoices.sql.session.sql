-- /Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.
SELECT Employee.FirstName || ' ' || Employee.LastName AS EmployeeName,
    Employee.Title,
    InvoiceId
FROM Invoice
    JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
    JOIN Employee ON Employee.EmployeeId = Customer.SupportRepId
Where Employee.Title = 'Sales Support Agent'