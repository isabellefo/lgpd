from sqlalchemy import Column, Integer, String, ForeignKey
from sqlalchemy.orm import relationship, backref
from petshop.database import Base

from petshop.cliente.Cliente import Cliente

from typing import Dict

class Endereco(Base):
    __tablename__ = "enderecos"

    id_cliente = Column(Integer, ForeignKey(Cliente.id_cliente),primary_key=True, autoincrement=True)
    rua = Column(String(100))
    numero = Column(String(20))
    estado = Column(String(30))
    cep = Column('CEP', String(20))
    cidade = Column(String(100))

    def __repr__(self):
        return f"<{self.id_cliente} {self.cidade}>"
    
    def anonimizar(self) -> None:
        self.rua = 'testeeee'
        self.numero = None
        self.cep = None

    def to_dict(self, completo=True)-> Dict[str, str]:
        return {
            "cidade": self.cidade,
            "rua":self.rua, 
            "numero":self.numero,
            "cep":self.cep
        }
