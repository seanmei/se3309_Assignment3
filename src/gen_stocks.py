import csv
import string
import random


def ticker_gen(size=6, chars=string.ascii_uppercase):
    return ''.join(random.choice(chars) for _ in range(size))

def name_gen(size=10, chars=string.ascii_uppercase+string.ascii_lowercase):
    return ''.join(random.choice(chars) for _ in range(size))

def price_gen():
    return random.randint(0,10000)

def profit_gen():
    return round(random.uniform(0,8.00),2)

def rating_gen():
    if random.randint(0,1) == 0:
        return "BUY"
    else:
        return "HOLD"

csv.register_dialect('', delimiter='\t', quoting=csv.QUOTE_NONE, lineterminator='\n')
with open('gen_stocks.txt', 'a') as csvfile:
    list = []
    totList = []
    for i in range(3000):
        list = [ticker_gen(), name_gen(), price_gen(), profit_gen(), rating_gen()]
        totList.append(list)
    writer = csv.writer(csvfile)
    writer.writerows(totList)

