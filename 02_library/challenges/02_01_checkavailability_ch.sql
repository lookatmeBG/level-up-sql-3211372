-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

SELECT
COUNT(*)
FROM Books
where Title = 'Dracula';

SELECT
COUNT(b.Title)
FROM Loans l 
join Books b on b.BookID = l.BookID
WHERE b.Title = 'Dracula'
and l.ReturnedDate IS NULL;

SELECT
(SELECT
COUNT(*)
FROM Books
where Title = 'Dracula') -
(SELECT
COUNT(b.Title)
FROM Loans l 
join Books b on b.BookID = l.BookID
WHERE b.Title = 'Dracula'
and l.ReturnedDate IS NULL) as AvailableCopies;