--Create the database 
CREATE DATABASE ProductCatalogDB;
 
--Use the ProductCatalogDB Database
USE ProductCatalogDB;

--Create the table named Product in the ProductCatalogDB
Create Table Product(
ProductId INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
ProductName VARCHAR(500) NOT NULL,
Category VARCHAR(100) NOT NULL,
Price DECIMAL(10,2) Check(Price>=0)
);

--Adding one more column named as description
ALTER table Product 
ADD Description VARCHAR(500);

--Add 10 records in the above Product table
INSERT INTO Product (ProductName, Category, Price, Description)
VALUES 
('Multivitamin Tablets', 'Health', 1200.00, 'Daily essential vitamins'),
('Whey Protein', 'Health', 3500.00, 'Protein supplement'),
('Yoga Mat', 'Fitness', 800.00, 'Non-slip mat'),
('Treadmill', 'Fitness', 25000.00, 'Motorized treadmill for home use'),
('LED TV 55 inch', 'Electronics', 45000.00, 'Smart LED TV'),
('Smartphone X', 'Electronics', 30000.00, 'Latest model smartphone'),
('Office Chair', 'Furniture', 7000.00, 'Ergonomic chair with support'),
('Laptop Stand', 'Furniture', 1200.00, 'Adjustable stand'),
('Air Purifier', 'Home Appliances', 15000.00, 'HEPA filter purifier'),
('Electric Kettle', 'Home Appliances', 1800.00, '1.5L fast boil kettle');

--Query to list all the product belonging to the Health category
Select * from Product Where Category='Health';

--Query to get the total price of all products
Select Sum(Price) as TotalPrice from Product;

--Query to display product in descending order of price
Select * from Product Order by Price DESC;

--Query to display category wise product count having price greater than  10000
Select Category,COUNT(*) AS ProductCount
FROM Product 
WHERE Price>10000
GROUP BY Category;






