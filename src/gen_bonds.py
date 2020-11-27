import csv
import string
import random


def ticker_gen(size=6, chars=string.ascii_uppercase):
    return ''.join(random.choice(chars) for _ in range(size))

def yr_gen(size=10, chars=string.ascii_uppercase+string.ascii_lowercase):
    return random.randint(0,20)

def price_gen():
    return round(random.uniform(0,0.1),5)

def interest_gen():
    return round(random.uniform(0,0.05),3)

# Needs modifications for possible outputs
def credit_gen():
    temp = random.randint(0,5)
    if temp == 0:
        return "AAA"
    elif temp == 1:
        return "AA"
    elif temp == 2:
        return "A"
    elif temp == "3":
        return "B"
    else:
        return "C"


csv.register_dialect('', delimiter='\t', quoting=csv.QUOTE_NONE, lineterminator='\n')
with open('gen_bonds.txt', 'a') as csvfile:
    list = []
    totList = []
    for i in range(3000):
        list = [ticker_gen(), yr_gen(), price_gen(), interest_gen(), credit_gen()]
        totList.append(list)
    writer = csv.writer(csvfile)
    writer.writerows(totList)

