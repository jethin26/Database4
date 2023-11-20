-- Populating HomeDesigns Table
LOAD DATA LOCAL INFILE 'D:\\DB\\HomeDesigns.csv' INTO TABLE Eco_Homes.HomeDesigns FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"' LINES TERMINATED BY '\n' IGNORE 1 ROWS (DesignID, TemplateName, Blueprint);
 
-- Populating Customers Table
LOAD DATA LOCAL INFILE 'D:\\DB\\Customers.csv' INTO TABLE Eco_Homes.Customers FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"' LINES TERMINATED BY '\n' IGNORE 1 ROWS (CustomerID, Name, Email, RegisteredOn, IsActive); 
 
-- Populating Orders Table
LOAD DATA LOCAL INFILE 'D:\\DB\\Orders.csv' INTO TABLE Eco_Homes.Orders FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"' LINES TERMINATED BY '\n' IGNORE 1 ROWS (OrderID, CustomerID, DesignID, OrderDate, Status);
 
-- Populating Materials Table
LOAD DATA LOCAL INFILE 'D:\\DB\\Materials.csv' INTO TABLE Eco_Homes.Materials FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"' LINES TERMINATED BY '\n' IGNORE 1 ROWS (MaterialID, MaterialName, InStock, UnitCost, StockLevel);

-- Populating Suppliers Table
LOAD DATA LOCAL INFILE 'D:\\DB\\Suppliers.csv' INTO TABLE Eco_Homes.Suppliers FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"' LINES TERMINATED BY '\n' IGNORE 1 ROWS (SupplierID, MaterialID, Location, ContactName, PhoneNumber); 
