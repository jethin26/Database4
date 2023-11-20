-- Insert Statement (Customers)
INSERT INTO Customers (CustomerID, Name, Email, RegisteredOn, IsActive) VALUES (211, 'Jane Doe', 'jane.doe@example.com', '2023-06-01', 1);
 
-- Insert Statement (Orders)
INSERT INTO Orders (OrderID, CustomerID, DesignID, OrderDate, Status) VALUES (1005, 211, 1, '2023-06-05', 'Completed'); 
 
-- Update Statement (Customers)
UPDATE Customers SET Email = 'jane.updated@example.com' WHERE CustomerID = 211; 
 
-- Update Statement (Orders)
UPDATE Orders SET Status = 'Completed' WHERE OrderID = 1001;
 
-- Delete Statement (Customers)
DELETE FROM Customers WHERE CustomerID = 210;
 
-- Simple Select Statement (Materials)
SELECT MaterialName, InStock FROM Materials WHERE InStock = TRUE;
 
-- Select with Join (Orders and Customers)
SELECT Orders.OrderID, Customers.Name, Orders.OrderDate FROM `Orders` JOIN Customers ON Orders.CustomerID = Customers.CustomerID WHERE Orders.Status = 'Completed';
 
-- Select with Join (Orders and HomeDesigns)
SELECT Orders.OrderID, HomeDesigns.TemplateName FROM Orders JOIN HomeDesigns ON Orders.DesignID = HomeDesigns.DesignID WHERE Orders.Status = 'Cancelled';
 
-- Summary Function (Count of Orders)
SELECT COUNT(*) AS TotalOrders FROM Orders;
 
-- Summary Function (Average Cost of Materials)
SELECT AVG(UnitCost) AS AverageMaterialCost FROM Materials;
 
-- Summary Function (Total Stock Level of Materials)
SELECT SUM(StockLevel) AS TotalStock FROM Materials;
 
-- Multi-Table Query (Orders, Customers, HomeDesigns)
SELECT Customers.Name, HomeDesigns.TemplateName, Orders.OrderDate, Orders.Status FROM Orders JOIN Customers ON Orders.CustomerID = Customers.CustomerID JOIN HomeDesigns ON Orders.DesignID = HomeDesigns.DesignID WHERE Orders.Status IN ('Shipped', 'Completed');
