-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

SELECT 
c.FirstName
, c.LastName
, r.Date
, r.PartySize 
FROM Reservations r 
join Customers c on c.CustomerID = r.CustomerID
where 
c.LastName LIKE 'St%'
and r.PartySize = 4
ORDER BY r.Date DESC;