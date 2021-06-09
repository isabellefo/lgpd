# [43] Automatizar reanonimização

### Story
Como cliente da petmall quero que meus dados continuem anônimos após alguma uma falha crítica da base de dados.

### Objetivo
Script que recebe um parametro "backup" e faz o backup para o arquivo .sql com o nome dada data de atual e restore para recuperar o dado

### Ações
 * Fazer script que faz backup com nome do arquivo com a data de exclusão
 * Fazer script que recupera backup reanonimizando os clientes necessários
  * Clientes necessários são os com data de anonimização após a data do backup
  
### Imagens de prova de conclusão
![image da teste 1](https://github.com/isabellefo/lgpd/blob/main/docs/1_teste_restore.png?raw=true)
![image teste 2](https://github.com/isabellefo/lgpd/blob/main/docs/2_teste_restore.png?raw=true)
