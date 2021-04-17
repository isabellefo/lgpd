from sqlalchemy import Column, Integer, String, Date, Boolean, Numeric, DATE, ForeignKey, ForeignKeyConstraint
from sqlalchemy.orm import relationship, backref
from petshop.database import Base
import dateutil.parser

from petshop.cliente.Cliente import Cliente

def generate_num(i: int):
    import random
    n=0
    randomlist = []
    for i in range(0,i):
        n = random.randint(0,9)
        randomlist.append(n)
    return ''.join([str(x) for x in randomlist]) 

def alter_date(date):
    year = str(date.year)
    new_date = year+'-01-01'
    return dateutil.parser.parse(new_date)

def split_name(name):
    name_list = name.split(' ')
    if '.' in name:
        return ' '.join(name_list[0:2])
    return name_list[0]


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
        self.nome = split_name(self.nome)
        self.cpf = self.cpf[0:5]+generate_num(6)
        self.rg = self.rg[0:4]+generate_num(5)
        self.telefone = self.telefone[0:5]+'*****'
        self.celular = self.telefone
        self.data_nascimento = alter_date(self.data_nascimento)
        self.renda = None

    def to_dict(self, completo=True):
        return {
            "nome": self.nome,
            "cpf": self.cpf,
            "telefone": self.telefone,
            "celular": self.celular,
            "nascimento": self.data_nascimento
        }
