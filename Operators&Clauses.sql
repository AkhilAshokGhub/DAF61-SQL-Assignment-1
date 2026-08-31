use myfsql;

-- Operators and Clauses

CREATE TABLE product_sales (
    sale_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    product_name VARCHAR(50),
    category VARCHAR(30),
    quantity INT,
    price DECIMAL(10,2),
    discount INT,
    city VARCHAR(30),
    payment_method VARCHAR(20),
    email VARCHAR(100)
);

INSERT INTO product_sales
(sale_id, customer_name, product_name, category, quantity, price, discount, city, payment_method, email)
VALUES
(1, 'Anu', 'Laptop', 'Electronics', 2, 55000, 10, 'Kochi', 'UPI', 'anu@gmail.com'),
(2, 'Rahul', 'Mouse', 'Electronics', 3, 800, 5, 'Kozhikode', 'Cash', 'rahul@gmail.com'),
(3, 'Meera', 'Chair', 'Furniture', 1, 4500, 15, 'Kochi', 'Card', 'meera@gmail.com'),
(4, 'Arun', 'Table', 'Furniture', 2, 7000, 10, 'Kannur', 'UPI', NULL),
(5, 'Sneha', 'Keyboard', 'Electronics', 2, 1500, 5, 'Kochi', 'Card', 'sneha@gmail.com'),
(6, 'Vishnu', 'Notebook', 'Stationery', 10, 100, 0, 'Malappuram', 'Cash', NULL),
(7, 'Ammu', 'Pen', 'Stationery', 20, 50, 2, 'Kozhikode', 'UPI', 'ammu@gmail.com'),
(8, 'Nikhil', 'Monitor', 'Electronics', 1, 12000, 10, 'Kannur', 'Card', 'nikhil@gmail.com'),
(9, 'Diya', 'Desk', 'Furniture', 1, 9000, 20, 'Kochi', 'UPI', 'diya@gmail.com'),
(10, 'Fahad', 'Bag', 'Accessories', 2, 2500, 5, 'Malappuram', 'Cash', NULL);

Drop Table product_sales;

-- Distinct      to get Unique values
select distinct product_name from product_sales;
select distinct city from product_sales;
select distinct category from product_sales;

-- As   used to give temporary name / alias
select product_name as Product,category,customer_name as Customer from product_sales; 

select product_name, quantity * price as Total_sale from product_sales;

-- Where    is used to fliter records based on a condition
select * from product_sales where city = "Kochi";
select * from product_sales where price >= 10000;
select * from product_sales where category = "Furniture";

-- Operators --

-- Arithmetic Operators--> find the price after discount ( price - (price * discount / 100))
select product_name,customer_name,price - (price * discount / 100) as Final_price from product_sales;

-- Comparison Operator -->  =,>,<,>=,<=,<>     "<>" this meant not equal to 
select * from product_sales where quantity = 10;
select * from product_sales where category <> "Electronics";

-- Logical Operator
-- AND, OR, NOT

select * from product_sales where city = "kochi" and category = "Electronics";
select * from product_sales where city = "kochi" or category = "Electronics";
select * from product_sales where  not category = "Electronics";

-- is null --> Used to find the missing values
-- is not null --> Used to find the values is not missing 
select * from product_sales where email is null;
select * from product_sales where email is not null;

set sql_safe_updates = 0;

-- to update the values in the table
update product_sales set email = "anu@gmail.com" where customer_name = "Arun" and email is null;
update product_sales set email = "Unknow" where email is null;

-- IN / NOT IN  used to check  mutiple possible values

select * from product_sales where city in ("Kochi","kannur","Kozhikode");
select * from product_sales where city not in ("Kochi","kannur","Kozhikode");

-- Between / Not Between --> To find values within a range 

select * from product_sales where price between 1000 and 10000;
select * from product_sales where price not between 1000 and 10000;

-- Like and  Not Like   it is used for pattern matching
select * from product_sales where customer_name like "A%"; -- % Name start with A
select * from product_sales where customer_name like "%A"; -- % Name End with A
select * from product_sales where customer_name like "%An%"; -- % Any name  have  an in it
select * from product_sales where customer_name like "_n%"; -- You only know the second letter from the name 
select * from product_sales where customer_name like "__e%"; -- You only know the third letter from the name 

select * from product_sales where customer_name not like "A%"; -- % Name start with 
select * from product_sales where customer_name not like "%A"; -- % Name End with A



