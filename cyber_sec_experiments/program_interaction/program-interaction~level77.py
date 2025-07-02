#[INFO] - the challenge will check that the environment is empty (except LC_CTYPE, which is impossible to get rid of in some cases)
#[INFO] - the challenge will check that argv[NUM] holds value VALUE (listed to the right as NUM:VALUE) : 333:nqhergldgq
import subprocess

str = []
i = 1
while (i <= 340):
    str.append("nqhergldgq")
    i+=1
str[0] = "env"
str[1] = "-i"
str[2] = "22=dnvedcjrnh"
str[3] = "/challenge/run"
subprocess.run(str)