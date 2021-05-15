import atexit
from petshop.cliente.service import anonimizar_tempo

from apscheduler.schedulers.background import BackgroundScheduler
scheduler = BackgroundScheduler()


def anonimizar():
    from petshop import app
    t = 22
    print("anonimizando clientes por tempo inativo por %i meses" % t)
    anonimizar_tempo(t)

def init_jobs():
    scheduler.add_job(func=anonimizar, trigger="interval", seconds=10)
    scheduler.start()
    atexit.register(lambda: scheduler.shutdown())