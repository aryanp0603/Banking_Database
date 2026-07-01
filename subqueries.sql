use bankingdb;
show tables;

select * from customers;
select * from transactions;

select c.customerId,c.Firstname as CustomersNames, c.Email, t.TransactionID, t.TransactionDate , t.amount as amount
from customers as c join transactions as t;

-- tasks

-- Task 1: Identify Transactions Above the Average Transaction Amount
select * 
from Transactions
Where Amount > (Select avg(amount) from Transactions);

Select * from Accounts;

-- Task 2: Identify Accounts with Above-Average Balance
Select AccountID, AccountType, Balance, CustomerID
From Accounts
Where Balance> (Select AVG(Balance) from Accounts)
order by Balance Desc;

-- Task 3: Identify Deposit Accounts Using a Multi-Row Subquery
Select AccountID, AccountType, Balance, CustomerID
From Accounts
where AccountID IN (Select AccountID
 from Transactions 
 Where TransactionType= "Deposit");
 
 -- Task 4: Identify the Account with the Highest Balance
Select AccountID, AccountType, Balance, CustomerID
From Accounts
where Balance = (Select MAX(Balance) From Accounts);






