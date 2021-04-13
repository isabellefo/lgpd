from sqlalchemy import Column, Integer, String, Date, Boolean, Numeric, DATE, ForeignKey, ForeignKeyConstraint
from sqlalchemy.orm import relationship, backref
from petshop.database import Base

from petshop.cliente.Cliente import Cliente

class DadoPessoal(Base):
    __tablename__ = "dados_pessoais"

    id_dado_pessoal = Column(Integer, primary_key=True, autoincrement=True)
    id_cliente = Column(Integer, ForeignKey(Cliente.id_cliente),  autoincrement=True)
    cpf = Column(String(11))
    nome = Column(String(100))
    rg = Column(String(9))
    sexo = Column(Boolean)
    telefone = Column(String(10))
    celular = Column(String(11))
    data_nascimento = Column(DATE)
    renda = Column(Numeric(6, 2))

    def __repr__(self):
        return f"{self.id_cliente} {self.nome}"
    
    def anonimizar(self) -> None:
        self.cpf = "00000000000"
        self.nome = None
        self.rg = None
        self.sexo = None
        self.telefone = None
        self.celular = None
        self.data_nascimento = None
        self.renda = None


    def to_dict(self, completo=True):
        return {
            "nome": self.nome,
            "cpf": self.cpf,
            "telefone": self.telefone,
        }
