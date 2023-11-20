-- HomeDesigns Table
CREATE TABLE HomeDesigns ( DesignID INT PRIMARY KEY, TemplateName VARCHAR(100), Blueprint BLOB );
-- Customers Table
CREATE TABLE Customers ( CustomerID INT PRIMARY KEY, Name VARCHAR(100), Email VARCHAR(100), RegisteredOn DATE, IsActive BOOLEAN );
-- Orders Table
CREATE TABLE Orders ( OrderID INT PRIMARY KEY, CustomerID INT, DesignID INT, OrderDate DATE, Status VARCHAR(50), FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID), FOREIGN KEY (DesignID) REFERENCES HomeDesigns(DesignID) ); 
-- Materials Table
CREATE TABLE Materials ( MaterialID INT PRIMARY KEY, MaterialName VARCHAR(100), InStock BOOLEAN, UnitCost DECIMAL(10,2), StockLevel INT );
-- Suppliers Table
CREATE TABLE Suppliers ( SupplierID INT PRIMARY KEY, MaterialID INT, Location VARCHAR(255), ContactName VARCHAR(100), PhoneNumber VARCHAR(20), FOREIGN KEY (MaterialID) REFERENCES Materials(MaterialID) ); 