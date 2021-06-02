from petshop import cliente
from petshop.logs.log_database import Base
from sqlalchemy import Column, Integer, DateTime
from datetime import datetime

class ClienteAnonimizado(Base):
    __tablename__ = "clientes_anonimizados"
    id_cliente = Column(Integer, primary_key=True)
    data_anonimizacao = Column(DateTime, default=datetime.utcnow)

    def __init__(self, cliente):
        self.id_cliente = cliente.id_cliente
    