from faker import Faker
from faker.providers.lorem import Provider
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker
from sqlalchemy import Column, Integer, String, Enum, Numeric, ForeignKey, create_engine

from petshop.produto.TipoProduto import TipoProduto
from typing import List
import random

falso = Faker(['pt-BR'])

engine = create_engine('mysql://petmall_app:petmall_pass@localhost/petmall_db',
                       convert_unicode=True)

Session = sessionmaker(bind=engine)
session = Session()
Base = declarative_base()

class Produtos(Base):
    __tablename__ = "produtos"

    id = Column('id_produto', Integer, primary_key=True)
    nome = Column(String(100))
    tipo = Column(Enum(TipoProduto))
    valor = Column(Numeric(6, 2))

    def __init__(self, id, nome, tipo, valor):
        self.id = id
        self.nome = nome
        self.tipo = tipo
        self.valor = valor

class ProdutoUnidade(Base):
    __tablename__ = "produtos_unidades"

    id_produto = Column(Integer, primary_key=True)
    id_unidade = Column(Integer, primary_key=True)
    quantidade = Column(Integer)

    def __init__(self, id_produto, id_unidade, quantidade):
        self.id_produto = id_produto
        self.id_unidade = id_unidade
        self.quantidade = quantidade

######

def random_tipo_produto() -> TipoProduto:
    tipos_produtos = [
        TipoProduto.AVE,
        TipoProduto.CACHORRO,
        TipoProduto.GATO,
        TipoProduto.REPTIL,
        TipoProduto.ROEDOR
    ]
    return random.choice(tipos_produtos)

def gera_produtos(quantidade: int) -> List[Produtos]:
    # gera 100 palavras únicas que serão os nomes dos produtos
    nomes_produtos = falso.words(quantidade, unique=True)

    produtos = []
    for i in range(1, quantidade + 1):
        preco = round(random.uniform(5, 50), 2)
        nome = nomes_produtos.pop()
        tipo = random_tipo_produto()
        produtos.append( Produtos(i, nome, tipo, preco) )
    return produtos

def gera_produtos_unidades(produtos: List[Produtos]) -> List[ProdutoUnidade]:
    produtos_unidades = []
    
    id_unidades = [id for id in range(1, 11)] # lista com 10 ids de unidade
    random.shuffle(id_unidades)

    produtos_exclusivos = produtos[:len(produtos) // 4] # 1/4 dos produtos são exclusivos de uma unidade
    id_unidade_exclusiva = id_unidades[0] # seleciona a unidade que vai ter os produtos exclusivos

    # associa os produtos exclusivos à unidade escolhida
    for produto_ex in produtos_exclusivos:
        produtos_unidades.append(
            ProdutoUnidade(produto_ex.id, id_unidade_exclusiva, random.randint(1, 50)))

    # associa o resto dos produtos à todas as unidades
    produtos = produtos[len(produtos) // 4:] # produtos não-exclusivos
    for id_unidade in id_unidades:
        for produto in produtos:
            produtos_unidades.append(
                ProdutoUnidade(produto.id, id_unidade, random.randint(1, 50)))

    return produtos_unidades

produtos = gera_produtos(100)
produtos_unidades = gera_produtos_unidades(produtos)

for p in produtos:
    session.add(p)

for pu in produtos_unidades:
    session.add(pu)

session.commit()
