import time
import atexit
from random import randint
import os
from petshop.cliente.service import print_date_time

from apscheduler.schedulers.background import BackgroundScheduler
scheduler = BackgroundScheduler()

def init_jobs():
    scheduler.add_job(func=print_date_time, trigger="interval", seconds=2)
    scheduler.start()
    atexit.register(lambda: scheduler.shutdown())