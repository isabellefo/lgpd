from sqlalchemy import Column, Integer, String, ForeignKey, Enum
from sqlalchemy.orm import relationship
from petshop.database import Base

class ClientePet(Base):
    __tablename__ = "clientes_pets"
    id_cliente_pet = Column(Integer, primary_key=True, autoincrement=True)
    id_pet = Column(Integer, ForeignKey('pets.id_pet'))
    id_cliente = Column(String(11), ForeignKey('clientes.id_cliente'))
