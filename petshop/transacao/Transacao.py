import datetime

from petshop.database import Base
from sqlalchemy import Column, Date, ForeignKey, Integer, String, Table, Numeric
from sqlalchemy.orm import relationship

class ProdutoTransacao(Base):
    __tablename__ ='produtos_transacoes'

    id_transacao_produto =Column(Integer, primary_key=True)
    id_produto = Column(Integer, ForeignKey('produtos.id_produto'))
    id_transacao = Column(Integer, ForeignKey('transacoes.id_transacao'))
    valor = Column(Numeric(6,2))

class Transacao(Base):
    __tablename__ = "transacoes"
    id_transacao = Column(Integer, primary_key=True, autoincrement=True)
    id_cliente = Column(Integer,
                         ForeignKey("clientes.id_cliente"))
    data_transacao = Column(Date, default=datetime.datetime.utcnow)
    id_unidade = Column(Integer, nullable=False)
    produtos = relationship("Produto", secondary="produtos_transacoes")
    valores = relationship("ProdutoTransacao", uselist=True)


    # def get_last_transacao(self):
    #     for dt in self.transacoes:
    #         return dt.data_transacao
    
    # def tempo_permanencia(self):
    #     start_date = self.get_last_transacao()
    #     print("start", start_date)
    #     end_date = datetime.today()
    #     print("end", end_date)
    #     num_months = (end_date.year - start_date.year) * 12 + (end_date.month - start_date .month)
    #     if num_months >= 24:
    #          print('maior igual que 24')
    #     else:
    #         print('menor que 24')
    #     return num_months

    @property
    def valor_total(self):
        return sum([ float(p.valor) for p in self.valores])
    
    @property
    def lista_produtos(self):
        produtos = [str(p) for p in self.produtos]
        return produtos

    def to_dict(self):
        return {
            "data_transacao": self.data_transacao.strftime("%Y-%m-%d"),
            "valor_total": round(self.valor_total, 2),
            "produtos": self.lista_produtos
        }