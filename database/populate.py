from sqlalchemy import Column, Integer, String, Date, Boolean, Numeric, create_engine
from sqlalchemy.orm import sessionmaker
from faker import Faker
from sqlalchemy.ext.declarative import declarative_base
import dateutil.parser
import random

Base = declarative_base()
falso = Faker(['pt-BR'])
fake = Faker()
salario_min = 1100.00


engine = create_engine(
    'sqlite:////home/gabriel/Documents/fatec/seg-informacao/petshop/test.db')

Session = sessionmaker(bind=engine)
session = Session()


class Cliente(Base):
    __tablename__ = "clientes"

    def __init__(self):
        self.documento = falso.cpf()
        self.nome = falso.name()
        self.identidade = falso.rg()
        self.sexo = random.choice([True, False])
        self.telefone = falso.cellphone_number()
        self.celular = falso.cellphone_number()
        self.endereco = falso.address()
        self.data_nascimento = dateutil.parser.parse(
            fake.date(end_datetime="-10y"))
        self.renda = random.uniform(salario_min, 5*salario_min)
        self.nome_mae = falso.name()
        self.nome_pai = falso.name()

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


def criar_cliente_falso():
    cliente = Cliente()
    session.add(cliente)


criar_cliente_falso()

for _ in range(100):
    criar_cliente_falso()

try:
    session.commit()
except:
    print('deu ruim')
