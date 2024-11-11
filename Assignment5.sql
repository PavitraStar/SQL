create database Customers_Orders_Products
CREATE TABLE Customers (
CustomerID INT PRIMARY KEY,
Name VARCHAR(50),
Email VARCHAR(100)
);
INSERT INTO Customers (CustomerID, Name, Email)
VALUES
(1, 'John Doe', 'johndoe@example.com'),
(2, 'Jane Smith', 'janesmith@example.com'),
(3, 'Robert Johnson', 'robertjohnson@example.com'),
(4, 'Emily Brown', 'emilybrown@example.com'),
(5, 'Michael Davis', 'michaeldavis@example.com'),
(6, 'Sarah Wilson', 'sarahwilson@example.com'),
(7, 'David Thompson', 'davidthompson@example.com'),
(8, 'Jessica Lee', 'jessicalee@example.com'),
(9, 'William Turner', 'williamturner@example.com'),
(10, 'Olivia Martinez', 'oliviamartinez@example.com');
select * from Customers

CREATE TABLE Orders (
OrderID INT PRIMARY KEY,
CustomerID INT,
ProductName VARCHAR(50),
OrderDate DATE,
Quantity INT
);
INSERT INTO Orders (OrderID, CustomerID, ProductName, OrderDate, Quantity)
VALUES
(1, 1, 'Product A', '2023-07-01', 5),
(2, 2, 'Product B', '2023-07-02', 3),
(3, 3, 'Product C', '2023-07-03', 2),
(4, 4, 'Product A', '2023-07-04', 1),
(5, 5, 'Product B', '2023-07-05', 4),
(6, 6, 'Product C', '2023-07-06', 2),
(7, 7, 'Product A', '2023-07-07', 3),
(8, 8, 'Product B', '2023-07-08', 2),
(9, 9, 'Product C', '2023-07-09', 5),
(10, 10, 'Product A', '2023-07-10', 1);
select * from Orders

CREATE TABLE Products (
ProductID INT PRIMARY KEY,
ProductName VARCHAR(50),
Price DECIMAL(10, 2)
);
INSERT INTO Products (ProductID, ProductName, Price)
VALUES
(1, 'Product A', 10.99),
(2, 'Product B', 8.99),
(3, 'Product C', 5.99),
(4, 'Product D', 12.99),
(5, 'Product E', 7.99),
(6, 'Product F', 6.99),
(7, 'Product G', 9.99),
(8, 'Product H', 11.99),
(9, 'Product I', 14.99),
(10, 'Product J', 4.99);
select * from Products


select * from Customers

select name, email
from Customers
where name like 'j%'

select * from Orders

select sum(quantity) as productwise_quantity
from orders

select * from customers

select a.name, a.customerid
from Customers a
join Orders b
on a.CustomerID=b.CustomerID

select * from Products
select productname, Price
from Products
where Price>10

select a.customerid, a.name, b.orderdate
from customers a
join Orders b
on a.customerid=b.customerid
where orderdate > '2023-07-05'

select * from Products
select avg(price) as avegate_price
from Products

select * from Orders
select * from Customers
select a.name, sum(b.quantity) as Total_quantity
from customers a
join Orders b
on a.CustomerID=b.CustomerID
group by a.name

select *
from Orders
where orderdate is null

select Top 5 a.name, sum(b.quantity) as total_quantity
from Customers a
join Orders b
on a.CustomerID=b.CustomerID
group by a.Name
order by total_quantity desc

select productname, avg(Price) as averageprice
from Products
group by productname

  
  select * from Orders
  select a.customerid, a.name, b.orderdate
  from customers a
  join Orders b
  on a.CustomerID=b.CustomerID
  where OrderDate is null

  select a.customerid, a.name, b.orderid, b.productname, b.quantity
  from Customers a
   join Orders b
  on a.CustomerID=b.CustomerID
  where name like ('m%')

  select*from Products
  select * from Orders
  select sum(a.quantity * b.price) as Revenue
  from Orders a
  join Products c
  on a.orderid=b.productid
  -----------------------query sesstion

  select a.name, sum(b.quantity * c.price) as Revenue
  from Customers a
  join Orders b
  on a.CustomerID=b.CustomerID
  on b.customerid=c.productid


SELECT SUM(od.quantity * p.price) AS total_revenue
FROM customers c
JOIN orders o ON c.customerid = o.customerid
JOIN Orders od ON o.orderid = od.orderid
JOIN products p ON p.productid = p.productid



select * from Products
SELECT c.name, SUM(od.quantity * p.price) AS total_revenue
FROM customers c
JOIN orders o ON c.customerid = o.customerid
JOIN Orders od ON o.orderid = od.orderid
JOIN products p ON p.productid = c.CustomerID
GROUP BY c.name
ORDER BY total_revenue DESC;


select * from Orders
select TOP 3 c.productname, AVG(b.quantity) as average_quantity
from Orders b
join Products c
on b.OrderID=c.ProductID
group by c.Productname	
order by average_quantity desc



