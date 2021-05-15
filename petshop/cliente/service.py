from petshop.cliente.Endereco import Endereco
from petshop.cliente.Cliente import Cliente
from petshop.transacao.Transacao import Transacao
from typing import List, Dict
from petshop.database import db_session
from flask import abort
import os
import time


def listar_clientes() -> List[Cliente]:
    clientes = Cliente.query.all()
    return [str(cliente) for cliente in clientes]

def detalhar_cliente(id: int) -> List[Cliente]:
    cliente = Cliente.query.get(id)
    if cliente is None:
        abort(404)
    return cliente.to_dict()

def anonimizar_cliente(id: int) -> None:
    cliente = Cliente.query.get(id)
    if cliente is None:
        abort(404)
    cliente.anonimizar()
    db_session.add(cliente)

def anonimizar_tempo(tempo_inatividade=24) -> None:
    clientes = Cliente.query.all()
    
    for cliente in clientes:
        if (cliente.tempo_permanencia()>=tempo_inatividade):
                cliente.anonimizar()
                db_session.add(cliente)
    

