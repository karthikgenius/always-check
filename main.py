# Import all required modules
import os
import sys
import time

print("Getting container info...")
time.sleep(15)

os.system("whoami")
os.system("pwd")
print("Current python version: " + sys.version)
sys.exit()