USE petmall_db;

CREATE TABLE clientes_status
(
   id_status INTEGER PRIMARY KEY AUTO_INCREMENT,
   descricao VARCHAR(200),
   data_cadastro DATE
);

IF NOT EXISTS(SELECT 1 FROM clientes_status where descricao = "Ativo")BEGIN
INSERT INTO clientes_status (descricao, data_cadastro)
VALUES ("Ativo", GETDATE())
END

IF NOT EXISTS(SELECT 1 FROM clientes_status where descricao = "Inativo")BEGIN
INSERT INTO clientes_status (descricao, data_cadastro)
VALUES ("Inativo", GETDATE())
END

IF NOT EXISTS(SELECT 1 FROM clientes_status where descricao = "Anonimizado")BEGIN
INSERT INTO clientes_status (descricao, data_cadastro)
VALUES ("Anonimizado", GETDATE())
END

ALTER TABLE clientes
	add id_status int,
    add constraint foreign key(id_status) references clientes_status(id_status);


UPDATE clientes SET id_status = 1
