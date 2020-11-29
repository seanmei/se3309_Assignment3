SELECT Investor_ID, COUNT(Account_ID > 5) AS Number_of_Acccounts 
FROM Accounts
GROUP BY Investor_ID;

SELECT ivr.*, acc.Account_ID, acc.Account_Name, i.Fund_ID, m.Employee_ID, m.Employee_Name
FROM Investor ivr
LEFT JOIN Accounts acc ON ivr.Investor_ID = acc.Investor_ID
LEFT JOIN Investments i ON acc.Account_ID = i.Account_ID
LEFT JOIN Fund_Manager m ON i.Fund_ID = m.Fund_ID;

SELECT a.Employee_ID, a.Employee_Name,
	(SELECT COUNT(bonds_coverage.Ticker_Symbol) as Bonds_Count
	FROM Bonds_Coverage
    WHERE bonds_coverage.Employee_ID = a.Employee_ID) as Bonds_Count,
    (SELECT COUNT(stocks_coverage.Ticker_Symbol) as Stocks_Count
    From Stocks_Coverage
    WHERE stocks_coverage.Employee_ID = a.Employee_ID) as Stocks_Count
FROM Analyst a
GROUP BY Employee_ID;


(SELECT University, Employee_ID, Employee_Name, Salary
FROM Fund_Manager
WHERE Salary > 150000)
UNION
(SELECT University, Employee_ID, Employee_Name, Salary
FROM Analyst
WHERE Salary = 3000);


SELECT *
FROM bonds_coverage c
WHERE EXISTS(SELECT *
			FROM bonds b
            WHERE b.Ticker_Symbol = c.Ticker_Symbol AND (b.Credit_Rating = 'AAA' OR b.Credit_Rating = 'AA'));
            


SELECT a.Employee_ID, a.Employee_Name, a.Manager_Employee_ID, m.Employee_Name
FROM Analyst a, Fund_Manager m
WHERE a.Manager_Employee_ID = m.Employee_ID;
