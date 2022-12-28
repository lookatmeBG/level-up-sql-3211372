-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

SELECT
c.FirstName
, c.LastName
, c.Email
, COUNT(*) as OrderCount
FROM
Customers c 
join Orders o on o.CustomerID = c.CustomerID
Group by o.CustomerID
Having COUNT(*) > 14
Order by COUNT(*) DESC;