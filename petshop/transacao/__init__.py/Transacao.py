import datetime

from petshop.database import Base
from sqlalchemy import Column, Date, ForeignKey, Integer, String


class Transacao(Base):
    __tablename__ = "transacoes"
    id = Column('id_transacao', Integer, primary_key=True, autoincrement=True)
    cliente_doc = Column('cpf', String(11),
                         ForeignKey("clientes.cpf"), nullable=False)
    data_transacao = Column(Date, default=datetime.datetime.utcnow)
    id_unidade = Column(Integer, nullable=False)
