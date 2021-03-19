from faker import Faker
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker
from sqlalchemy import Column, Integer, String, Boolean, DATE, Numeric, create_engine
import random
# comentário para não tirar tudo
falso = Faker(['pt-BR'])
falso.seed_instance(1234)

# gera os cpfs
cpfs = [falso.cpf().replace('.', '').replace('-', '') for _ in range(100)]

engine = create_engine('mysql://petmall_app:petmall_pass@localhost/petmall_db',
                       convert_unicode=True)
Session = sessionmaker(bind=engine)
session = Session()
Base = declarative_base()


class Cliente(Base):
    __tablename__ = "clientes"

    cpf = Column(String(11), primary_key=True)
    cpf_responsavel = Column(String(11))
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

    def __init__(self, cpf):
        self.cpf = cpf
        self.cpf_responsavel = None
        self.nome = falso.name()
        self.rg = falso.rg()
        self.sexo = random.randint(0, 1)
        self.telefone = falso.msisdn()[3:]
        self.celular = falso.msisdn()[2:]
        self.data_nascimento = falso.date()
        self.data_cadastro = falso.date()
        self.data_modificacao = falso.date()
        self.renda = round(random.uniform(1000, 10000), 2)
        self.bairro = falso.bairro()
        self.rua = falso.street_name()
        self.numero = str(random.randint(1, 2000))
        self.estado = falso.estado_nome()
        self.cep = falso.postcode()
        self.cidade = falso.city()


clientes = []
dependentes = []

for i in range(100):
    clientes.append(Cliente(cpfs[i]))

random.shuffle(clientes)
dependentes = clientes[:30]

for i in range(30):
    cliente = clientes[30 + i]
    cliente.cpf_responsavel = dependentes[i].cpf

for cliente in clientes:
    session.add(cliente)

session.commit()
