from petshop.database import *
from sqlalchemy import Column, Enum, Integer, String, Numeric

class ProdutosUnidades(Base):
    __tablename__ = "produtos_unidades"

    id_produto = Column(Integer, primary_key=True)
    id_unidade = Column(Integer, primary_key=True)
    quantidade = Column(Integer)

    def __init__(self, id_produto, id_unidade, quantidade):
        self.id_produto = id_produto
        self.id_unidade = id_unidade
        self.quantidade = quantidade