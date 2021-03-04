-- /Provide a query that includes the purchased track name with each invoice line item.
SELECT InvoiceLineId,
    Track.Name
FROM InvoiceLine
    JOIN Track ON InvoiceLine.TrackId = Track.TrackId
GROUP BY InvoiceId