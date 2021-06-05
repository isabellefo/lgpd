from petshop.cliente.Cliente import Cliente
from petshop.cliente import repository as cliente_repository
from typing import List, Tuple
from petshop.database import db_session
from flask import abort

def listar_clientes() -> List[Cliente]:
    clientes = cliente_repository.find_all()
    return [str(cliente) for cliente in clientes]

def detalhar_cliente(id: int) -> List[Cliente]:
    cliente = cliente_repository.find(id)
    if cliente is None:
        abort(404)
    return cliente.to_dict()

def anonimizar_cliente(id: int) -> None:
    cliente = cliente_repository.find(id)
    if cliente is None:
        abort(404)
    cliente.anonimizar()
    db_session.add(cliente)

def anonimizar_tempo(tempo_inatividade=24) -> None:
    clientes = cliente_repository.find_ativos()
    for cliente in clientes:
        if cliente.tempo_permanencia() >= tempo_inatividade:
            cliente.anonimizar()
            cliente_repository.save(cliente)
    

def anonimizar_massa(ids: List[int]) -> Tuple[List, List]:
    successes = []
    errors = []

    for id in ids:
        cliente = cliente_repository.find(id)
        if cliente is None:
            errors.append({"id": id, "error": "client not found"})
        else:
            cliente.anonimizar()
            cliente_repository.save(cliente)

            successes.append(id)

    return successes, errors
