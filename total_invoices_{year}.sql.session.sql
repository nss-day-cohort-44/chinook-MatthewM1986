-- /How many Invoices were there in 2009 and 2011?
SELECT STRFTIME('%Y', InvoiceDate) InvoiceYear,
    COUNT(InvoiceId) TotalInvoices
FROM Invoice
WHERE InvoiceYear = '2009'
    OR InvoiceYear = '2011'
GROUP BY InvoiceYear