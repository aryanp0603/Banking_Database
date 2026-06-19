use dummy_db;
 show tables;
describe employees;

alter table employees modify column contact varchar(20);

Insert into employees(emp_id, first_name, last_name, age, salary, city, contact)
values(1, "Rakesh", "Yadav", 24, 25000, "Hydrabad", "7007152645");

select * from employees;

Insert into employees(emp_id, first_name, last_name, age, salary, city, contact)
values(2, "Rahul", "Patil", 24, 65000, "Pune", "9812564589"); 

SET SQL_SAFE_UPDATES = 0;   -- turn off safe mode

update employees 
set city = "Hyderabad"
where emp_id= 1; -- updating row

use bankingdb;

INSERT INTO Customers
(CustomerID, FirstName, LastName, Email, Phone, AccountCreationDate, DateOfBirth)
VALUES
(101, 'Rahul', 'Sharma', 'rahul@gmail.com', '9876543210', '2025-05-01', '2001-04-15'),
(102, 'Priya', 'Patil', 'priya@gmail.com', '9988776655', '2025-05-03', '2000-09-20');

Select * from customers; -- show all records in customer table

INSERT INTO Accounts
(AccountID, CustomerID, AccountType, Balance)
VALUES
(201, 101, 'Savings', 25000),
(202, 102, 'Current', 40000);

select * from Accounts; -- show all records in accounts table

update customers
set Phone= '9999999999'
where customerid= 101;

SELECT * FROM Customers
WHERE CustomerID = 101; -- show only selected/specific table

UPDATE Customers
SET Email = 'priya.patil@gmail.com'
WHERE CustomerID = 102;

SELECT * FROM Customers
WHERE CustomerID = 102;

show tables;

describe transactions;

insert into transactions(TransactionID, AccountID, TransactionDate, Amount, TransactionType)
VALUES(301, 201, '2025-05-24', 45000, "UPI"),
(302, 202, '2025-05-20', 60000, "Cheque Payment");

select * from transactions;

Delete from transactions
where transactionID= 302; -- delete transactions record

SELECT * FROM Transactions;

DELETE FROM Accounts
WHERE AccountID = 202; -- delete accounts record

SELECT * FROM Accounts;