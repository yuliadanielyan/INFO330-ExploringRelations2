-- What was the most purchased track of 2013?

SELECT t.Name AS track_name, COUNT(*) AS purchased_tracks FROM tracks t
JOIN invoice_items ii ON t.TrackId = ii.TrackId
JOIN invoices i ON ii.InvoiceId = i.InvoiceId WHERE i.InvoiceDate LIKE '2013-%'
GROUP BY t.TrackId ORDER BY purchased_tracks DESC LIMIT 1;
