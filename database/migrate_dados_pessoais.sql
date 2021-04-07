CREATE TABLE dados_pessoais (id_dado_pessoal int NOT NULL AUTO_INCREMENT, PRIMARY KEY (id_dado_pessoal)) 
AS (SELECT nome, cpf, rg, telefone, celular, data_nascimento, sexo, renda FROM clientes);

ALTER TABLE clientes
ADD COLUMN id_dado_pessoal INT;

ALTER TABLE clientes
ADD FOREIGN KEY (id_dado_pessoal) REFERENCES dados_pessoais(id_dado_pessoal);

ALTER TABLE clientes
DROP COLUMN nome, 
DROP COLUMN cpf, 
DROP COLUMN rg, 
DROP COLUMN telefone, 
DROP COLUMN celular, 
DROP COLUMN data_nascimento, 
DROP COLUMN sexo, 
DROP COLUMN renda;