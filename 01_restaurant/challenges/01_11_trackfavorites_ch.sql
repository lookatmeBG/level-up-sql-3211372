-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

SELECT * FROM Customers where FirstName = 'Cleo' and LastName = 'Goldwater';
SELECT * FROM Dishes where Name = 'Quinoa Salmon Salad';

UPDATE Customers set FavoriteDish = 9 where CustomerID = 42;

SELECT c.FirstName, c.LastName, c.FavoriteDish, d.Name
FROM Customers c 
join Dishes d on c.FavoriteDish = d.DishID;