USE petmall_db;

UPDATE dados_pessoais
SET 
    nome = "Juan Correia",
    cpf = "04371698204",
    rg = "160253470",
    telefone = "1934073810",
    celular = "31943479769",
    data_nascimento = DATE("2008-05-31"),
    sexo = 1,
    renda = 9459.51
WHERE id_cliente = 1;

UPDATE enderecos
SET 
    estado = "Tocantins",
    cidade = "Correia",
    bairro = "Santa Monica",
    rua = "Largo Lima",
    numero = 941,
    CEP = "91849-649"
WHERE id_cliente = 1;

UPDATE clientes
    SET id_cliente_responsavel = NULL
WHERE
    id_cliente = 1;
