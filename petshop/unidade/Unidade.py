from petshop.database import Base
from sqlalchemy import Column, Integer, String


class Unidade(Base):
    __tablename__ = "unidades"
    id_unidade = Column(Integer, primary_key=True, autoincrement=True)
    razao_social = Column(String(100))
    nome_fantasia = Column(String(100))
    cnpj = Column(String(20))
    telefone = Column(String(20))
    celular = Column(String(20))
    email = Column(String(100))
    bairro = Column(String(30))
    rua = Column(String(30))
    numero = Column(String(10))
    estado = Column(String(2))
    cep = Column('CEP', String(20))
    cidade = Column(String(20))
