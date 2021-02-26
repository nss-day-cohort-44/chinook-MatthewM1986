-- /Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.
SELECT InvoiceId,
    Total,
    Customer.FirstName || ' ' || Customer.LastName AS CustomerName,
    Customer.Country,
    Employee.FirstName || ' ' || Employee.LastName AS SalesAgentName
FROM Invoice
    JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
    JOIN Employee ON Employee.EmployeeId = Customer.SupportRepId
Where Employee.Title = 'Sales Support Agent'