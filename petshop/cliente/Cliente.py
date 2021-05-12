from sqlalchemy import Column, Integer, String, Date, Boolean, Numeric, DATE, ForeignKey, ForeignKeyConstraint
from sqlalchemy.orm import relationship, backref
from petshop.cliente.ClienteStatus import ClienteStatus
from petshop.transacao.Transacao import Transacao

from petshop.database import Base
from datetime import datetime

class Cliente(Base):
    __tablename__ = "clientes"

    id_cliente = Column(Integer, primary_key=True, autoincrement=True)
    id_cliente_responsavel = Column(Integer, ForeignKey(id_cliente)) 
    data_cadastro = Column(DATE)
    data_modificacao = Column(DATE)
    id_status = Column(Integer, ForeignKey(ClienteStatus.id_status))

    transacoes = relationship("Transacao", uselist=True)
    pets = relationship("Pet", secondary="clientes_pets", uselist=True)
    dependentes = relationship("Cliente", backref=backref('responsavel', remote_side=[id_cliente]))
    dado_pessoal = relationship("DadoPessoal", uselist= False, cascade="all, save-update")
    endereco = relationship("Endereco", uselist=False, cascade="all, save-update")
    status = relationship("ClienteStatus", uselist=False, cascade="all, save-update")

    def __repr__(self):
        return f"<{self.id_cliente} {self.dado_pessoal.nome[:10]}>"

    def to_dict(self, completo=True):
        info = self.__basic_info()
        self.__set_transacoes(info)
        if completo:
            self.__pets_to_dict(info)
            self.__responsavel_to_dict(info)
        return info
        
    def get_last_transacao(self):
        for dt in self.transacoes:
            return dt.data_transacao
    
    def tempo_permanencia(self):
        if self.get_last_transacao() is None:
            return 0
        else:
            start_date = self.get_last_transacao()
            end_date = datetime.today()
            num_months = (end_date.year - start_date.year) * 12 + (end_date.month - start_date .month)
            return num_months


    def anonimizar(self):
        self.endereco.anonimizar()
        self.dado_pessoal.anonimizar()  
        self.id_cliente_responsavel = None
        self.data_modificacao = datetime.now()
        self.id_status = 3

    def get_id(self):
        return self.id_cliente
        

    def __basic_info(self):
        info = {}
        info.update(self.endereco.to_dict())
        info.update(self.dado_pessoal.to_dict())
        info["status"] = self.status.descricao
        return info
    
    def __set_transacoes(self, info):
        info.update({ "total_transacao": self.total_transacao})
        info.update({ "total_gasto": self.total_gasto})

    def __pets_to_dict(self, info):
        info["pets"] = [p.to_dict() for p in self.pets]

    def __responsavel_to_dict(self, info):
        if self.id_cliente_responsavel:
            info["responsavel"] = self.responsavel.to_dict(completo=False)

    @property
    def total_transacao(self):
        return len(self.transacoes)

    @property
    def total_gasto(self):
        return sum([t.valor_total for t in self.transacoes])
    
