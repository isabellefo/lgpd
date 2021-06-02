from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm.session import Session

engine = create_engine('mysql://petmall_app:petmall_pass@localhost/petmall_logs',
                       convert_unicode=True)
Session = sessionmaker(autocommit=False,
                       autoflush=False,
                       bind=engine)
session = Session()
Base = declarative_base()

def init_logs():
    from petshop.logs.ClienteAnonimizado import ClienteAnonimizado
    Base.metadata.create_all(bind=engine)
