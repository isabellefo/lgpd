import os
from sys import platform

os.system("virtualenv env")

if platform == "linux":
    os.system("python3 -m pip install -r requirements.txt")
elif "win" in platform:
    os.system("python3 -m pip install -r requirements.txt")
