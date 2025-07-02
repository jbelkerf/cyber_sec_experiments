import subprocess
#[INFO] - the challenge will check that argv[NUM] holds value VALUE (listed to the right as NUM:VALUE) : 306:oxeglyyici
str= []
i = 1
while (i <= 306):
    str.append("d")
    i = i + 1
str.append("oxeglyyici")
str[0] = "/challenge/run"
#print(str)
subprocess.run(str)
