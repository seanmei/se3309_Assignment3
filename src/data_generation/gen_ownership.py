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
stocks = retreive_securities("data_generation/gen_stocks.txt")
bonds = retreive_securities("data_generation/gen_bonds.txt")

seen = set()

def gen_sec(security):
    fund = random.choice(funds)
    sec = random.choice(security)
    unique_id = f"{fund[6]} {sec[0]}"
    while unique_id in seen:
        fund = random.choice(funds)
        sec = random.choice(security)
        unique_id = f"{fund[6]} {sec[0]}"
    seen.add(unique_id)
    return (fund[6], sec[0], random.randint(5000,20000))

csv.register_dialect('', delimiter='\t', quoting=csv.QUOTE_NONE, lineterminator='\n')
open('data_generation/gen_stock_ownership.txt', 'w').close()

with open('data_generation/gen_stock_ownership.txt', 'a') as csvfile:
    list = []
    totList = []
    for i in range(300):
        list = gen_sec(stocks)
        totList.append(list)
    writer = csv.writer(csvfile)
    writer.writerows(totList)

csv.register_dialect('', delimiter='\t', quoting=csv.QUOTE_NONE, lineterminator='\n')
open('data_generation/gen_bonds_ownership.txt', 'w').close()

with open('data_generation/gen_bonds_ownership.txt', 'a') as csvfile:
    list = []
    totList = []
    for i in range(300):
        list = gen_sec(bonds)
        totList.append(list)
    writer = csv.writer(csvfile)
    writer.writerows(totList)