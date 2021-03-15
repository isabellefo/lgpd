from faker import Faker
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker
from sqlalchemy import Column, Integer, String, create_engine
falso = Faker(['pt-BR'])
fake = Faker()


engine = create_engine('mysql://petmall_app:petmall_pass@localhost/petmall_db',
                       convert_unicode=True)
Session = sessionmaker(bind=engine)
session = Session()
Base = declarative_base()


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
    rua = Column(String(100))
    numero = Column(String(10))
    estado = Column(String(2))
    cep = Column('CEP', String(20))
    cidade = Column(String(100))

    def __init__(self, ):
        self.bairro = falso.bairro()
        self.nome_fantasia = "PetMall " + self.bairro
        self.razao_social = self.nome_fantasia + " " + falso.company_suffix()
        self.cnpj = falso.cnpj()
        self.telefone = falso.phone_number()
        self.celular = falso.cellphone_number()
        self.email = falso.ascii_email()
        self.rua = falso.street_name()
        self.cidade = falso.city()
        self.cep = falso.postcode()
        self.estado = falso.estado_sigla()
        self.numero = falso.building_number()


for _ in range(10):
    session.add(Unidade())

session.commit()
