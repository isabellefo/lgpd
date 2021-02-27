CREATE TABLE clientes
  (
     cpf             VARCHAR(11) NOT NULL,
     nome            VARCHAR(100),
     rg              VARCHAR(9),
     sexo            BOOL,
     telefone        VARCHAR(10),
     celular         VARCHAR(11),
     endereco        VARCHAR(500),
     data_nascimento DATE,
     renda           DECIMAL(6, 2),
     nome_mae        VARCHAR(100),
     nome_pai        VARCHAR(100),
     PRIMARY KEY (cpf)
  );

CREATE TABLE unidades
  (
     id_unidade    INT,
     razao_social  VARCHAR(500),
     nome_fantasia VARCHAR(500),
     cnpj          VARCHAR(14),
     endereco      VARCHAR(500),
     telefone      VARCHAR(10),
     celular       VARCHAR(11),
     email         VARCHAR(500),
     PRIMARY KEY (id_unidade)
  );

CREATE TABLE produtos
  (
     id_produto INT,
     nome       VARCHAR(500),
     valor      DECIMAL(6, 2),
     tipo       VARCHAR(100),
     PRIMARY KEY(id_produto)
  );

CREATE TABLE produtos_unidade
  (
     id_produto_unidade INT,
     id_produto         INT,
     id_unidade         INT,
     quantidade         INT,
     PRIMARY KEY (id_produto_unidade),
     FOREIGN KEY (id_produto) REFERENCES produtos(id_produto),
     FOREIGN KEY (id_unidade) REFERENCES unidades(id_unidade)
  );

CREATE TABLE transacoes
  (
     id_transacao    INT NOT NULL,
     id_produto      INT,
     id_unidade      INT,
     cpf             VARCHAR(11),
     quantidade      INT,
     valor_unitario  INT,
     valor_transacao DECIMAL(6, 2),
     data_transacao  DATETIME,
     PRIMARY KEY (id_transacao),
     FOREIGN KEY (id_produto) REFERENCES produtos(id_produto),
     FOREIGN KEY (id_unidade) REFERENCES unidades(id_unidade),
     FOREIGN KEY (cpf) REFERENCES clientes(cpf)
  );  