CREATE TABLE clientes
  (
     cpf             VARCHAR(11) NOT NULL,
     nome            VARCHAR(100),
     rg              VARCHAR(9),
     sexo            BOOL,
     telefone        VARCHAR(10),
     celular         VARCHAR(11),
     endereco        VARCHAR(500),
     data_nascimento TEXT,
     renda           DECIMAL(6, 2),
     nome_mae        VARCHAR(100),
     nome_pai        VARCHAR(100),
     PRIMARY KEY (cpf)
  );

CREATE TABLE unidades
  (
     id_unidade    INTEGER PRIMARY KEY AUTOINCREMENT,
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
     id_produto INTEGER PRIMARY KEY AUTOINCREMENT,
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
     id_transacao    INTEGER NOT NULL,
     id_produto      INTEGER,
     id_unidade      INTEGER,
     cpf             VARCHAR(11),
     quantidade      INTEGER,
     valor_unitario  INTEGER,
     valor_transacao DECIMAL(6, 2),
     data_transacao  TEXT,
     PRIMARY KEY (id_transacao),
     FOREIGN KEY (id_produto) REFERENCES produtos(id_produto),
     FOREIGN KEY (id_unidade) REFERENCES unidades(id_unidade),
     FOREIGN KEY (cpf) REFERENCES clientes(cpf)
  );  

  CREATE TABLE produtos_transacoes
  (
     id_produto INTEGER,
     id_transacao INTEGER,
     valor DECIMAL(6,2) NOT NULL,
     PRIMARY KEY(id_produto, id_transacao)
  )