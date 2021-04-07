USE petmall_db;

CREATE TABLE enderecos (
  id_cliente  INT NOT NULL,
  estado      VARCHAR(50),
  cidade      VARCHAR(100),
  bairro      VARCHAR(100),
  rua         VARCHAR(100),
  numero      VARCHAR(50),
  CEP         VARCHAR(20),
  FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

INSERT INTO enderecos (id_cliente, estado, cidade, bairro, rua, numero, CEP)
SELECT 
  id_cliente,
  estado,
  cidade,
  bairro,
  rua,
  numero,
  CEP 
FROM clientes;

ALTER TABLE clientes
DROP COLUMN estado,
DROP COLUMN cidade,
DROP COLUMN bairro,
DROP COLUMN rua,
DROP COLUMN numero,
DROP COLUMN CEP;
