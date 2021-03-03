from petshop.database import Base
from sqlalchemy import Column, Integer, String


class Unidade(Base):
    __tablename__ = "unidades"
    id = Column(Integer, primary_key=True, autoincrement=True)
    razao_social = Column(String(100))
    nome_fantasia = Column(String(100))
    cnpj = Column(String(14))
    endereco = Column(String(500))
    telefone = Column(String(10))
    celular = Column(String(11))
    email = Column(String(100))
