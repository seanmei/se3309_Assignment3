import random
import csv

def retreive_securities(path):
    stocks = open(path)
    Lines = stocks.readlines()
    stocks_string = []
    for line in Lines:
        if len(line) > 1:
            line = line.strip("\n")
            stocks_string.append((line).split(","))
    return(stocks_string)

funds = retreive_securities("data_generation/other_data/manager.txt")
investors = retreive_securities("data_generation/other_data/investor_d.txt")
accounts = retreive_securities("data_generation/other_data/account_d.txt")


seen = set()

def gen_investment():
    account = random.choice(accounts)
    fund = random.choice(funds)
    while str(account[0]) + " " + str(fund[6]) in seen:
        account = random.choice(accounts)
        fund = random.choice(funds)
    seen.add(str(account[0]) + " " + str(fund[6]))
    return(account[0], fund[6], random.randint(2000,5000))

csv.register_dialect('', delimiter='\t', quoting=csv.QUOTE_NONE, lineterminator='\n')
open('data_generation/gen_investment.txt', 'w').close()

with open('data_generation/gen_investment.txt', 'a') as csvfile:
    list = []
    totList = []
    for i in range(20):
        list = gen_investment()
        totList.append(list)
    writer = csv.writer(csvfile)
    writer.writerows(totList)
