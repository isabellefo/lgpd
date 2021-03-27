from faker import Faker
from faker.providers.lorem import Provider
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker
from sqlalchemy import Column, Integer, String, Enum, Numeric, ForeignKey, DATE, create_engine

from petshop.produto.TipoProduto import TipoProduto
from typing import List
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


class Transacao(Base):
    __tablename__ = "transacoes"

    id_transacao = Column(Integer, primary_key=True, autoincrement=True)
    id_unidade = Column(Integer)
    cpf = Column(String(11))
    quantidade = Column(Integer)
    data_transacao = Column(DATE)

    def __init__(self):
        self.id_unidade = random.randint(1, 10)
        self.cpf = random.choice(cpfs)
        self.quantidade = random.randint(1, 5)
        self.data_transacao = falso.date()


class ProdutoTransacao(Base):
    __tablename__ = "produtos_transacoes"

    id_transacao_produto = Column(
        Integer, primary_key=True, autoincrement=True)
    id_produto = Column(Integer)
    id_transacao = Column(Integer)
    valor = Column(Numeric(6, 2))

    def __init__(self, id_transacao):
        self.id_transacao = id_transacao
        self.id_produto = random.randint(1, 100)
        self.valor = round(random.uniform(5, 50), 2)


def gera_transacoes(qnt: int) -> List[Transacao]:
    transacoes = []
    for _ in range(qnt):
        transacoes.append(Transacao())
    return transacoes


def gera_produtos_transacoes(transacoes: List[Transacao]) -> List[ProdutoTransacao]:
    produtos_transacoes = []
    i = 1
    for t in transacoes:
        produtos_transacoes.append(
            [ProdutoTransacao(i) for _ in range(t.quantidade)]
        )
        i += 1
    return produtos_transacoes


transacoes = gera_transacoes(200)
p_transacaoes = gera_produtos_transacoes(transacoes)

session.add_all(transacoes)
session.commit()

for pt in p_transacaoes:
    session.add_all(pt)
session.commit()
