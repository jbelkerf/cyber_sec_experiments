#!/bin/bash
#[INFO] - the challenge will check that input is redirected from a specific file path : mrfxec
#[INFO] - the challenge will check that it is running in a specific current working directory : /tmp/yidzxb
#mkdir  -f /tmp/yidzxb
cd /tmp/yidzxb
touch mrfxec
/challenge/run < mrfxec
cd 
cd program_*