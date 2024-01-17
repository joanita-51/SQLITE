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

-- SELECT BillingCountry, SUM(Total)
-- FROM invoices
-- GROUP BY BillingCountry
-- HAVING SUM(Total) > 100;

-- SELECT invoices.CustomerId,invoices.BillingAddress,invoices.InvoiceDate,customers.FirstName
-- FROM invoices
-- JOIN customers
--   ON invoices.CustomerId = customers.CustomerId;

-- CREATE TABLE PEOPLE (username TEXT NOT NULL PRIMARY KEY, 
-- password NOT NULL, email NOT NULL, PlaylistId INTEGER);

-- INSERT INTO PEOPLE (username, password, email, PlaylistId) 
-- VALUES ('Jane','janepassword','jane@gmail.com',2);

-- SELECT *
-- FROM playlists
-- INNER JOIN PEOPLE
--   ON playlists.PlaylistId = PEOPLE.PlaylistId;

-- SELECT *
-- FROM PEOPLE
-- LEFT JOIN playlists
--   ON PEOPLE.PlaylistId = playlists.PlaylistId;

-- SELECT *
-- FROM playlists
-- LEFT JOIN PEOPLE
--   ON playlists.PlaylistId = PEOPLE.PlaylistId;
-- SELECT *
-- FROM PEOPLE
-- CROSS JOIN playlists;

-- SELECT PlaylistId, Name
-- FROM playlists

-- UNION ALL

-- SELECT MediaTypeId, Name
-- FROM media_types


-- WITH previous_query AS (
--     SELECT BillingCountry, AVG(Total) AS AVG_Total 
--     FROM invoices
--     GROUP BY BillingCountry
-- )
-- SELECT * FROM previous_query

-- SELECT *
-- FROM playlists
-- UNION ALL
-- SELECT *
-- FROM media_types;

WITH previous_result AS (
    SELECT BillingCountry, AVG(Total) AS AVG_Total 
    FROM invoices
    GROUP BY BillingCountry
)
SELECT AVG_Total FROM previous_result;

