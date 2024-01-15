-- -- SQLite
-- CREATE TABLE USERS (username TEXT NOT NULL PRIMARY KEY, 
-- password NOT NULL, email NOT NULL);

-- INSERT INTO USERS (username, password, email) 
-- VALUES ('Joe','joespassword','joe@gmail.com');

-- SELECT username FROM USERS;

-- SELECT DISTINCT Country
-- FROM customers;

-- SELECT BillingCountry, Total
-- FROM invoices
-- ORDER BY Total ASC;

-- SELECT BillingCountry, Total
-- FROM invoices
-- ORDER BY Total DESC
-- LIMIT 3;

-- SELECT * FROM invoices LIMIT 3;
-- SELECT
--   FirstName,
--   LastName,
--   CASE
--     WHEN ReportsTo = 1 THEN 'Manager'
--     WHEN ReportsTo = 2 THEN 'Sales Support Agent'
--     WHEN ReportsTo = 6 THEN 'IT Staff'
--     ELSE 'General Manager'
--   END AS EmployeeRanks
-- FROM employees;

-- SELECT COUNT(*)
-- FROM albums;

-- SELECT SUM(Total)
-- FROM invoices;

-- SELECT MAX(Total)
-- FROM invoices;

-- SELECT MIN(Total)
-- FROM invoices;


-- SELECT * FROM invoices WHERE Total = 25.86;


-- SELECT AVG(Total)
-- FROM invoices;

-- SELECT ROUND(Total, 1)
-- FROM invoices;

SELECT BillingCountry, SUM(Total)
FROM invoices
GROUP BY BillingCountry
HAVING SUM(Total) > 100;