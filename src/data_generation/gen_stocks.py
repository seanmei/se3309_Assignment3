import csv
import string
import random

seen = set()

def ticker_gen(size=6, chars=string.ascii_uppercase):
    generated = ''.join(random.choice(chars) for _ in range(size))
    while generated in seen:
        generated = ''.join(random.choice(chars) for _ in range(size))
    seen.add(generated)
    return generated

possible_name = ["Capital", "Limited", "Partners", "Incorporated", "Corporation", "Group", "Cooperative", "and Company"]

def name_gen(size=5, chars=string.ascii_uppercase+string.ascii_lowercase):
    generated = ''.join(random.choice(chars) for _ in range(size)) + " " + random.choice(possible_name)
    while generated in seen:
        generated = ''.join(random.choice(chars) for _ in range(size)) + " " + random.choice(possible_name)
    seen.add(generated)
    return generated

def price_gen():
    return random.randint(0,10000)

def profit_gen():
    return random.randint(0,100)

possible_rating = ["BUY", "HOLD", "OUTPERFORM", "OVERWEIGHT", "SELL"]

def rating_gen():
    return random.choice(possible_rating)

csv.register_dialect('', delimiter='\t', quoting=csv.QUOTE_NONE, lineterminator='\n')
open('data_generation/gen_investments.txt', 'w').close()

with open('data_generation/gen_investments.txt', 'a') as csvfile:
    list = []
    totList = []
    for i in range(3000):
        list = [ticker_gen(), profit_gen(), name_gen(), price_gen(), rating_gen()]
        totList.append(list)
    writer = csv.writer(csvfile)
    writer.writerows(totList)

