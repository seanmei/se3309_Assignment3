import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="root",
  database = "sys"
)

def retreive_securities(path):
    stocks = open(path)
    Lines = stocks.readlines()
    stocks_string = []
    for line in Lines:
        if len(line) > 1:
            line = line.strip("\n")
            stocks_string.append((line).split(","))
    return(stocks_string)

stocks = retreive_securities("data_generation/gen_stocks.txt")
bonds = retreive_securities("data_generation/gen_bonds.txt")
investors = retreive_securities("data_generation/other_data/investor_d.txt")
accounts = retreive_securities("data_generation/other_data/account_d.txt")

managers = retreive_securities("data_generation/other_data/manager.txt")
analysts = retreive_securities("data_generation/other_data/analyst.txt")

investments = retreive_securities("data_generation/gen_investment.txt")

stock_ownership = retreive_securities("data_generation/gen_stock_ownership.txt")
bond_ownership = retreive_securities("data_generation/gen_bonds_ownership.txt")

stock_coverage = retreive_securities("data_generation/gen_stock_coverage.txt")
bond_coverage = retreive_securities("data_generation/gen_bonds_coverage.txt")

mycursor = mydb.cursor()

def insert(data, table_name):
    for sample in data:
        sample = [f"'{string}'" for string in sample]
        sample_string = ','.join(sample)
        statement = f"INSERT INTO {table_name} VALUES ({sample_string})"
        mycursor.execute(statement)
    

insert(stocks, "Stocks")
insert(bonds, "Bonds")
insert(investors, "Investor")
insert(accounts, "accounts")
insert(managers, "Fund_Manager")
insert(analysts, "Analyst")
insert(investments, "Investments")

insert(stock_ownership, "Owned_Stocks")
insert(bond_ownership, "Owned_Bonds")

insert(stock_coverage, "Stocks_Coverage")
insert(bond_coverage, "Bonds_Coverage")


mydb.commit()
mydb.close()

