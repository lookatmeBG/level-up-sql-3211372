-- Prepare a report of the library patrons
-- who have checked out the fewest books.

SELECT
COUNT(l.BookID) as BookCount
, p.FirstName, p.Email
FROM Loans l 
JOIN Patrons p on p.PatronID = l.PatronID
GROUP BY l.PatronID
ORDER BY BookCount ASC;
