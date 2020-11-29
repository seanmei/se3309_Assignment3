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

possible_name = ["Treasury Bonds", "Municipal Bonds", "Savings Bonds", "High-Yield Bonds", "Coporate Bonds"]

def name_gen(size=5, chars=string.ascii_uppercase+string.ascii_lowercase):
    generated = ''.join(random.choice(chars) for _ in range(size)) + " " + random.choice(possible_name)
    while generated in seen:
        generated = ''.join(random.choice(chars) for _ in range(size)) + " " + random.choice(possible_name)
    seen.add(generated)
    return generated

def price_gen():
    return random.randint(0,100)

def interest_gen():
    return random.randint(0,10)

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
open('gen_bonds.txt', 'w').close()
with open('gen_bonds.txt', 'a') as csvfile:
    list = []
    totList = []
    for i in range(3000):
        list = [ticker_gen(), price_gen(), name_gen() , interest_gen(), credit_gen()]
        totList.append(list)
    writer = csv.writer(csvfile)
    writer.writerows(totList)

