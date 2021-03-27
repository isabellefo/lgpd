from sqlalchemy import Column, Integer, String, Date, Boolean, Numeric, DATE, ForeignKey, Enum
from sqlalchemy.orm import relationship
from petshop.database import Base
from petshop.produto.TipoProduto import TipoProduto 

class Pet(Base):
    __tablename__ = "pets"

    id_pet = Column(Integer, primary_key=True)
    nome = Column(String(100))
    data_nascimento = Column(DATE)
    _sexo = Column('sexo', Boolean)
    especie = Column(Enum(TipoProduto))
    raca = Column(String(100))

    def to_dict(self):
        return {
            "nome": self.nome,
            "sexo": self.sexo,
            "especie": self.especie.name,
            "raca": self.raca,
        }
    
    @property
    def sexo(self):
        return 'Masculino' if self._sexo  else 'Feminino'  
