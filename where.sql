-- SELECT BÁSICO
SELECT * FROM times;


SELECT *
FROM jogadores
WHERE nacionalidade = 'Brasileira';

SELECT *
FROM partidas
WHERE publico > 30000;

SELECT *
FROM gols
WHERE tipo_gol = 'Penalti';

SELECT *
FROM cartoes
WHERE tipo_cartao = 'Vermelho';

SELECT *
FROM times
WHERE estado = 'Pernambuco';


SELECT COUNT(*) AS total_jogadores
FROM jogadores;

SELECT SUM(publico) AS publico_total
FROM partidas;

SELECT AVG(placar_casa) AS media_gols_casa
FROM partidas;

SELECT 
    id_temporada,
    COUNT(*) AS total_partidas
FROM partidas
GROUP BY id_temporada;

SELECT 
    id_estadio,
    AVG(publico) AS media_publico
FROM partidas
GROUP BY id_estadio;

SELECT 
    id_time,
    SUM(pontos) AS total_pontos
FROM classificacao
GROUP BY id_time;
