-- SELECT BÁSICO

-- 1. Listar todas as ligas cadastradas
SELECT * FROM ligas;

-- 2. Projetar apenas o nome e a capacidade de todos os estádios
SELECT nome, capacidade FROM estadios;

-- 3. Listar os nomes de todas as posições disponíveis no sistema
SELECT nome_posicao FROM posicoes;

-- 4. Exibir o nome, sigla e cidade de todos os times cadastrados
SELECT nome, sigla, cidade FROM times;

-- 5. Listar o ano e as datas de início/fim de todas as temporadas
SELECT ano, data_inicio, data_fim FROM temporadas;

-- 6. Mostrar o nome e a nacionalidade de todos os árbitros (juízes)
SELECT nome, nacionalidade FROM juizes;

-- 7. Listar o nome, altura e peso de todos os jogadores
SELECT nome, altura, peso FROM jogadores;

-- 8. Exibir o histórico de transferências mostrando o ID do jogador e o valor pago
SELECT id_jogador, valor, data_transferencia FROM transferencias;

-- 9. Listar os tipos de eventos cadastrados com seus respectivos minutos de ocorrência
SELECT id_partida, minuto, tipo_evento FROM eventos;

-- 10. Lista todos times cadastrados
SELECT * FROM times;

-- 11. Projetar o nome e a data de fundação de todos os times cadastrados
SELECT nome, data_fundacao FROM times;

-- 12. Listar todas as informações completas dos estádios registrados no sistema
SELECT * FROM estadios;

-- 13. Exibir o tipo de evento e a sua respectiva descrição textual
SELECT tipo_evento, descricao FROM eventos;

-- 14. Mostrar o nome e a data de nascimento de todos os árbitros (juízes)
SELECT nome, data_nascimento FROM juizes;

-- 15. Listar o identificador, a rodada e a data de realização de todas as partidas
SELECT id_partida, rodada, data_partida FROM partidas;