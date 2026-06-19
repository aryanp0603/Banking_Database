use bankingdb;

show tables;

SELECT * from customers;
select * from transactions;


alter table transactions add column CustomerID int;

-- customers == Transactions 
alter table transactions
ADD foreign key (CustomerID) References customers(CustomerID); 

-- adding records to the transactions table in customer id column
update transactions set CustomerID= 108
Where transactionID In (308);

select * from transactions;

-- customer :- id, first name, transaction id, type, amount 
-- Inner join
SELECT c.CustomerID, c.FirstName, t.TransactionID, t.TransactionType, t.Amount
from customers as c inner join transactions as t
on c.CustomerID= t.CustomerID;

-- Inner join using condition
SELECT c.CustomerID, c.FirstName, t.TransactionID, t.TransactionType, t.Amount
from customers as c inner join transactions as t
on c.CustomerID= t.CustomerID
WHERE TransactionType In ("Withdrawal", "Deposit");

select c.CustomerID, Concat(c.FirstName, " ", c.LastName) AS CustomerName,t.TransactionID,t.TransactionType,t.Amount
From Customers as c
left join transactions as t
on c.CustomerID= t.CustomerID;

update transactions set CustomerID= Null 
Where TransactionID= 310;

select c.CustomerID, Concat(c.FirstName, " ", c.LastName) AS CustomerName,t.TransactionID,t.TransactionType,t.Amount
From Customers as c
right join transactions as t
on c.CustomerID= t.CustomerID;

select c.CustomerID, Concat(c.FirstName, " ", c.LastName) AS CustomerName,t.TransactionID,t.TransactionType,t.Amount
From Customers as c
inner join transactions as t
on c.CustomerID= t.CustomerID
Where t.transactiontype= "Deposit"
and t.amount > 5000;











 