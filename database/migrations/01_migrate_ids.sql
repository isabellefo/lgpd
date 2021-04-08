use petmall_db;

DELIMITER $$

DROP PROCEDURE IF EXISTS migrate_ids $$

CREATE PROCEDURE migrate_ids()

BEGIN
		
	IF NOT EXISTS ((SELECT column_name
				FROM information_schema.columns
				WHERE table_schema = 'petmall_db' and
				table_name = 'clientes' and
				column_name = 'id_cliente')) THEN
		create index cpf_unique on clientes(cpf);
		alter table clientes drop primary key;
		alter table clientes add id_cliente int primary key auto_increment;
	END IF;
    
	-- transacoes
	IF NOT EXISTS ((SELECT column_name
				FROM information_schema.columns
				WHERE table_schema = 'petmall_db' and
				table_name = 'transacoes' and
				column_name = 'id_cliente')) THEN
		alter table transacoes
			add id_cliente int,
			add constraint foreign key(id_cliente) references clientes(id_cliente);

		UPDATE transacoes t
		JOIN
			clientes c ON t.cpf = c.cpf 
		SET 
			t.id_cliente = c.id_cliente;

		alter table transacoes drop constraint `transacoes_ibfk_1`, drop cpf;
	END IF;
	-- transacoes end

	-- pets
	IF NOT EXISTS ((SELECT column_name
				FROM information_schema.columns
				WHERE table_schema = 'petmall_db' and
				table_name = 'clientes_pets' and
				column_name = 'id_cliente')) THEN
		alter table clientes_pets
			add id_cliente int,
			add constraint foreign key(id_cliente) references clientes(id_cliente);

		UPDATE clientes_pets cp
		JOIN
			clientes c ON cp.cpf = c.cpf 
		SET 
			cp.id_cliente = c.id_cliente;

		alter table clientes_pets drop constraint`clientes_pets_ibfk_2`, drop cpf;
	END IF;
	-- pets end

	-- responsaveis
	IF NOT EXISTS ((SELECT column_name
				FROM information_schema.columns
				WHERE table_schema = 'petmall_db' and
				table_name = 'clientes' and
				column_name = 'id_cliente_responsavel')) THEN
		alter table clientes
			add id_cliente_responsavel int,
			add constraint foreign key(id_cliente_responsavel) references clientes(id_cliente);

		UPDATE clientes cr
		JOIN
			clientes c ON cr.cpf_responsavel = c.cpf 
		SET 
			cr.id_cliente_responsavel = c.id_cliente;

		alter table clientes drop constraint`clientes_ibfk_1`, drop cpf_responsavel;
	END IF;
    -- responsaveis end
END $$

call migrate_ids() $$

DROP PROCEDURE IF EXISTS migrate_ids $$

DELIMITER ;