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
   * [x] [10] Anonimização de dados por nullificação
   * [x] [11] Relatório de dados do cliente 
 - [x] 2ª Sprint
   * [x] [20] Migrar o novo esquema do banco de dados
   * [x] [21] Retirar cadastros duplicados
   * [x] [22] Aprimorar técnica de anonimização (generalização)
 - [x] 3º Sprint
   * [x] [30] Anonimização por tempo de retenção de dados
   * [x] [31] Relatório de transações com total de transações 
 - [x] 4ª Sprint
   * [x] [40] Script para restaurar backup
   * [x] [41] Script para fazer backup
   * [x] [42] Automatização da reanonimização após recuperação dos dados
   * [x] [43] End-point para anonimizar em massa
Para melhor informções, veja os arquivos de 

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

## Tecnica de anonimização
A tecnica usada para anonimização é a de [generalização](https://policies.google.com/technologies/anonymization?hl=pt-BR). Onde é apagado os dados para que o cliente não possa ser identificado em grupo de pessoas, por exemplo: Eduardo Sakaue, professor da FATEC, passa a ser Eduardo, professor.

## Background Job
Para simplificar o problema da anonimização por tempo de retenção, foi adicionado um background scheduler. Essa não é a melhor solução , o ideal é usar um serviço externo e manter a aplicação stateless.
 
