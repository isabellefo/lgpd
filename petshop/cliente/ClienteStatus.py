from sqlalchemy import Column, Integer, String, ForeignKey, DATE
from sqlalchemy.orm import relationship
from petshop.database import Base

class ClienteStatus(Base):
    __tablename__ = "clientes_status"
    id_status = Column(Integer, primary_key=True, autoincrement=True)
    descricao =  Column(String(200))
    data_cadastro = Column(DATE)

