CREATE TABLE Investor (
    Investor_ID INT NOT NULL,
    Account_Name VARCHAR(50),
    Account_ID INT NOT NULL,
    PRIMARY KEY (Investor_ID),
    UNIQUE KEY (Account_ID)
);

CREATE TABLE Account (
    Account_ID INT NOT NULL,
    Account_Name VARCHAR(50),
    Total_Cash INT,
    PRIMARY KEY (Account_ID),
    FOREIGN KEY (Account_ID)
        REFERENCES Investor(Account_ID)
);
    
CREATE TABLE Analyst (
    Employee_ID INT NOT NULL,
    Employee_Name VARCHAR(50),
    Start_Date DATE,
    Salary INT,
    University VARCHAR(50),
    Previous_Employer VARCHAR(50),
    Fund_of_Employment VARCHAR(50),
    Area_of_Expetise VARCHAR(50),
    Manager_Emplopyee_ID INT NOT NULL,
    PRIMARY KEY (Employee_ID),
    FOREIGN KEY (Manager_Emplopyee_ID)
        REFERENCES Fund_Manager (Employee_ID)
);
    
CREATE TABLE Fund_Manager (
    Employee_ID INT NOT NULL,
    Employee_Name VARCHAR(50),
    Start_Date DATE,
    Salary INT,
    University VARCHAR(50),
    Previous_Employer VARCHAR(50),
    Fund_ID INT,
    Total_Cash INT,
    Manager_Name VARCHAR(50),
    Fund_Name VARCHAR(50),
    Risk_Tolerance VARCHAR(50),
    PRIMARY KEY (Employee_ID),
    UNIQUE KEY (FUND_ID),
    UNIQUE KEY (Fund_Name)
);

CREATE TABLE Stocks (
    Ticker_Symbol VARCHAR(10) NOT NULL,
    Price INT NOT NULL,
    Stock_Name VARCHAR(50) NOT NULL,
    Previous_Year_Profit INT,
    Analyst_Rating INT,
    PRIMARY KEY (Ticker_Symbol)
);

CREATE TABLE Bonds (
    Ticker_Symbol INT NOT NULL,
    Price INT NOT NULL,
    Stock_Name VARCHAR(50) NOT NULL,
    Interest_Rate INT NOT NULL,
    Credit_Rating INT,
    PRIMARY KEY (Ticker_Symbol)
);

CREATE TABLE Investments (
    Account_ID INT NOT NULL,
    Fund_ID INT NOT NULL,
    Total_Investment INT,
    PRIMARY KEY (Account_ID , FUND_ID),
    FOREIGN KEY (Account_ID)
        REFERENCES Accounts (Account_ID),
    FOREIGN KEY (Fund_ID)
        REFERENCES Fund_Manager (Fund_ID)
);

CREATE TABLE Owned_Stocks (
    Fund_ID INT NOT NULL,
    Ticker_Symbol VARCHAR(10) NOT NULL,
    Shares INT NOT NULL,
    PRIMARY KEY (Fund_ID , Ticker_Symbol),
    FOREIGN KEY (Fund_ID)
        REFERENCES Fund_Manager (Fund_ID),
    FOREIGN KEY (Ticker_Symbol)
        REFERENCES Stocks (Ticker_Symbol)
);

CREATE TABLE Owned_Bonds (
    Fund_ID INT NOT NULL,
    Ticker_Symbol VARCHAR(10) NOT NULL,
    Shares INT NOT NULL,
    PRIMARY KEY (Fund_ID , Ticker_Symbol),
    FOREIGN KEY (Fund_ID)
        REFERENCES Fund_Manager (Fund_ID),
    FOREIGN KEY (Ticker_Symbol)
        REFERENCES Bonds (Ticker_Symbol)
);

CREATE TABLE Stocks_Coverage (
    Emplooyee_ID INT NOT NULL,
    Ticker_Symbol VARCHAR(10) NOT NULL,
    PRIMARY KEY (Employee_ID , Tciker_Symbol),
    FOREIGN KEY (Employee_ID)
        REFERENCES Analyst (Empoyee_ID),
    FOREIGN KEY (Ticker_Symbol)
        REFERENCES Stocks (Ticker_Symbol)
);

CREATE TABLE Bonds_Coverage (
    Emplooyee_ID INT NOT NULL,
    Ticker_Symbol VARCHAR(10) NOT NULL,
    PRIMARY KEY (Employee_ID , Tciker_Symbol),
    FOREIGN KEY (Employee_ID)
        REFERENCES Analyst (Empoyee_ID),
    FOREIGN KEY (Ticker_Symbol)
        REFERENCES Bonds (Ticker_Symbol)
);


