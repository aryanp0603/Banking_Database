-- create database IPL
create database IPL;

-- use database
use IPL;

-- create table and records
CREATE TABLE IPL_Batting (
    match_no  INT,
    player    VARCHAR(50),
    team      VARCHAR(30),
    runs      INT
);

INSERT INTO IPL_Batting VALUES
(1, 'Rohit Sharma',  'Mumbai Indians',    45),
(2, 'Rohit Sharma',  'Mumbai Indians',    12),
(3, 'Rohit Sharma',  'Mumbai Indians',    78),
(1, 'Ishan Kishan',  'Mumbai Indians',    30),
(2, 'Ishan Kishan',  'Mumbai Indians',    55),
(3, 'Ishan Kishan',  'Mumbai Indians',    20),
(1, 'Virat Kohli',   'Royal Challengers', 62),
(2, 'Virat Kohli',   'Royal Challengers', 40),
(3, 'Virat Kohli',   'Royal Challengers', 101),
(1, 'Faf du Plessis','Royal Challengers', 25),
(2, 'Faf du Plessis','Royal Challengers', 33),
(3, 'Faf du Plessis','Royal Challengers', 18);


select * from IPL_Batting;

-- ROW NUMBER()
SELECT match_no,player, team, runs,
       ROW_NUMBER() OVER (ORDER BY runs DESC) AS row_num
FROM IPL_Batting;

-- Row Number() witj WHERE clause
SELECT match_no,player, team, runs,
       ROW_NUMBER() OVER (ORDER BY runs DESC) AS row_num
FROM IPL_Batting
WHERE match_no = 3;

-- Rank()
SELECT player, team, runs,
       RANK() OVER (PARTITION BY team ORDER BY runs DESC) AS team_rank
FROM IPL_Batting;

-- Dense_Rank()
SELECT player, team, runs,
       DENSE_RANK() OVER (PARTITION BY team ORDER BY runs DESC) AS team_dense_rank
FROM IPL_Batting;

-- sum() : Partition By
SELECT match_no, player, team, runs,
       SUM(runs) OVER (PARTITION BY team) AS team_total_runs
FROM IPL_Batting;

-- sum() : running sum
SELECT match_no, player, team, runs,
       SUM(runs) OVER (partition by team order by runs) AS team_total_runs
FROM IPL_Batting;

use bankingdb;
-- Tasks: 
-- task :1
Select
    LoanID,
    CustomerID, LoanAmount, 
    RANK() OVER(ORDER BY LoanAmount DESC) AS LoanRank
FROM Loans;

-- task : 2
Select
    LoanID,
    CustomerID, LoanAmount, 
    DENSE_RANK() OVER(ORDER BY LoanAmount DESC) AS LoanDenseRank
FROM Loans;

-- task :3
SELECT
    LoanID,
    CustomerID,
    LoanAmount,
    ROW_NUMBER() OVER(ORDER BY LoanAmount DESC) AS RowNumber
FROM Loans;

-- by using partition by
SELECT
    LoanID,
    CustomerID,
    LoanAmount,
    ROW_NUMBER() OVER(partition by CustomerID Order BY LoanAmount DESC) AS RowNumber
FROM Loans;

-- sum() over()
SELECT
    LoanID, CustomerID,LoanAmount,
    SUM(LoanAmount) OVER(ORDER BY LoanAmount DESC) AS RunningTotal
FROM Loans;

-- LAG ()
SELECT
    LoanID,
    CustomerID,
    LoanAmount,
    LAG(LoanAmount) OVER(ORDER BY LoanAmount DESC) AS PreviousLoanAmount
FROM Loans;

-- LEAD()
SELECT
    LoanID, CustomerID, LoanAmount,
    LEAD(LoanAmount) OVER(ORDER BY LoanAmount DESC) AS NextLoanAmount
FROM Loans;






