from petshop.database import Base
from sqlalchemy import Boolean, Column, Date, Integer, String


class Cliente(Base):
    __tablename__ = "clientes"

    documento = Column('cpf', String, primary_key=True)
    nome = Column(String)
    identidade = Column('rg', String)
    sexo = Column(Boolean)
    telefone = Column(String)
    celular = Column(String)
    endereco = Column(String)
    data_nascimento = Column(Date)
    renda = Column(Integer)
    nome_mae = Column(String)
    nome_pai = Column(String)
