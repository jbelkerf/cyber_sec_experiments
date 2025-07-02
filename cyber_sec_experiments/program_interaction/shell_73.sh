#!/bin/bash -e
#[INFO] - the challenge will check that it is running in a specific current working directory : /tmp/jwlfyg
#[INFO] - the challenge will check to make sure that the parent's parent CWD to be different than the challenge's CWD
#mkdir /tmp/jwlfyg
env --chdir=/tmp/jwlfyg /challenge/run
#cd ~/program_*