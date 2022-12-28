-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.

SELECT * FROM Reservations r 
join Customers c on c.CustomerID = r.CustomerID
WHERE c.FirstName = 'Norby' and r.Date > '2022-07-24';


DELETE FROM Reservations WHERE ReservationID = 2000;