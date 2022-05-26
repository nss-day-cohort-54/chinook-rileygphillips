SELECT Invoice.InvoiceId, COUNT(InvoiceLine.InvoiceLineId)
From Invoice
JOIN InvoiceLine ON Invoice.InvoiceId = InvoiceLine.InvoiceId
GROUP BY InvoiceLine.InvoiceId