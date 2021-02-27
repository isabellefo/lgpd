from petshop.database import Base
from sqlalchemy import Column, Integer, String


class Unidade(Base):
    __tablename__ = "unidades"
    id = Column(Integer, primary_key=True, autoincrement=True)
    razao_social = Column(String)
    nome_fantasia = Column(String)
    cnpj = Column(String)
    endereco = Column(String)
    telefone = Column(String)
    celular = Column(String)
    email = Column(String)
