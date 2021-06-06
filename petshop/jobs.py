import atexit
from petshop.cliente.service import anonimizar_tempo

from apscheduler.schedulers.background import BackgroundScheduler
scheduler = BackgroundScheduler()


def anonimizar():
    from petshop import app
    t = 22
    #anonimizar_tempo(t)

def init_jobs():
    scheduler.add_job(func=anonimizar, trigger="interval", seconds=5)
    scheduler.start()
    atexit.register(lambda: scheduler.shutdown())