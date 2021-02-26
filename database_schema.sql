CREATE TABLE clientes (
  cpf varchar(11) not null,
  nome varchar(100),
  rg varchar(9),
  sexo bool,
  telefone varchar(10),
  celular varchar(11),
  endereco varchar(500),
  data_nascimento date,
  renda decimal(6, 2),
  nome_mae varchar(100),
  nome_pai varchar(100),
  PRIMARY KEY (cpf)
);

create table unidades(
  id_unidade int,
  razao_social varchar(500),
  nome_fantasia varchar(500),
  cnpj varchar(14),
  endereco varchar(500),
  telefone varchar(10),
  celular varchar(11),
  email varchar(500),
  PRIMARY KEY (id_unidade)
);

create table produtos(
  id_produto int,
  nome varchar(500),
  valor decimal(6, 2),
  tipo varchar(100),
  PRIMARY KEY(id_produto)
);

create table produtos_unidade(
  id_produto_unidade int,
  id_produto int,
  id_unidade int,
  quantidade int,
  PRIMARY KEY (id_produto_unidade),
  FOREIGN KEY (id_produto) REFERENCES produtos(id_produto),
  FOREIGN KEY (id_unidade) REFERENCES unidades(id_unidade)
);

create table transacoes(
  id_transacao int not null,
  id_produto int,
  id_unidade int,
  cpf varchar(11),
  quantidade int,
  valor_unitario int,
  valor_transacao decimal(6, 2),
  data_transacao datetime,
  PRIMARY KEY (id_transacao),
  FOREIGN KEY (id_produto) REFERENCES produtos(id_produto),
  FOREIGN KEY (id_unidade) REFERENCES unidades(id_unidade),
  FOREIGN KEY (cpf) REFERENCES clientes(cpf)
);