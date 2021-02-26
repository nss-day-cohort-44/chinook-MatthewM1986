-- /What are the respective total sales for each of those years?
SELECT STRFTIME('%Y', InvoiceDate) InvoiceYear,
    SUM(Total) TotalSales
FROM Invoice
WHERE InvoiceYear = '2009'
    OR InvoiceYear = '2011'
GROUP BY InvoiceYear