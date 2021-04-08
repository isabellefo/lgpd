USE petmall_db;

DROP TABLE IF EXISTS clientes_status;

CREATE TABLE  clientes_status
(
   id_status INTEGER PRIMARY KEY AUTO_INCREMENT,
   descricao VARCHAR(200),
   data_cadastro DATE
);

INSERT IGNORE INTO clientes_status (id_status, descricao, data_cadastro)
VALUES (1, "Ativo", CURDATE());

INSERT IGNORE INTO clientes_status (id_status, descricao, data_cadastro)
VALUES (2, "Inativo", CURDATE());

INSERT IGNORE INTO clientes_status (id_status, descricao, data_cadastro)
VALUES (3, "Anonimizado", CURDATE());

ALTER TABLE clientes
	add id_status int,
    add constraint foreign key(id_status) references clientes_status(id_status);

UPDATE clientes SET id_status = 1
