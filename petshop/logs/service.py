from sqlalchemy.sql.expression import select
from petshop.logs.ClienteAnonimizado import ClienteAnonimizado
from petshop.logs.log_database import session
from petshop.logs.ClienteAnonimizado import ClienteAnonimizado
from petshop.cliente.Cliente import Cliente

def anonimizacao(cliente: Cliente):
    log_cliente = ClienteAnonimizado(cliente)
    session.add(log_cliente)
    session.commit()
