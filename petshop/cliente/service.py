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
    cliente = Cliente.query.filter(Cliente.id_cliente == id)
    if cliente.first() is None:
        raise Exception(f"Cliente {id} não encontrado")

    cliente.update({
        "cpf": "00000000000",
        "id_cliente_responsavel": None,
        "nome": None,
        "rg": None,
        "telefone": None,
        "celular": None,
        "data_nascimento": None,
        "renda": None,
        "bairro": None,
        "rua": None,
        "numero": None,
        "estado": None,
        "cep": None,
        "cidade": None
    })
