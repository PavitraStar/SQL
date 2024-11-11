create database Brands
create table Items_Product (Item_ID int, item_description varchar(100), vendor_nos int, vendor_name varchar(45), Bottle_size int, price DECIMAL(5, 2))
select * from Items_Product
insert into Items_Product values (1, 'Travis Hasse Apple Pie', 305, 'Mhw Ltd', 750, 9.77)
alter table Items_Product
add Bottle_price DECIMAL(5, 2)
delete from Items_Product where Bottle_size=null

alter table Items_Product
drop column bottle_price

insert into Items_Product values (1, 'Travis Hasse Apple Pie', 305, 'Mhw Ltd', 750, 9.77)
insert into Items_Product values (2, 'D aristi Xtabentun', 305, 'Anchor Distilling (Preiss Imports)', 750, 14.12)
insert into Items_Product values (3, 'Hiram Walker Peach Brandy', 305, 'Pernod Richard Usa/austin Nichols', 1000, 6.5)
insert into Items_Product values (4, 'Oak Cross Whisky', 305, 'Mhw Ltd', 750, 25.33)
insert into Items_Product values (5, 'Uv Red (cherry) Vodka', 305, 'Phillips Beverage Company', 200, 1.97)
insert into Items_Product values (6, 'Heaven Hill Old Style White Label', 305, 'Heaven Hill Distilleries Inc.', 750, 6.37)
insert into Items_Product values (7, 'Hyde Herbal Liqueur', 305, 'Fire Tail Brands Llc', 750, 5.06)
insert into Items_Product values (8, 'Dupont Calvados Fine Reserve', 305, 'Robert Kacher Selections', 750, 23.61)
use Brands
create database Products
use Products
create table Product_Table (Product_ID int, Country VARChAR(50), Products varchar (30), Units_Sold DECIMAL(10, 2), Manufacturing_Price int, Sale_Price int, Gross_sales int, Sales int, COGS int, Profit int, Dates date, Month_Number TINYINT, Month_Name varchar(15), Years SMALLINT)
select * from Product_Table
select * from Product_Table 
insert into Product_Table values (1, 'Canada', 'Carretera', 1618.5, 3, 20, 32370, 32370, 16185, 16185, '2014-01-01', 1, 'January', 2014)
insert into Product_Table values (2, 'Germany', 'Carretera', 1321, 3, 20, 26420, 26420, 13210, 13210, '2014-01-01', 1, 'January', 2014)
insert into Product_Table values (3, 'France', 'Carretera', 2178, 3, 15, 32670, 32670, 21780, 10890, '2014-06-01', 6, 'June', 2014)
insert into Product_Table values (4, 'Germany', 'Carretera', 888, 3, 15, 13320, 13320, 8880, 4440, '2014-06-01', 6, 'June', 2014)
insert into Product_Table values (5, 'Mexico', 'Carretera', 2470, 3, 15, 37050, 37050, 24700, 12350, '2014-06-01', 6, 'June', 2014)
insert into Product_Table values (6, 'Germany', 'Carretera', 1513, 3, 350, 529550, 529550, 393380, 136170, '2014-12-01',12, 'December', 2014)
insert into Product_Table values (7, 'Germany', 'Montana', 921, 5, 15, 13815, 13815, 9210, 4605, '2014-03-01', 3, 'March', 2014)
insert into Product_Table values (8, 'Canada', 'Montana', 2518, 5, 12, 30216, 30216, 7554, 22662, '2014-06-01', 6, 'June', 2014) 
delete Product_Table where Units_Sold = '1618.5' 
delete Product_Table where Units_Sold = '888' 
delete Product_Table where Units_Sold = '2470' 
use Brands 
select * from Items_Product
select Bottle_size from Items_Product
select item_description,price from Items_Product
select item_description,price from Items_Product where price>20
use Products
select * from Product_Table
select DISTINCT COuntry 
from Product_Table
SELECT country, COUNT(*) AS country_count
FROM Product_Table
GROUP BY country;
SELECT COUNT(DISTINCT country) AS country_count
FROM Product_Table
WHERE sale_price BETWEEN 10 AND 20;
SELECT 
    SUM(sale_price) AS total_sale_price,
    SUM(sale_price) AS gross_sales
FROM 
    Product_Table;

SELECT TOP 1
    YEAR(Dates) AS sales_year,
    SUM(sale_price) AS total_sales
FROM 
    Product_Table
GROUP BY 
    YEAR(Dates)
ORDER BY 
    total_sales DESC;
delete from Product_Table where Units_Sold = 1618.50

SELECT 
    product_id, 
    SUM(Sales) AS gross_sales
FROM 
    Product_Table
GROUP BY 
    product_id 
HAVING 
    SUM(Sales) = 37050.00;
	select * from Product_Table
	
	SELECT DISTINCT 
    country
FROM 
    Product_Table
