-- Show the sales agent's full name and invoices associated with each sales agent.

SELECT e.FirstName || ' ' || e.LastName AS sales_agent_name, i.InvoiceId FROM employees e
JOIN customers c ON e.EmployeeId = c.SupportRepId JOIN invoices i ON c.CustomerId = i.CustomerId
ORDER BY sales_agent_name;
