-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

select * from Customers where FirstName = 'Loretta' and LastName = 'Hundey' and Address = '6939 Elka Place';

INSERT INTO Orders ( CustomerID, OrderDate) VALUES (70, '2022-09-20 14:00:00');

SELECT * from Orders where OrderDate = '2022-09-20 14:00:00';

Select * from Dishes where Name in ('House Salad', 'Mini Cheeseburgers', 'Tropical Blue Smoothie');

INSERT INTO OrdersDishes ( OrderID, DishID ) VALUES
( 1001, (Select DishID from Dishes where Name = 'House Salad')),
( 1001, (Select DishID from Dishes where Name = 'Mini Cheeseburgers')),
( 1001, (Select DishID from Dishes where Name = 'Tropical Blue Smoothie'));

SELECT * FROM Dishes
join OrdersDishes on Dishes.DishID = OrdersDishes.DishID
WHERE OrdersDishes.OrderID = 1001;

SELECT
SUM( d.Price)
FROM OrdersDishes od 
Join Dishes d on d.DishID = od.DishID 
WHERE od.OrderID = 1001;