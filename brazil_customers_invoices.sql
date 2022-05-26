SELECT FirstName || ' ' || LastName as Fullname,
BillingCountry,
InvoiceId,
InvoiceDate
FROM Customer 
JOIN Invoice on Invoice.CustomerId = Customer.CustomerId
WHERE BillingCountry = 'Brazil';