WHERE 
    profit BETWEEN 4605 AND 22662;

	select PRODUCT_id from Product_Table where Gross_sales = 24700

	--select Product_ID,
	--sum(Gross_sales) as total_sales
	--from Product_Table
	--group by Product_ID
	--having SUM(Gross_sales) = 24700.00;
	
	SELECT 
    country,
    SUM(units_sold) AS total_units_sold
FROM 
    Product_Table
GROUP BY 
    country;

		select * from Product_Table
		select
country,
AVG(sales) as total_average_sales
from
Product_Table
group by
Country

SELECT 
    product_id,  
    dates
FROM 
    Product_Table
WHERE 
    YEAR(dates) = 2014

	select MAX(profit) as maximum_profit
from Product_Table
		select * from Product_Table
		
		SELECT *
FROM Product_Table
WHERE profit > (SELECT AVG(profit) FROM Product_Table);

select * from Items_Product
select item_description from Items_Product where Bottle_size = 750

select
 SUM(price) as total_bottle_price
 from Items_Product

 alter table Items_Product
 add constraint PK_item_ID primary key (item_id);

 select price from Items_Product where price = 5.06

 -------------select brand.Item_ID, item_description, vendor_nos, vendor_name, bottle_size, bottle_price
 from Brands
 left join product_id
 on Brands.item_id = Product_Table.Product_ID


SELECT Student.admission_no, Student.first_name, Student.last_name, Fee.course, Fee.amount_paid  
FROM Student  
LEFT OUTER JOIN Fee  
ON Student.admission_no = Fee.admission_no;


--RIGHT JOIN
SELECT Student.admission_no, Student.first_name, Student.last_name, Fee.course, Fee.amount_paid  
FROM Student  
RIGHT OUTER JOIN Fee  
ON Student.admission_no = Fee.admission_no;
-------------------------------------------------------------------------join to perform
use Brands
SELECT 
    Item_description,
    
    SUBSTRING(Item_description, 1, CHARINDEX(' ', Item_description) - 1) AS Item_desc1,
    
    SUBSTRING(Item_description, CHARINDEX(' ', Item_description) + 1, LEN(Item_description)) AS Item_desc2
FROM 
    Items_Product
WHERE
    CHARINDEX(' ', Item_description) > 0;
	
	select Top 3*
	from Items_Product
	order by price desc;
	use Products
	select * from Product_Table
	select gross_sales, profit, products from Product_Table

		select * from Items_Product
	select * from Product_Table
 select vendor_name, item_description
from Items_Product
where Bottle_size = 750
and bottle_Price < 10;

SELECT Product_Id, Country
FROM Product_Table
WHERE Profit >= 2 * COGS;

SELECT 
    item_description, 
    vendor_name
FROM 
    Items_Product
JOIN 
    (SELECT vendor_nos
     FROM Items_Product
     GROUP BY vendor_nos
     HAVING COUNT(vendor_nos) > 1) AS vendor_duplicates
	ON 
    vendor_nos = vendor_duplicates.vendor_nos;


	SELECT Country, Products, AVG(Manufacturing_Price) AS Average_Price
FROM Product_Table
GROUP BY Country, Products
HAVING AVG(Manufacturing_Price) > 3;
use Brands
select * from Items_Product

select item_description, price
from Items_Product
where vendor_name=(select vendor_name from Items_Product where Item_ID=1);

create procedure 
BottlesByPrice
@min_price decimal (10,2)
AS
BEGIN 
select * 
from Items_Product 
where price > @min_price;
end
exec BottlesByPrice @min_price = 10.00
use Products
select * from Product_Table
create procedure insertproductsale
    @Product_Id INT,
    @Sales DECIMAL(10, 2),
    @Dates DATE,
    @Units_Sold INT
	AS
BEGIN
        INSERT INTO Product_Table (Product_Id, Sales, Dates, Units_Sold)
    VALUES (@Product_Id, @Sales, @Dates, @Units_Sold);
     END;

	 EXEC InsertProductSale 
    @Product_Id = 1, 
    @Sales = 500.75, 
    @Dates = '2024-11-06', 
    @Units_Sold = 20;


	
	CREATE TRIGGER UpdateGrossSales
ON Product_Table
AFTER UPDATE
AS
BEGIN
       IF UPDATE(Units_Sold) OR UPDATE(Sale_Price)
    BEGIN
        UPDATE ps
        SET ps.Gross_Sales = ps.Units_Sold * ps.Sale_Price
        FROM Product_Table ps
        INNER JOIN inserted i ON ps.Product_ID = i.Product_ID;
    END
END;

select item_description from Items_Product
where lower(item_description) like '%whisky&'

use Products
select * from Product_Table
select country,Products,PROfit
from Product_Table
where Profit > (select AVG(Profit) from Product_Table)
use Brands
select * from Items_Product
select item_description +'-'+ vendor_name as combined_description
from Items_Product 

select
ROUND (price,1) as rounded_bottle_price
from Items_Product

use Products
select * from Product_Table


select product_id,dates
datediff (day, dates, getdate()) as days_since_sale
from Product_Table 
