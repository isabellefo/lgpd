from petshop.cliente.Cliente import Cliente
from petshop.cliente.ClientePet import ClientePet
from petshop.cliente.Pet import Pet
from petshop.cliente.DadoPessoal import DadoPessoal
from petshop.cliente.Endereco import Endereco
from petshop.produto.Produto import Produto
from petshop.transacao.Transacao import Transacao

from sqlalchemy import func, create_engine
from sqlalchemy.orm import sessionmaker

import warnings
warnings.simplefilter("ignore")

# Adquire todos os cpfs duplicados na base
def get_all_duplicates():
	return Cliente.query \
		.with_entities(DadoPessoal.cpf, func.count(DadoPessoal.cpf)) \
		.join(Cliente.dado_pessoal) \
		.group_by(DadoPessoal.cpf) \
		.having(func.count(DadoPessoal.cpf) > 1) \
		.all()

# Adquire o id dos clientes com mesmo cpf
# Os ids retornados já estão ordenados decrescentemente pela coluna data_modificacao
def get_client_ids_by_cpf(cpf: str):
	clients = Cliente.query \
		.with_entities(Cliente.id_cliente) \
		.join(Cliente.dado_pessoal) \
		.filter(DadoPessoal.cpf == cpf) \
		.order_by(Cliente.data_modificacao.desc()) \
		.all()

	# ((1,), (2,), (3,), (4,)) --> (1, 2, 3, 4)
	return tuple(c.id_cliente for c in clients)

def remove_duplicates(original, duplicates):

	# deleta os pets dos clientes duplicados (não tem como deletar em cascata as linhas da tabela `pets` :c)
	# tentei criar uma trigger em clientes_pets pra remover o pet automaticamente, mas mysql é tão bom que não ativa trigger com
	# deletação em cascata
	session = sessionmaker(bind=create_engine('mysql://petmall_app:petmall_pass@localhost/petmall_db', convert_unicode=True))()
	with session.begin():
		session.execute(
			"DELETE p FROM pets p INNER JOIN clientes_pets cp ON cp.id_pet = p.id_pet WHERE cp.id_cliente in (:ids_clientes);",
			{"ids_clientes": duplicates})
	session.close()

	# transfere as transações dos duplicados para o original
	Transacao.query \
		.filter(Transacao.id_cliente.in_(duplicates)) \
		.update({Transacao.id_cliente: original})

	# deleção em cascata dos clientes duplicados (deleta dado_pessoal, endereco, cliente_pet etc)
	Cliente.query \
		.filter(Cliente.id_cliente.in_(duplicates)) \
		.delete()


if __name__ == "__main__":
	duplicates = get_all_duplicates()

	qnt_duplicados = 0

	for cpf, _ in duplicates:
		clients_ids = get_client_ids_by_cpf(cpf)

		original_id, *duplicate_ids = clients_ids
		qnt_duplicados += len(duplicate_ids)
		
		remove_duplicates(original_id, duplicate_ids)
	
	print(f"Registros duplicados removidos: {qnt_duplicados}")