#!/bin/python3
#[INFO] - the challenge will check that input is redirected from a specific file path : gvhrgy
#[INFO] - the challenge will check that it is running in a specific current working directory : /tmp/tmpodf
import subprocess

with open("/tmp/tmpodf/gvhrgy", 'r') as f:

    p1 = subprocess.Popen(["env", "--chdir=/tmp/tmpodf", "/challenge/run"], stdin=f)
    #f.close()
    #p1.stdin.close()
    p1.wait()