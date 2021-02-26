-- /Provide a query showing the Invoices of customers who are from Brazil. The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.
SELECT Customer.FirstName || ' ' || Customer.LastName AS EmployeeName,
    Invoice.InvoiceId,
    Invoice.InvoiceDate,
    Customer.Country
FROM Invoice
    INNER JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
Where Country = 'Brazil'