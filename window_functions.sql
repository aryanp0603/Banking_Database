use bankingdb;
show tables;
describe loans;

INSERT INTO Loans
(LoanID, LoanAmount, InterestRate, StartDate, EndDate, CustomerID)
VALUES
(301, 500000, 8.50, '2025-01-15', '2030-01-15', 101),
(302, 300000, 9.25, '2025-02-10', '2028-02-10', 102),
(303, 750000, 8.75, '2025-03-20', '2032-03-20', 103),
(304, 250000, 10.00, '2025-04-05', '2029-04-05', 104),
(305, 1000000, 7.95, '2025-05-12', '2035-05-12', 105);

Select * from loans;

-- Task: Rank() on LoanAmount
SELECT LoanID, CustomerID, LoanAmount, 
Rank() Over (Order by LoanAmount Desc) As LoanRank
from Loans;

-- Task: Dense_Rank() on LoanAmount
SELECT LoanID, CustomerID, LoanAmount, 
dense_rank() Over (Order by LoanAmount Desc) As DenseRank
from Loans;

-- Task: Row_Number() over customerID by using partition
SELECT LoanID, CustomerID, LoanAmount, 
row_number() Over (
partition by CustomerID
Order by LoanAmount Desc) As Row_Numbers
from Loans;

-- Task: Sum()
SELECT LoanID, CustomerID, LoanAmount, 
SUM(LoanAmount) 
Over(order by LoanAmount Desc) as RunningTotal
From Loans;

-- Task: Lag()
SELECT LoanID, CustomerID, LoanAmount, 
LAG(LoanAmount) 
Over(order by LoanAmount Desc) as PreviousLoanAmount
From Loans;

-- Task: Lead()
SELECT LoanID, CustomerID, LoanAmount, 
LEAD(loanAmount) 
Over(order by LoanAmount Desc) as NextLoanAmount
From Loans;











