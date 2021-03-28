# seg-informacao
Esse projeto utiliza Python3.8.6. 

# Objetivo
O objetivo desse projeto é através de uma aplicação implementar os requisitos de anonimização da LGPD. Aplicação deve ser capaz de anonimizar e manipular dados anonimizados ou não dos clientes em relatórios de vendas entre outros.

# Situação Inicial
Inicialmente a aplicação está despreparada para receber implementar a LGPD, estando fora da 3ª forma normal, contendo dados repetidos e nenhuma interface na api para anoimização de clientes.

# Instalação
* Crie o ambiente virtual `python3 -m virtualenv env`
* Instale os drivers para conectar com o banco mysql localmente `sudo apt install libmysqlclient-dev`
* Ative o ambiente virtual `source env/bin/activate`
* Instale as dependências `pip install -e .`
* Crie o database e o usuário `sudo mysql -u USER -p < database/permission.sql`
# Backlog
 - [x] 1ª Sprint
   * [x] Anonimização de dados 
   * [x] Relatório de clientes 
 - [ ] 2ª Sprint
   * Migrar o esquema do banco
   * Retirar cadastros duplicados
 - [ ] 3º Sprint
   * Anonimização por tempo de retenção de dados
   * Relatório de transação
 - [ ] 4ª Sprint
   * Script para restaurar backup e anonimizar automaticamente

# Sprints
Cada sprint tem seu escopo, as tarefas finais daquele sprint devem estar ter coerência.
![diagrama das sprints](https://raw.githubusercontent.com/isabellefo/seg-informacao/main/docs/SPRINTS.png)

# Progessão de valor
Cada sprint deve trabalhar para entregar valor ao cliente, a fim de que no final o objetivo seja cumprido.
![diagram de progressao de valor do produto](https://raw.githubusercontent.com/isabellefo/seg-informacao/main/docs/progessao-de-valor.png)

# Problemas
Para que cada entrega tenha valor realmente, é preciso que ela solucione um ou mais problemas do cliente.
![diagrama de problemas e soluções](https://raw.githubusercontent.com/isabellefo/seg-informacao/main/docs/problemas-solucoes.png)
