from pwn import *

class CC:
    def __init__(self):
        self.lvl = ''
        self.action = ''
        self.category = []


p = process('/challenge/run')

levl = {}
cati = []

l = p.recvline_contains('Levels').decode()
print(l)
line_number = int(l.split()[0])
i = 0
while i < line_number:
    levl[p.recvline().decode().strip('\n')] = i
    i+=1
print(levl)
c = p.recvline_contains('Categories').decode()
cat_number = int(c.split()[0])
i = 0
while i < cat_number:
    cati.append(p.recvline().decode().strip('\n'))
    i+=1
print(cati)

def yes_or_no(s, o):
    print(s.category)
    print(o.category)
    print(s.action)
    if  "read" in s.action:
        if levl[s.lvl] > levl[o.lvl]:
            return b"no"
        print('1')
        for cat in o.category:
            if cat   not in s.category:
                return b"no"
        print('2')
        return b"yes"
    else:
        if levl[s.lvl] < levl[o.lvl]:
            return b"no"
        print('1')
        for cat in s.category:
            if cat not in o.category:
                return b"no"
        print('2')
        return b"yes"


i = 128
while i > 0:
    s = CC()
    o = CC()
    q = p.recvline_contains('Q', timeout=4).decode()
    print(q)
    s.lvl = q.split()[7]
    s.action = q.split('}')[1].split()[0]
    cat = q.split('categories')[1].split('}')[0] + "}"

    for c in cati:
        if c in cat:
            s.category.append(c)
    o.lvl = q.split('level')[2].split()[0]
    cat = q.split('categories')[2].strip('?')
    for c in cati:
        if c in cat:
            o.category.append(c)
    res = yes_or_no(s, o)
    print(res.decode())
    p.sendline(res)
    i -= 1

print(p.recvall().decode())
# except:
    # pass

