

CREATE TABLE `clientes_anonimizados` (
  `id_cliente` int NOT NULL,
  `data_anonimizacao` datetime NOT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;