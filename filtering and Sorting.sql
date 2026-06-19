use bankingdb;

show tables;

select * from accounts
where accounttype IN ("savings", "current"); 

select * from accounts
order by balance desc
limit 5;

select * from accounts
where accounttype= "Savings"
order by balance desc
limit 3;

select * 
from customers
where firstname like "A%";

select * 
from customers
where Email like "%gmail%";

select * 
from customers
where lastname like "%kar";

-- string function
-- 1. concatination
 select firstname, lastname, concat(firstname, " ", lastname) as fullname
 from customers;
 
 -- 2. Upper & Lower
 select upper(firstname) as firstname from customers;
 select lower(lastname) as lastname from customers;
 
 -- 3. Substring
  select Firstname, substring(Firstname, 1, 3) as Name_substr from customers;
  
  -- 4. Replace
  select replace("Hello World", "World", "SQL") as Replaced_String;










