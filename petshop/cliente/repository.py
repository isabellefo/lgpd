from petshop.cliente.Cliente import Cliente
from petshop.database import db_session
from typing import List

def save(cliente: Cliente) -> None:
    db_session.add(cliente)
    db_session.commit()

def find(id: int) -> Cliente:
    return Cliente.query.get(id)

def find_all():
    return Cliente.query.all()

def find_ativos() -> List[Cliente]:
    return Cliente.query.filter(Cliente.id_status != 3)