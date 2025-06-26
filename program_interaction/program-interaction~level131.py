import subprocess
import time


pout = open("ss", 'a')


p1 = subprocess.Popen(["/challenge/run"],stdin=subprocess.PIPE , stderr=pout)

try:
    for _ in range(100):
        time.sleep(0.1)

        with  open("ss", 'r') as sin:
            lines = sin.readlines()
        
        if not lines:
            print("mkynsh lines", lines)
            continue

        print("line lakher", lines[-1])

        line = lines[-1].strip()
        
        if ':' not in line:
            print("mkynsh :")
            continue

        try:
            result = line.split(':')[1]
            print(eval(result))
            exp = str(eval(result))
            p1.stdin.write(exp.encode() + '\n'.encode())
            p1.stdin.flush()
        except Exception as e:
            print("tfrg3t", e)
            continue

    p1.stdin.close()
    p1.wait()
except Exception as d:
    print("hmm", d)