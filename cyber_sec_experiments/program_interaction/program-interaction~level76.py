#[INFO] - the challenge will check that the environment is empty (except LC_CTYPE, which is impossible to get rid of in some cases)
#[INFO] - the challenge will check that env[KEY] holds value VALUE (listed to the right as KEY:VALUE) : 231:pqoiuqzdkp
import subprocess

subprocess.run(["env", "-i", "231=pqoiuqzdkp", "/challenge/run"])