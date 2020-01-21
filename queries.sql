== all columns and all rows from the customers table
SELECT *
FROM customers

-- we can pick the columns we want to see
SELECT CustomerId, CustomerName, Country, City
FROM customers

-- we can narrow it down from country
SELECT CustomerID, CustomerName, Country, City 
FROM [Customers]
WHERE country = 'Germany'


-- we can narrow it down from city
SELECT CustomerID, CustomerName, Country, City 
FROM [Customers]
WHERE city = 'Paris'

-- sorting or organizing by column alphabetically
SELECT CustomerID, CustomerName, Country, City 
FROM [Customers]
order by country, city

SELECT CustomerID, CustomerName, Country, City 
FROM [Customers]
order by country desc, city 

-- controlling how many records to return
SELECT * from products
order by price desc
limit 5
offset 10  -- ignores the first ten

SELECT * from products
order by productid
limit 5
offset 10  -- ignore the first ten

-- pagination with order by, limit and offset
SELECT * 
from products
order by price desc
limit 5
offset 10  -- ignore the first ten

-- adding records
insert into products (productName, supplierId, categoryId, unit, price)
values('cake', 7, 1, 'one', 20.99)

insert into products (productName, supplierId, categoryId, unit, price)
values('carrot cake', 7, 1, 'one', 20.99)

insert into products (productName, supplierId, categoryId, unit, price)
values('cake candles', 7, 1, 'one', 20.99)

-- partial lookup
SELECT * FROM [Products]
where productName like '%cake%'

SELECT * FROM [Products]
where productName like '%cake'

SELECT * FROM [Products]
where productName like 'cake%'

-- updating records
update products
set price = 24.99
where productId = 79
-- to search for update through first column which can be 1 or name of column
SELECT *
FROM [Products]
order by 1 desc

-- updating multipe columns
update products
set price = 24.99, unit = 'whole cake'
where productId = 79

-- removing records
delete 
FROM [Products]
where productId = 79