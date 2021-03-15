CREATE TABLE clientes
   (
      cpf              VARCHAR(11) PRIMARY KEY,
      cpf_responsavel  VARCHAR(11),
      nome             VARCHAR(100),
      rg               VARCHAR(9),
      sexo             BOOL,
      telefone         VARCHAR(10),
      celular          VARCHAR(11),
      data_nascimento  DATE,
      data_cadastro    DATE,
      data_modificacao DATE,
      renda            DECIMAL(6, 2),
      bairro		     VARCHAR(30),
      rua              VARCHAR(30),
      numero           VARCHAR(20),
      estado           VARCHAR(10),
      CEP              VARCHAR(20),
      cidade           VARCHAR(20),
      FOREIGN KEY (cpf_responsavel) REFERENCES clientes(cpf)
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
     cpf            VARCHAR(11),
     FOREIGN KEY (id_pet) REFERENCES pets(id_pet),
     FOREIGN KEY (cpf) REFERENCES clientes(cpf),
     PRIMARY KEY (id_pet, cpf)
  );

CREATE TABLE unidades
  (
     id_unidade    INTEGER PRIMARY KEY AUTO_INCREMENT,
     razao_social  VARCHAR(100),
     nome_fantasia VARCHAR(100),
     cnpj          VARCHAR(20),
     telefone      VARCHAR(20),
     celular       VARCHAR(20),
     email         VARCHAR(100),
     bairro		     VARCHAR(30),
     rua              VARCHAR(30),
     numero           VARCHAR(10),
     estado           VARCHAR(2),
     CEP              VARCHAR(20),
     cidade           VARCHAR(50)
  );

CREATE TABLE produtos
  (
     id_produto INTEGER PRIMARY KEY AUTO_INCREMENT,
     nome       VARCHAR(100),
     valor      DECIMAL(6, 2),
     tipo       ENUM('AVE', 'CACHORRO', 'GATO', 'REPTIL', 'ROEDOR')
  );

CREATE TABLE produtos_unidades
  (
     id_produto         INTEGER,
     id_unidade         INTEGER,
     quantidade         INTEGER,
     PRIMARY KEY (id_produto, id_unidade),
     FOREIGN KEY (id_produto) REFERENCES produtos(id_produto),
     FOREIGN KEY (id_unidade) REFERENCES unidades(id_unidade)
  );

CREATE TABLE transacoes
  (
     id_transacao    INTEGER PRIMARY KEY AUTO_INCREMENT,
     id_unidade      INTEGER,
     cpf             VARCHAR(11),
     quantidade      INTEGER,
     data_transacao  DATETIME,
     FOREIGN KEY (cpf) REFERENCES clientes(cpf),
     FOREIGN KEY (id_unidade) REFERENCES unidades(id_unidade)
  );

CREATE TABLE produtos_transacoes
  (
     id_produto INTEGER,
     id_transacao INTEGER,
     valor DECIMAL(6,2) NOT NULL,
     PRIMARY KEY(id_produto, id_transacao),
     FOREIGN KEY (id_produto) REFERENCES produtos(id_produto),
     FOREIGN KEY (id_transacao) REFERENCES transacoes(id_transacao)
  );
