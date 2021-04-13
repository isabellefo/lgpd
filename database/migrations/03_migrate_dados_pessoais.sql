use petmall_db;

DROP TABLE IF EXISTS dados_pessoais;
CREATE TABLE dados_pessoais(
    id_dado_pessoal int PRIMARY KEY AUTO_INCREMENT
) AS (SELECT
    id_cliente,
    nome,
    cpf,
    rg,
    telefone,
    celular,
    data_nascimento,
    sexo,
    renda
FROM clientes);

ALTER TABLE dados_pessoais
    ADD FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    MODIFY cpf VARCHAR(11); 

ALTER TABLE clientes
DROP COLUMN nome, 
DROP COLUMN cpf, 
DROP COLUMN rg, 
DROP COLUMN telefone, 
DROP COLUMN celular, 
DROP COLUMN data_nascimento, 
DROP COLUMN sexo, 
DROP COLUMN renda;