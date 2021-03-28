from faker import Faker
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker
from sqlalchemy import Column, Integer, String, Boolean, DATE, Numeric, create_engine
import random

falso = Faker(['pt-BR'])

engine = create_engine('mysql://petmall_app:petmall_pass@localhost/petmall_db',
                       convert_unicode=True)
Session = sessionmaker(bind=engine)
session = Session()
Base = declarative_base()


class Endereco(Base):
    __tablename__ = "endereco"

    id_endereco = Column(Integer, primary_key=True, autoincrement=True)
    bairro = Column(String(30))
    rua = Column(String(20))
    numero = Column(String(10))
    estado = Column(String(20))
    cep = Column('CEP', String(20))
    cidade = Column(String(50))

    def __init__(self):

        self.bairro = falso.bairro()
        self.rua = falso.street_name()
        self.numero = str(random.randint(1, 2000))
        self.estado = falso.estado_nome()
        self.cep = falso.postcode()
        self.cidade = falso.city()


for i in range(100):
    session.add(Endereco())

session.commit()
