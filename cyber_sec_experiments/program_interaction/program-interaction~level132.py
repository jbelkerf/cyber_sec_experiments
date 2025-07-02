#!/bin/python3
import subprocess
import ast
import time
import sys


dic = {
    "SIGHUP": 1,
    "SIGINT": 2,
    "SIGQUIT": 3,
    "SIGILL": 4,
    "SIGTRAP": 5,
    "SIGABRT": 6,
    "SIGBUS": 7,
    "SIGFPE": 8,
    "SIGKILL": 9,
    "SIGUSR1": 10,
    "SIGSEGV": 11,
    "SIGUSR2": 12,
    "SIGPIPE": 13,
    "SIGALRM": 14,
    "SIGTERM": 15,
    "SIGSTKFLT": 16,
    "SIGCHLD": 17,
    "SIGCONT": 18,
    "SIGSTOP": 19,
    "SIGTSTP": 20,
    "SIGTTIN": 21,
    "SIGTTOU": 22,
    "SIGURG": 23,
    "SIGXCPU": 24,
    "SIGXFSZ": 25,
    "SIGVTALRM": 26,
    "SIGPROF": 27,
    "SIGWINCH": 28,
    "SIGIO": 29,
    "SIGPWR": 30,
    "SIGSYS": 31,
    "SIGRTMIN": 34,
    "SIGRTMIN+1": 35,
    "SIGRTMIN+2": 36,
    "SIGRTMIN+3": 37,
    "SIGRTMIN+4": 38,
    "SIGRTMIN+5": 39,
    "SIGRTMIN+6": 40,
    "SIGRTMIN+7": 41,
    "SIGRTMIN+8": 42,
    "SIGRTMIN+9": 43,
    "SIGRTMIN+10": 44,
    "SIGRTMIN+11": 45,
    "SIGRTMIN+12": 46,
    "SIGRTMIN+13": 47,
    "SIGRTMIN+14": 48,
    "SIGRTMIN+15": 49,
    "SIGRTMAX-14": 50,
    "SIGRTMAX-13": 51,
    "SIGRTMAX-12": 52,
    "SIGRTMAX-11": 53,
    "SIGRTMAX-10": 54,
    "SIGRTMAX-9": 55,
    "SIGRTMAX-8": 56,
    "SIGRTMAX-7": 57,
    "SIGRTMAX-6": 58,
    "SIGRTMAX-5": 59,
    "SIGRTMAX-4": 60,
    "SIGRTMAX-3": 61,
    "SIGRTMAX-2": 62,
    "SIGRTMAX-1": 63,
    "SIGRTMAX": 64
}
f = open("ss", 'w')
p1 = subprocess.Popen(["/challenge/run"], stderr=f)
time.sleep(3)
print("heeere")


print("Enter input, then press Ctrl+D (or Ctrl+Z on Windows) to finish:")
data1 = ast.literal_eval(str(input()))
print("Received:")
#print(data)
print("Enter input, then press Ctrl+D (or Ctrl+Z on Windows) to finish:")
data2 = ast.literal_eval(str(input()))
print("Received:")
#print(data)
lst = data1 + data2
pid = int(input("inter pid"))

for item in lst:
    time.sleep(0.1)
    subprocess.run(["/bin/kill", f"-{dic[item]}", f"{pid}"])
p1.wait()
