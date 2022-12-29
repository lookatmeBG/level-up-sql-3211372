-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

-- Report 2: Show the five books that have been
-- checked out the most.

SELECT
b.Published
, COUNT(DISTINCT(b.Title)) as BookCount
FROM Books b
GROUP BY b.Published
ORDER BY BookCount DESC;

SELECT
b.Title
, b.Barcode
, COUNT(l.BookID) as BookCount
FROM Loans l 
JOIN Books b on b.BookID = l.BookID
WHERE l.ReturnedDate IS NOT NULL
GROUP BY b.Title
ORDER BY BookCount DESC
LIMIT 5;
