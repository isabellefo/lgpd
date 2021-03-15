from petshop.database import *
from sqlalchemy import Column, Enum, Integer, String, Numeric

from .TipoProduto import TipoProduto

class Produto(Base):
    __tablename__ = "produtos"

    id = Column('id_produto', Integer, primary_key=True, autoincrement=True)
    nome = Column(String(100))
    tipo = Column(Enum(TipoProduto))
    valor = Column(Numeric(6, 2))
