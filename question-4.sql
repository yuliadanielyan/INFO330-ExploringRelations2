-- Which sales agent made the most in sales in 2010?

SELECT e.FirstName || ' ' || e.LastName AS sales_agent_name, SUM(ii.UnitPrice * ii.Quantity) AS sales FROM customers c
 JOIN invoices i ON c.CustomerId = i.CustomerId
 JOIN invoice_items ii ON i.InvoiceId = ii.InvoiceId
 JOIN employees e ON c.SupportRepId = e.EmployeeId WHERE i.InvoiceDate LIKE '2010-%'
GROUP BY e.EmployeeId ORDER BY sales DESC LIMIT 1;
