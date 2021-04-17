use petmall_db;

/*
  REMOVE AS CONSTRAINTS E CRIA NOVAMENTE COM `ON DELETE CASCADE`
*/

-- REMOVE REGISTRO EM `clientes_pets` SE `id_pet` FOR REMOVIDO EM `pets`
ALTER TABLE `clientes_pets` DROP CONSTRAINT `clientes_pets_ibfk_1`;

ALTER TABLE `clientes_pets`
ADD CONSTRAINT `clientes_pets_ibfk_1`
FOREIGN KEY (`id_pet`) REFERENCES `pets` (`id_pet`)
ON DELETE CASCADE;

-- -- -- -- --

-- REMOVE REGISTRO EM `clientes_pets` SE `id_cliente` FOR REMOVIDO EM `clientes`
ALTER TABLE `clientes_pets` DROP CONSTRAINT `clientes_pets_ibfk_3`;

ALTER TABLE `clientes_pets`
ADD CONSTRAINT `clientes_pets_ibfk_3`
FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`) 
ON DELETE CASCADE;

-- -- -- -- --

-- REMOVE REGISTRO EM `dados_pessoais` SE `id_cliente` FOR REMOVIDO EM `clientes`
ALTER TABLE `dados_pessoais` DROP CONSTRAINT `dados_pessoais_ibfk_1`;

ALTER TABLE `dados_pessoais`
ADD CONSTRAINT `dados_pessoais_ibfk_1`
FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`)
ON DELETE CASCADE;

-- -- -- -- --

-- REMOVE REGISTRO EM `enderecos` SE `id_cliente` FOR REMOVIDO EM `clientes`
ALTER TABLE `enderecos` DROP CONSTRAINT `enderecos_ibfk_1`;
ALTER TABLE `enderecos`
ADD CONSTRAINT `enderecos_ibfk_1`
FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`)
ON DELETE CASCADE;
