from sqlalchemy import create_engine
from sqlalchemy.orm import scoped_session, sessionmaker
from sqlalchemy.ext.declarative import declarative_base

engine = create_engine('mysql://petmall_app:petmall_pass@localhost/petmall_db',
                       convert_unicode=True)
db_session = scoped_session(sessionmaker(autocommit=False,
                                         autoflush=False,
                                         bind=engine))
Base = declarative_base()
Base.query = db_session.query_property()


def init_db():
    # import all modules here that might define models so that
    # they will be registered properly on the metadata.  Otherwise
    # you will have to import them first before calling init_db()
    from petshop.cliente.Cliente import Cliente
    from petshop.cliente.DadoPessoal import DadoPessoal
    from petshop.cliente.Endereco import Endereco
    from petshop.transacao.Transacao import Transacao, ProdutoTransacao
    from petshop.produto.Produto import Produto
    from petshop.cliente.Pet import Pet
    from petshop.cliente.ClientePet import ClientePet

    Base.metadata.create_all(bind=engine)
