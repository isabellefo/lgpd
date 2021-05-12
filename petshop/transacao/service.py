from petshop.transacao.Transacao import Transacao
from typing import List, Dict
from petshop.database import db_session
from flask import abort
from sqlalchemy import func


def listar_transacoes(start=None, end=None) -> List[Transacao]:
    query = Transacao.query
    if start:
        query = query.filter(Transacao.data_transacao >= start)
    if end:
        query = query.filter(Transacao.data_transacao <= end)

    result = query.order_by(Transacao.data_transacao.asc()).all()
    return [transacao.to_dict() for transacao in result]

def media_preco_transacoes(transacoes: List[Transacao]) -> float:
    qntd = len(transacoes)
    if qntd == 0:
        return 0

    avg = sum([t["valor_total"] for t in transacoes]) / qntd
    return round(avg, 2)
