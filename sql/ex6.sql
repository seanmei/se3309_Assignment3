SET SQL_SAFE_UPDATES = 0;

UPDATE Analyst
SET Salary = 100000,
	Fund_of_Employment = "All Weather"
WHERE Employee_ID = 130;

ALTER TABLE Accounts
ADD Num_Accounts INT UNSIGNED;

DELETE FROM Investments
WHERE Total_Investment < 3000;