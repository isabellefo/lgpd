create index cpf_unique on clientes(cpf);
alter table clientes drop primary key;
alter table clientes add id_cliente int primary key auto_increment;

-- transacoes
alter table transacoes
	add id_cliente int,
    add constraint foreign key(id_cliente) references clientes(id_cliente);
    
UPDATE transacoes t
JOIN
    clientes c ON t.cpf = c.cpf 
SET 
    t.id_cliente = c.id_cliente;

alter table transacoes drop constraint `transacoes_ibfk_1`, drop cpf;
-- transacoes end

-- pets
alter table clientes_pets
	add id_cliente int,
	add constraint foreign key(id_cliente) references clientes(id_cliente);

UPDATE clientes_pets cp
JOIN
    clientes c ON cp.cpf = c.cpf 
SET 
    cp.id_cliente = c.id_cliente;

alter table clientes_pets drop constraint`clientes_pets_ibfk_2`, drop cpf;
-- pets  end
create index cpf_unique on clientes(cpf);
alter table clientes drop primary key;
alter table clientes add id_cliente int primary key auto_increment;

-- transacoes
alter table transacoes
	add id_cliente int,
    add constraint foreign key(id_cliente) references clientes(id_cliente);
    
UPDATE transacoes t
JOIN
    clientes c ON t.cpf = c.cpf 
SET 
    t.id_cliente = c.id_cliente;

alter table transacoes drop constraint `transacoes_ibfk_1`, drop cpf;
-- transacoes end

-- pets
alter table clientes_pets
	add id_cliente int,
	add constraint foreign key(id_cliente) references clientes(id_cliente);

UPDATE clientes_pets cp
JOIN
    clientes c ON cp.cpf = c.cpf 
SET 
    cp.id_cliente = c.id_cliente;

alter table clientes_pets drop constraint`clientes_pets_ibfk_2`, drop cpf;
-- pets  end

-- responsaveis
alter table clientes
	add id_cliente_responsavel int,
	add constraint foreign key(id_cliente_responsavel) references clientes(id_cliente);

UPDATE clientes cr
JOIN
    clientes c ON cr.cpf_responsavel = c.cpf 
SET 
    c.id_cliente = cr.id_cliente_responsavel;

alter table clientes drop constraint`clientes_ibfk_1`, drop cpf_responsavel;
-- responsaveis end