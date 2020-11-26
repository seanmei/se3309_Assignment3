 INSERT INTO fund_manager VALUES (
 654321,
 'Summers',
 '2020-2-1',
 1,
 'Western',
 'McD',
 12312,
 123123,
 'Goat',
 'low'
 
 );
INSERT INTO Analyst (Employee_ID, Employee_Name, Salary, Manager_Employee_ID) VALUES (
123457,
'Lebron James', 
36675,
654321
);

INSERT INTO Analyst (Employee_ID, Employee_Name, Salary, Manager_Employee_ID)
SELECT Employee_ID, Employee_Name, Salary, Employee_ID
FROM Fund_Manager 
WHERE salary=1; 

INSERT INTO Analyst VALUES (
123456,
'Sean Mei', 
'2020-01-31',
45353,
'Western',
'Google',
'Goat', 
'Tech',
'654321'
);

 