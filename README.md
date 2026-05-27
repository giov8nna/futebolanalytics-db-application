# 📂 Estrutura do Repositório e Modelagem Física

O projeto está organizado em scripts SQL isolados para facilitar a execução, manutenção e auditoria da modelagem física do banco de dados.

### 1. Definição da Estrutura (DDL)
* **`createtable.sql`**: Script contendo a criação de todas as tabelas, definição dos tipos de dados, restrições de integridade, chaves primárias (`PK`) e chaves estrangeiras (`FK`).

### 2. Carga de Dados e População do Banco (DML)
Os scripts de inserção foram divididos para otimizar o processamento da massa de dados inicial:
* **`insert_times.sql`**: Cadastramento dos clubes participantes do campeonato.
* **`insert_estadio.sql`**: Inserção das praças esportivas (sedes das partidas).
* **`insert_jogadoresA1A2.sql` a `insert_jogadoresA7A8.sql`**: Lotes segmentados para inserção massiva do ecossistema de atletas cadastrados no banco de dados.

### 3. Manipulação e Limpeza de Dados
* **`delete.sql`**: Scripts controlados para exclusão de registros, garantindo a manutenção preventiva e testes de integridade referencial (cascateamento).

### 4. Consultas Analíticas e Regras de Negócio (DQL)
Os arquivos de consulta demonstram a maturidade na extração de dados para o módulo de Business Intelligence:
* **`where.sql`**: Consultas utilizando cláusulas de filtragem condicional para extrair subconjuntos específicos de dados (ex: busca por posições isoladas ou estádios específicos).
* **`join.sql`**: O coração analítico do projeto. Reúne consultas complexas de junção de tabelas (*Inner/Left JOINs*) combinadas com funções de agregação, simulando os relatórios de *Scouting*, eficiência tática de atletas e cruzamento de valor de mercado para a gestão de ativos.
