from petshop.cliente.model import Cliente


def listar_clientes() -> [Cliente]:
    clientes = Cliente.query.all()
    return [str(cliente) for cliente in clientes]


def detalhar_cliente(documento: str) -> Cliente:
    cliente = Cliente.query.filter(Cliente.documento == documento).first()
    if cliente:
        return cliente.to_dict()
    else:
        raise Exception("Cliente nao encontrado")
