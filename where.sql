-- SELECT COM WHERE

-- 1. Buscar jogadores que são canhotos (perna dominante esquerda)
SELECT nome, nacionalidade, perna_dominante 
FROM jogadores 
WHERE perna_dominante = 'Esquerda';

-- 2. Filtrar estádios que possuem capacidade de público superior a 50.000 pessoas
SELECT nome, capacidade, cidade 
FROM estadios 
WHERE capacidade > 50000;

-- 3. Listar partidas onde o time mandante saiu vitorioso (placar de casa maior que o de fora)
SELECT id_partida, id_time_mandante, placar_casa, placar_fora 
FROM partidas 
WHERE placar_casa > placar_fora;

-- 4. Buscar todos os times de futebol localizados no estado do Rio de Janeiro ('RJ')
SELECT nome, sigla, cidade 
FROM times 
WHERE estado = 'RJ';

-- 5. Filtrar transferências de mercado com valores milionários (acima de 10 milhões)
SELECT id_jogador, id_time_destino, valor 
FROM transferencias 
WHERE valor > 10000000.00;
-- 6. Buscar todos os jogadores que possuem a nacionalidade brasileira
SELECT *
FROM jogadores
WHERE nacionalidade = 'Brasileira';

-- 7. Filtrar partidas que registraram um público superior a 30.000 torcedores
SELECT *
FROM partidas
WHERE publico > 30000;

-- 8. Listar todos os gols que foram marcados a partir de cobranças de pênalti
SELECT *
FROM gols
WHERE tipo_gol = 'Penalti';

-- 9. Buscar todos os registros de cartões vermelhos aplicados nas partidas
SELECT *
FROM cartoes
WHERE tipo_cartao = 'Vermelho';

-- 10. Filtrar os times de futebol localizados no estado de Pernambuco
SELECT *
FROM times
WHERE estado = 'Pernambuco';

-- 11. Buscar todos os juízes que possuem a nacionalidade argentina
SELECT *
FROM juizes
WHERE nacionalidade = 'Argentina';

-- 12. Filtrar os eventos ocorridos nos acréscimos das partidas (após os 90 minutos)
SELECT *
FROM eventos
WHERE minuto > 90;

-- 13. Listar todos os jogadores que possuem altura igual ou superior a 1.90 metros
SELECT *
FROM jogadores
WHERE altura >= 1.90;

-- 14. Buscar as partidas que terminaram empatadas sem gols (placar de 0 a 0)
SELECT *
FROM partidas
WHERE placar_casa = 0 AND placar_fora = 0;

-- 15. Filtrar as transferências de jogadores realizadas a partir do ano de 2025
SELECT *
FROM transferencias
WHERE data_transferencia >= '2025-01-01';