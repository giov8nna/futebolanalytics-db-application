-- SELECTS COM AGREGAÇÃO

-- Contar a quantidade total de jogadores cadastrados no sistema
SELECT COUNT(*) AS total_jogadores
FROM jogadores;

-- Calcular o público total somado de todas as partidas realizadas
SELECT SUM(publico) AS publico_total
FROM partidas;

-- Calcular a média de gols marcados pelos times mandantes nas partidas
SELECT AVG(placar_casa) AS media_gols_casa
FROM partidas;

-- Contar a quantidade total de partidas disputadas em cada temporada
SELECT 
    id_temporada,
    COUNT(*) AS total_partidas
FROM partidas
GROUP BY id_temporada;

-- Calcular a média de público presente por partida em cada estádio
SELECT 
    id_estadio,
    AVG(publico) AS media_publico
FROM partidas
GROUP BY id_estadio;

-- Calcular a pontuação total acumulada por cada time na tabela de classificação
SELECT 
    id_time,
    SUM(pontos) AS total_pontos
FROM classificacao
GROUP BY id_time;

-- Contar a quantidade total de jogadores cadastrados para cada posição existente
SELECT 
    id_posicao,
    COUNT(*) AS total_jogadores_por_posicao
FROM jogadores
GROUP BY id_posicao;

-- Calcular o valor total investido em contratações por cada clube de destino
SELECT 
    id_time_destino,
    SUM(valor) AS total_gasto_transferencias
FROM transferencias
GROUP BY id_time_destino;

-- Calcular a média de altura geral de todos os jogadores cadastrados no sistema
SELECT AVG(altura) AS media_altura_jogadores
FROM jogadores;

-- Identificar a maior e a menor capacidade de público entre os estádios registrados
SELECT 
    MAX(capacidade) AS maior_capacidade,
    MIN(capacidade) AS menor_capacidade
FROM estadios;

-- Contar a quantidade total de gols e agrupar pela forma como foram marcados (Normal, Pênalti, Falta, Contra)
SELECT 
    tipo_gol,
    COUNT(*) AS total_gols
FROM gols
GROUP BY tipo_gol;

-- Contar o total de partidas que cada árbitro (juiz) apitou no sistema
SELECT 
    id_juiz,
    COUNT(*) AS total_partidas_apitadas
FROM partidas
GROUP BY id_juiz;
