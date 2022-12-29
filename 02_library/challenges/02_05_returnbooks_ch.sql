-- Return three books to the library using
-- their bar codes.
-- Return date: July 5, 2022
-- Book 1: 6435968624
-- Book 2: 5677520613
-- Book 3: 8730298424


SELECT l.LoanID
FROM Loans l
JOIN Books b on b.BookID = l.BookID 
WHERE b.Barcode in (6435968624,5677520613,8730298424) AND l.ReturnedDate IS NULL;

UPDATE Loans set ReturnedDate = '2022-07-05' WHERE  LoanID in (1991,1992,1999);
--OR
UPDATE Loans set ReturnedDate = '2022-07-05' WHERE  LoanID in (
  SELECT l.LoanID
  FROM Loans l
  JOIN Books b on b.BookID = l.BookID 
  WHERE b.Barcode in (6435968624,5677520613,8730298424) AND l.ReturnedDate IS NULL
);