-- Create a list of books to feature in an exhibit.

-- Make a pick list of books published from 1890-1899 
-- which are not currently checked out.

SELECT
b.Title
, b.Author
, b.Published
, b.Barcode
FROM Books b 
WHERE b.Published BETWEEN 1890 and 1899
AND not exists ( SELECT 1 FROM Loans l where l.BookID = b.BookID AND l.ReturnedDate IS NULL )
ORDER BY b.Title;

-- OR

SELECT
b.Title
, b.Author
, b.Published
, b.Barcode
FROM Books b 
WHERE b.Published BETWEEN 1890 and 1899
AND b.BookID not in( SELECT l.BookID FROM Loans l where l.ReturnedDate IS NULL )
ORDER BY b.Title;  