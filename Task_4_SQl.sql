USE ecommerce_db;

-- Count total users
SELECT COUNT(*) AS TotalUsers FROM Users;

-- Count total products available
SELECT COUNT(*) AS TotalProducts FROM Products;

-- Calculate average product price
SELECT AVG(Price) AS AveragePrice FROM Products;

-- Calculate total stock of all products
SELECT SUM(Stock) AS TotalStock FROM Products;

-- Count total orders placed
SELECT COUNT(OrderID) AS TotalOrders FROM Orders;


-- Total quantity of products sold (grouped by product)
SELECT ProductID, SUM(Quantity) AS TotalSold
FROM OrderItems
GROUP BY ProductID;

-- Total number of orders placed by each user
SELECT UserID, COUNT(OrderID) AS OrdersCount
FROM Orders
GROUP BY UserID;

-- Average quantity of items per order
SELECT OrderID, AVG(Quantity) AS AvgQuantity
FROM OrderItems
GROUP BY OrderID;


-- Show products sold more than 5 times
SELECT ProductID, SUM(Quantity) AS TotalSold
FROM OrderItems
GROUP BY ProductID
HAVING SUM(Quantity) > 5;

-- Show users who placed more than 2 orders
SELECT UserID, COUNT(OrderID) AS OrdersCount
FROM Orders
GROUP BY UserID
HAVING COUNT(OrderID) > 2;

-- Show orders where average quantity per product is more than 3
SELECT OrderID, AVG(Quantity) AS AvgQty
FROM OrderItems
GROUP BY OrderID
HAVING AVG(Quantity) > 3;
