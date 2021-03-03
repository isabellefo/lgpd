from sqlalchemy import Column, Integer, String, Date, Boolean, Numeric
from petshop.database import Base


class Cliente(Base):
    __tablename__ = "clientes"

    def __init__(self):
        pass

    documento = Column('cpf', String(11), primary_key=True)
    nome = Column(String(100))
    identidade = Column('rg', String(9))
    sexo = Column(Boolean)
    telefone = Column(String(10))
    celular = Column(String(11))
    endereco = Column(String(500))
    data_nascimento = Column(Date)
    renda = Column(Numeric(6, 2))
    nome_mae = Column(String(100))
    nome_pai = Column(String(100))

    def __repr__(self):
        return f"{self.documento} {self.nome} {self.data_nascimento}"

    def to_dict(self):
        info = {}
        info["documento"] = self.documento
        info["nome"] = self.nome
        info["identidade"] = self.identidade
        info["sexo"] = self.sexo
        info["telefone"] = self.telefone
        info["celular"] = self.celular
        info["endereco"] = self.endereco
        info["data_nascimento"] = self.data_nascimento
        info["renda"] = float(self.renda)
        info["nome_mae"] = self.nome_mae
        info["nome_pai"] = self.nome_pai
        return info
