
from sys import exit

def toCSV(t, v):
    pos = []
    adding = False
    outFile = t + '.csv'

    for p, c in enumerate(v[1]):
        if c == ' ':
            curr = p
            adding = True
        if c == '-' and adding:
            pos.append(curr)
            adding = False


    pos = pos[::-1]
    with open(outFile, 'w') as f:
        for el in v[2:]:
            f.write(toCSVLine(el, pos))
            f.write('\n')
            #print(toCSVLine(el, pos))
    f.close()
    print("{} created successfully.".format(outFile))

def toCSVLine(el, pos):
    for p in pos:
        el = el[:p] + ',' + el[p:]
    temp = el.split(',')
    final = ""
    for e in temp:
        final += " ".join(e.split())
        final += ","
    return final

if __name__ == '__main__':
    with open('saledbdata.txt') as f:
        lines = f.readlines()

    adding = False
    tables = {}
    tables['customer'] = []
    tables['salesperson'] = []
    tables['product'] = []
    tables['sale'] = []
    tables['manufacturer'] = []

    for line in lines:
        line = line.rstrip()

        if 'CUSTOMER' == line:
            curr = 'customer'
            adding = False
        if 'SALESPERSON' == line:
            curr = 'salesperson'
            adding = False
        if 'PRODUCT' == line:
            curr = 'product'
            adding = False
        if 'SALE' == line:
            curr = 'sale'
            adding = False
        if 'MANUFACTURER' == line:
            curr = 'manufacturer'
            adding = False
        if adding and line:
            tables[curr].append(line)
        adding = True

    v = tables['customer']


    #SUPER JANKY
    toCSV('customer', v)

    for table, rows in tables.items():
        toCSV(table, rows)
