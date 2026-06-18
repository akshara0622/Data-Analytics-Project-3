Data analystic Project 3


Queries
## Create and use a database

->CREATE DATABASE data_analytics2;
->USE data_analytics2;
## create table
->CREATE TABLE orders (
    OrderID VARCHAR(20),
    Date DATE,
    CustomerID VARCHAR(20),
    Product VARCHAR(100),
    Quantity INT,
    UnitPrice DECIMAL(10,2),
    ShippingAddress VARCHAR(255),
    PaymentMethod VARCHAR(50),
    OrderStatus VARCHAR(50),
    TrackingNumber VARCHAR(50),
    ItemsInCart INT,
    CouponCode VARCHAR(50),
    ReferralSource VARCHAR(50),
    TotalPrice DECIMAL(10,2)
);

## import the csv

->LOAD DATA LOCAL INFILE 'C:/Users/Puppala Akshara/Desktop/Dataset.csv'
INTO TABLE orders
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

## Check That the Data Imported

->SELECT * FROM orders;
->SELECT COUNT(*) FROM orders;

## Display Specific Columns

->SELECT OrderID, CustomerID, TotalPrice
FROM orders;

## Filter Records 

->SELECT *
FROM orders
WHERE TotalPrice > 1000;

## Sort the Data

->SELECT *
FROM orders
ORDER BY TotalPrice DESC;

## Group the Data

->SELECT PaymentMethod, COUNT(*) AS TotalOrders
FROM orders
GROUP BY PaymentMethod;

## Count All Orders

->SELECT COUNT(*) AS TotalOrders
FROM orders;

## Calculate Total Revenue

->SELECT SUM(TotalPrice) AS TotalRevenue
FROM orders;

## Calculate Average Order Value

->SELECT AVG(TotalPrice) AS AveragePrice
FROM orders;
