import sys
import subprocess
import requests
from datetime import datetime 
from sqlalchemy import Column, Integer, DateTime
from datetime import datetime
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm.session import Session

engine = create_engine('mysql://petmall_app:petmall_pass@localhost/petmall_logs',
                       convert_unicode=True)
Session = sessionmaker(autocommit=False,
                       autoflush=False,
                       bind=engine)
session = Session()
Base = declarative_base()

class ClienteAnonimizado(Base):
    __tablename__ = "clientes_anonimizados"
    id_cliente = Column(Integer, primary_key=True)
    data_anonimizacao = Column(DateTime, default=datetime.utcnow)

Base.metadata.create_all(bind=engine)

# TODO: criar funcao de restore  = run_file + reanonimize
# TODO: reanonimize chamar a rota
# TODO: rota para anonimizacao em massa
def run_file(file: str) -> str:
    with open(file, 'r') as query:
        process = subprocess.Popen(
        ["mysql", "-u", "petmall_app", "-ppetmall_pass", "petmall_db"], stdin=query, stdout=subprocess.PIPE)
        output, error = process.communicate()
        return output.decode()

def restore(file: str):
    run_file(file)
    date = file[:10]
    date = datetime.fromisoformat(date)
    anonimizados = session.query(ClienteAnonimizado) \
        .filter(ClienteAnonimizado.data_anonimizacao >= date) \
        .all()
    ids = [a.id_cliente for a in anonimizados]
    r = requests.put(
        "http://localhost:5000/cliente/dado-pessoal/anonimizar/massa",
        headers={"Content-Type": "application/json"},
        json={"ids": ids},
    )
    return "OK" if 201 == r.status_code else "ERROR " + r.json()["errors"]
    
def backup(file: str) -> str:
    with open(file, 'w') as backup:
        process = subprocess.Popen(
        ["mysqldump", "-u", "petmall_app", "-ppetmall_pass", "petmall_db", "--no-tablespaces"], stdin=subprocess.PIPE, stdout=backup)
        process.communicate()
        return ""

def get_backup_name():
    return str(datetime.now()).split()[0] + ".sql"

def main(args):
    cmd = args[0]
    if cmd == "restore":
        print(restore(args[1]))
    elif cmd == "backup":
        backup_name = get_backup_name()
        backup(backup_name)

if __name__  == "__main__":
    main(sys.argv[1:])