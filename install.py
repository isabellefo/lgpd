import os
from sys import platform

try:
    if platform == "linux":
        os.system("source ./env/Scrips/activate")
    elif "win" in platform:]
        os.system("./env/Scrips/activate.bat")
except:
    os.system("pip install virtualenv")
    os.system("virtualenv env")


os.system("pip insall -e .")
os.system("pip install -r requirements.txt")
