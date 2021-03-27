from sqlalchemy import Column, Integer, String, Date, Boolean, Numeric, DATE, ForeignKey, ForeignKeyConstraint
from sqlalchemy.orm import relationship, backref
from petshop.database import Base

class Cliente(Base):
    __tablename__ = "clientes"

    id_cliente = Column(Integer, primary_key=True, autoincrement=True)
    id_cliente_responsavel = Column(Integer, ForeignKey("clientes.id_cliente")) 
    cpf = Column(String(11))
    id_cliente_responsavel = Column()
    nome = Column(String(100))
    rg = Column(String(9))
    sexo = Column(Boolean)
    telefone = Column(String(10))
    celular = Column(String(11))
    data_nascimento = Column(DATE)
    data_cadastro = Column(DATE)
    data_modificacao = Column(DATE)
    renda = Column(Numeric(6, 2))
    bairro = Column(String(100))
    rua = Column(String(100))
    numero = Column(String(20))
    estado = Column(String(30))
    cep = Column('CEP', String(20))
    cidade = Column(String(100))
    transacoes = relationship("Transacao", uselist=True)
    pets = relationship("Pet", secondary="clientes_pets", uselist=True)

    def __repr__(self):
        return f"{self.cpf} {self.nome} {self.data_nascimento}"

    def to_dict(self, responsavel=True):
        info = {
            "nome": self.nome,
            "cpf": self.cpf,
            "telefone": self.telefone,
            "cidade": self.cidade,
            "numero_trasacoes": self.total_transacao,
            "total_gasto": self.total_compras,
            "pets": [p.to_dict() for p in self.pets],
            "id_responsavel": self.id_cliente_responsavel
        }
        return info

    @property
    def total_transacao(self):
        return len(self.transacoes)

    @property
    def total_compras(self):
        return sum([t.valor_total for t in self.transacoes])
