use bankingdb;

Select * from accounts;

select sum(Balance) as total_balance from accounts;

select avg(Balance) as Average_Balance from accounts;

select max(Balance) as highest_balance from accounts;

select min(Balance) as minimum_balance from accounts;

select count(AccountID) AS numbers_of_accounts from accounts;

select count(*) from accounts;

-- Group BY (Use HAVING CLAUSE with Group BY)
select accounttype, sum(balance) as total_balance
from accounts
group by accounttype
order by total_balance asc; 

select * from transactions;

SELECT TransactionType, SUM(Amount) as Total_amount
from transactions
group by TransactionType;

select accounttype, sum(balance) as total_balance
from accounts
group by accounttype
having SUM(Balance) > 25000;

SELECT TransactionType, SUM(Amount) as Withdrwal_sum
from transactions
WHERE TransactionType = "Withdrawal";

select accounttype, sum(balance) as total_balance
from accounts
group by accounttype
having accounttype IN ("Savings", "Current");

select * from accounts;




