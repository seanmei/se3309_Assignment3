CREATE VIEW Analyst_Specialty  
AS SELECT *
FROM Analyst
WHERE Manager_Employee_ID=28;
 

CREATE VIEW Fund_Coverage
AS SELECT a.Employee_Name, COUNT(*) AS count
FROM Fund_Manager F, Analyst a
WHERE a.Fund_of_Employment = F.Fund_Name
GROUP BY a.Employee_Name; 


CREATE VIEW Investeor_Accounts 
AS SELECT I.Investor_Name, COUNT(*) AS Accounts
FROM Investor I, Accounts a
WHERE a.Investor_ID = I.Investor_ID
GROUP BY I.Investor_Name; 



