
-- INNER JOIN: Orders with Customers
SELECT o.InvoiceId, c.FirstName, c.Country, o.Total
FROM orders o
INNER JOIN customers c ON o.CustomerId = c.CustomerId;

-- LEFT JOIN: Customers without Orders
SELECT c.CustomerId, c.FirstName
FROM customers c
LEFT JOIN orders o ON c.CustomerId = o.CustomerId
WHERE o.InvoiceId IS NULL;

-- Revenue per Product
SELECT p.Name, SUM(p.UnitPrice) AS Revenue
FROM products p
GROUP BY p.Name;

-- Category-wise Revenue
SELECT cat.CategoryName, SUM(p.UnitPrice) AS Revenue
FROM products p
JOIN categories cat ON p.CategoryId = cat.CategoryId
GROUP BY cat.CategoryName;
