from petshop.cliente.Cliente import Cliente
from typing import List, Dict


def listar_clientes() -> List[Cliente]:
    clientes = Cliente.query.all()
    return [str(cliente) for cliente in clientes]

def detalhar_cliente(id: int) -> List[Cliente]:
    cliente = Cliente.query.filter(Cliente.id_cliente == id).first()
    if cliente:
        return cliente.to_dict()
    else:
        raise Exception("Cliente nao encontrado")

def anonimizar_cliente(id: int) -> None:
    cliente = Cliente.query.get(id)
    if cliente is None:
        raise Exception(f"Cliente {id} não encontrado")
    cliente.anonimizar()
