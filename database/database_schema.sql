CREATE TABLE clientes_status
   (
      id_status INTEGER PRIMARY KEY AUTO_INCREMENT,
      descricao VARCHAR(200),
      data_cadastro DATE
   );

CREATE TABLE clientes
  (
     id_cliente       INTEGER PRIMARY KEY AUTO_INCREMENT,
     id_status        INTEGER,
     cpf              VARCHAR(11),
     nome             VARCHAR(100),
     rg               VARCHAR(9),
     sexo             BOOL,
     telefone         VARCHAR(10),
     celular          VARCHAR(11),
     endereco         VARCHAR(500),
     data_nascimento  DATE,
     data_cadastro    DATE,
     data_modificacao DATE,
     renda            DECIMAL(6, 2),
     FOREIGN KEY (id_status) REFERENCES clientes_status(id_status)
  );

CREATE TABLE clientes_responsaveis
  (
     id_dependente INTEGER,
     id_responsavel INTEGER,
     data_cadastro DATE,
     PRIMARY KEY(id_dependente, id_responsavel),
     FOREIGN KEY (id_dependente) REFERENCES clientes(id_cliente),
     FOREIGN KEY (id_responsavel) REFERENCES clientes(id_cliente)
  );

CREATE TABLE pets
  (
     id_pet          INTEGER PRIMARY KEY AUTO_INCREMENT,
     nome            VARCHAR(100),
     data_nascimento DATE,
     sexo            BOOL,
     especie         VARCHAR(100),
     raca            VARCHAR(100)
  );

CREATE TABLE clientes_pets
  (
     id_pet         INTEGER,
     id_cliente     INTEGER,
     FOREIGN KEY (id_pet) REFERENCES pets(id_pet),
     FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
     PRIMARY KEY (id_pet, id_cliente)
  );

CREATE TABLE unidades
  (
     id_unidade    INTEGER PRIMARY KEY AUTO_INCREMENT,
     razao_social  VARCHAR(100),
     nome_fantasia VARCHAR(100),
     cnpj          VARCHAR(14),
     endereco      VARCHAR(500),
     telefone      VARCHAR(10),
     celular       VARCHAR(11),
     email         VARCHAR(100)
  );

CREATE TABLE produtos
  (
     id_produto INTEGER PRIMARY KEY AUTO_INCREMENT,
     nome       VARCHAR(100),
     valor      DECIMAL(6, 2),
     tipo       INTEGER
  );

CREATE TABLE produtos_unidades
  (
     id_produto_unidade INTEGER,
     id_produto         INTEGER,
     id_unidade         INTEGER,
     quantidade         INTEGER,
     PRIMARY KEY (id_produto_unidade),
     FOREIGN KEY (id_produto) REFERENCES produtos(id_produto),
     FOREIGN KEY (id_unidade) REFERENCES unidades(id_unidade)
  );

CREATE TABLE transacoes
  (
     id_transacao    INTEGER PRIMARY KEY AUTO_INCREMENT,
     id_unidade      INTEGER,
     id_cliente      INTEGER,
     quantidade      INTEGER,
     valor_unitario  INTEGER,
     valor_transacao DECIMAL(6, 2),
     data_transacao  DATETIME,
     FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
     FOREIGN KEY (id_unidade) REFERENCES unidades(id_unidade)
  );  

CREATE TABLE produtos_transacoes
  (
     id_produto INTEGER,
     id_transacao INTEGER,
     valor DECIMAL(6,2) NOT NULL,
     PRIMARY KEY(id_produto, id_transacao)
  );