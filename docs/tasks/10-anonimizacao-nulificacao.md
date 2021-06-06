# [10] Anonimização de dados por nullificação

### Story
Como stakeholder da petmall, preciso que minha aplicação anonimize clientes.

### Objetivo  
Atualmente não é possível anonimizar os clientes, pois a chave primaria é o cpf do cliente, também não temos tempo de fazer essa correção, por isso simplificamos o problema para trazer um solução simples mas que traga valor ao produto.

### Ações
 * Retirar o cpf como PK
 * Adicionar a coluna id_cliente como nova PK
 * Atualizar todas as FK de cpf para id_cliente
 * Fazar um end-point para anonimizar o cliente nullficando os dados sensíveis
