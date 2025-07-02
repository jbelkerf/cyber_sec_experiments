#[INFO] - the challenge will check that it is running in a specific current working directory : /tmp/rfdtev
#[INFO] - the challenge will check to make sure that the parent's parent CWD to be different than the challenge's CWD

import subprocess

p1 = subprocess.Popen(["env", "--chdir=/tmp/rfdtev", "/challenge/run"])
p1.wait()