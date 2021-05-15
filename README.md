# seg-informacao
Esse projeto utiliza Python 3.8.6. 

# Objetivo
O objetivo desse projeto é através de uma aplicação implementar os requisitos de anonimização da LGPD. Aplicação deve ser capaz de anonimizar e manipular dados anonimizados ou não dos clientes em relatórios da empresa.

# Situação Inicial
Inicialmente a aplicação está despreparada para implementar a LGPD, pois o banco de dados não se encontra da 3ª forma normal, contendo dados repetidos e nenhuma interface na api para anoimização de clientes.

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
 - [x] 2ª Sprint
   * [x] Migrar o novo esquema do banco de dados
   * [x] Retirar cadastros duplicados
   * [x] Aprimorar técnica de anonimização
 - [x] 3º Sprint
   * [x] Anonimização por tempo de retenção de dados
   * [x] Relatório de transação
 - [ ] 4ª Sprint
   *  [ ] Script para restaurar backup e anonimizar automaticamente

# Sprints
Cada sprint tem seu escopo, as tarefas finais daquele sprint devem ter coerência.
![diagrama das sprints](https://raw.githubusercontent.com/isabellefo/seg-informacao/main/docs/SPRINTS.png)

# Progessão de valor
Cada sprint deve trabalhar para entregar valor ao cliente, a fim de que no final o objetivo seja cumprido.
![diagram de progressao de valor do produto](https://raw.githubusercontent.com/isabellefo/seg-informacao/main/docs/progressao-de-valor.png)

# Problemas
Para que cada entrega tenha valor realmente, é preciso que ela solucione um ou mais problemas do cliente.
![diagrama de problemas e soluções](https://raw.githubusercontent.com/isabellefo/seg-informacao/main/docs/problemas-solucoes.png)

# Explicações
Para simplificar o problema da anonimização por tempo de retenção, foi adicionado um background scheduler. Essa não é a melhor solução , o ideal é usar um serviço externo e manter a aplicação stateless.
 
