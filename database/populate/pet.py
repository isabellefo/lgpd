from faker import Faker
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker
from sqlalchemy import Column, Integer, String, Boolean, DATE, Enum, Numeric, create_engine, ForeignKey

from petshop.produto.TipoProduto import TipoProduto
import random

falso = Faker(['pt-BR'])
falso.seed_instance(1234)

# gera os cpfs
cpfs = [falso.cpf().replace('.', '').replace('-', '') for _ in range(100)]

engine = create_engine('mysql://petmall_app:petmall_pass@localhost/petmall_db',
                       convert_unicode=True)
Session = sessionmaker(bind=engine)
session = Session()
Base = declarative_base()


def random_especie() -> TipoProduto:
    especies = [
        TipoProduto.AVE,
        TipoProduto.CACHORRO,
        TipoProduto.GATO,
        TipoProduto.REPTIL,
        TipoProduto.ROEDOR
    ]
    return random.choice(especies)


def save(objects):
    session.add_all(pets)
    session.commit()


class Pet(Base):
    __tablename__ = "pets"

    id_pet = Column(Integer, primary_key=True)
    nome = Column(String(100))
    data_nascimento = Column(DATE)
    sexo = Column(Boolean)
    especie = Column(Enum(TipoProduto))
    raca = Column(String(100))

    def __init__(self, id_pet):
        self.id_pet = id_pet
        self.nome = falso.first_name().split()[0]
        self.data_nascimento = falso.date_this_decade()
        self.sexo = random.randint(0, 1)
        self.especie = random_especie()
        self.raca = falso.word()


class ClientePet(Base):
    __tablename__ = "clientes_pets"
    id_cliente_pet = Column(Integer, primary_key=True, autoincrement=True)
    id_pet = Column(Integer, ForeignKey('pets.id_pet'))
    cpf = Column(String(11), ForeignKey('clientes.cpf'))

    def __init__(self, pet, cpf):
        self.id_pet = pet.id_pet
        self.cpf = cpf


# gera os pets
pets = []
for id in range(120):
    pets.append(Pet(id+1))

clientes_pets = []
for i in range(len(cpfs)):
    clientes_pets.append(ClientePet(pets[i], cpfs[i]))

pets_resto = pets[100:]
for pet in pets_resto:
    cpf = random.choice(cpfs)
    clientes_pets.append(ClientePet(pet, cpf))

save(pets)

save(clientes_pets)
