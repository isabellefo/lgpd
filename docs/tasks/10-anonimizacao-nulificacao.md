# [10] Anonimização de dados por nullificação

### Story
Como stakeholder da petmall, preciso que minha aplicação anonimize possobilite a anonimização dos clientes.

### Objetivo  
Atualmente não é possível anonimizar os clientes, pois a chave primaria é o cpf do cliente, também não temos tempo de fazer anonimização essa correção, por isso simplifique o problema para entregar o que resolve o problema de maneira mais simples.

### Ações
 * Retirar o cpf como PK
 * Adicionar a coluna id_cliente como nova PK
 * Atualizar todas as FK de cpf para id_cliente
 * Faça um end-point para anonimizar o cliente nullficando os dados sensíveis
