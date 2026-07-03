-- create swiggy db
create database swiggy_db;
use swiggy_db;

-- create table Swiggy_Orders
CREATE TABLE Swiggy_Orders (
    order_id      INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city          VARCHAR(30),
    restaurant    VARCHAR(50),
    item_ordered  VARCHAR(50),
    price         DECIMAL(8,2),
    delivery_status VARCHAR(20)
);

-- Insert Records
INSERT INTO Swiggy_Orders VALUES
(1, 'Rohan Mehta',  'Mumbai',    'Bikanervala',     'Chole Bhature',  180.00, 'Delivered'),
(2, 'Priya Nair',   'Bangalore', 'Truffles',        'Cheese Burger',  220.00, 'Delivered'),
(3, 'Aman Gupta',   'Delhi',     'Haldiram',        'Raj Kachori',    150.00, 'Cancelled'),
(4, 'Sneha Reddy',  'Hyderabad', 'Paradise Biryani', 'Chicken Biryani', 320.00, 'Delivered'),
(5, 'Karan Malhotra','Mumbai',   'Domino''s',       'Farmhouse Pizza', 399.00, 'Pending');

Select * from Swiggy_Orders;

-- create view
CREATE VIEW Delivered_Orders As
SELECT order_id, customer_name, city, restaurant, item_ordered, price
From Swiggy_Orders
Where Delivery_status= 'Delivered';

SELECT * From Delivered_Orders;

-- Create and Replace

CREATE OR REPLACE VIEW Delivered_Orders AS
SELECT order_id, customer_name, restaurant, item_ordered, price, delivery_status
from Swiggy_orders
Where Delivery_Status In ('Delivered', 'Pending');

Select * from Delivered_orders;

-- No Update View
CREATE VIEW City_Revenue as
SELECT city, sum(price) as total_revenue, count(*) AS total_orders
from Swiggy_Orders
group by city;

SELECT * from City_Revenue;

UPDATE City_Revenue set total_revenue = 5000 Where city= 'Mumbai';

Drop view City_Revenue;






