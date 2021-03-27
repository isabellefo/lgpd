from petshop.cliente.Cliente import Cliente
from typing import List


def listar_clientes() -> List[Cliente]:
    clientes = Cliente.query.all()
    return [str(cliente) for cliente in clientes]


def detalhar_cliente(id: int) -> List[Cliente]:
    cliente = Cliente.query.filter(Cliente.id_cliente == id).first()
    if cliente:
        return cliente.to_dict()
    else:
        raise Exception("Cliente nao encontrado")
