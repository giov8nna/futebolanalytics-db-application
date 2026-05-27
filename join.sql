-- 1. JOGADORES E SEUS RESPECTIVOS TIMES ATUAIS, PORÉM, CASO UM JOGADOR NÃO TENHA TIME OU UM TIME NÃO TENHA JOGADOR, SERÁ EXCLUÍDO DA CONSULTA
SELECT 
    jogadores.nome AS jogador,
    times.nome AS time
FROM jogadores
INNER JOIN times
ON jogadores.id_time = times.id_time;

-- 2. FAZ UMA CONSULTA DE DETALHES GERAIS DE UMA PARTIDA
SELECT 
    p.id_partida,
    tm.nome AS mandante,
    tv.nome AS visitante,
    p.placar_casa,
    p.placar_fora,
    p.data_partida
FROM partidas p
INNER JOIN times tm
ON p.id_time_mandante = tm.id_time
INNER JOIN times tv
ON p.id_time_visitante = tv.id_time;

-- SEMELHANTE AO PRIMEIRO JOIN, PORÉM COM O LEFT JOIN, OS JOGADORES APARECEM MESMO SE NÃO ESTIVEREM COM TIME E VICE-VERSA
-- 3. TRAZ UM RELATÓRIO DO ELENCO COMPLETO, COM O JOGADOR, SEU TIME, POSIÇÃO, NACIONALIDADE
SELECT 
    j.nome AS jogador,
    j.nacionalidade,
    p.nome_posicao AS posicao,
    t.nome AS time_atual
FROM jogadores j
INNER JOIN posicoes p
ON j.id_posicao = p.id_posicao
LEFT JOIN times t
ON j.id_time = t.id_time
ORDER BY t.nome, j.nome;


-- 4. DETALHES DE GOLS
SELECT 
    p.data_partida,
    j.nome AS autor_do_gol,
    t_atual.nome AS time_do_jogador,
    e.minuto,
    g.tipo_gol
FROM gols g
INNER JOIN eventos e
ON g.id_evento = e.id_evento
INNER JOIN partidas p
ON e.id_partida = p.id_partida
INNER JOIN jogadores j
ON e.id_jogador = j.id_jogador
LEFT JOIN times t_atual
ON j.id_time = t_atual.id_time
ORDER BY p.data_partida DESC, e.minuto ASC;

-- 5. HISTÓRICO DE TRANSFERÊNCIAS | MODULO GESTÃO DE ATIVOS
SELECT 
    tr.data_transferencia,
    j.nome AS jogador,
    COALESCE(t_origem.nome, 'Sem Clube / Base') AS time_origem,
    t_destino.nome AS time_destino,
    tr.valor AS valor_transferencia
FROM transferencias tr
INNER JOIN jogadores j
ON tr.id_jogador = j.id_jogador
LEFT JOIN times t_origem
ON tr.id_time_origem = t_origem.id_time
INNER JOIN times t_destino
ON tr.id_time_destino = t_destino.id_time
ORDER BY tr.data_transferencia DESC;

-- 6. RANKING DE ARTILHEIROS | MÓDULO DE SCOUTING
SELECT 
    j.nome AS jogador, 
    t.nome AS time, 
    COUNT(g.id_evento) AS total_gols
FROM gols g
INNER JOIN eventos e ON g.id_evento = e.id_evento
INNER JOIN jogadores j ON e.id_jogador = j.id_jogador
LEFT JOIN times t ON j.id_time = t.id_time
GROUP BY j.id_jogador, j.nome, t.nome
ORDER BY total_gols DESC;

-- 7. BUSCA EVENTOS DE UMA PARTIDA ESPECÍFICA | MODULO ESTRATÉGICO
SELECT 
    e.minuto, 
    e.tipo_evento, 
    j.nome AS jogador_envolvido,
    e.descricao
FROM eventos e
INNER JOIN jogadores j ON e.id_jogador = j.id_jogador
WHERE e.id_partida = 1
ORDER BY e.minuto ASC;

-- 8. FICHA BÁSICA DE JOGADOR
SELECT 
    j.nome AS nome_jogador, 
    p.nome_posicao AS posicao, 
    t.nome AS time_atual
FROM jogadores j
INNER JOIN posicoes p ON j.id_posicao = p.id_posicao
LEFT JOIN times t ON j.id_time = t.id_time
ORDER BY t.nome, j.nome;

-- 9. DETALHES DE CARTÕES EM PARTIDAS ESPECÍFICAS
SELECT 
    e.minuto,
    jog.nome AS jogador_punido,
    c.tipo_cartao
FROM cartoes c
INNER JOIN eventos e ON c.id_evento = e.id_evento
INNER JOIN jogadores jog ON e.id_jogador = jog.id_jogador
WHERE e.id_partida = 1  -- Filtro para uma partida específica
ORDER BY e.minuto ASC;

-- 10. MÉDIA DE PÚBLICO NOS ESTÁDIOS
SELECT 
    e.nome AS nome_estadio,
    e.cidade,
    COUNT(p.id_partida) AS total_jogos_recebidos,
    ROUND(AVG(p.publico), 0) AS media_publico_pagante
FROM partidas p
INNER JOIN estadios e ON p.id_estadio = e.id_estadio
GROUP BY e.id_estadio, e.nome, e.cidade
ORDER BY media_publico_pagante DESC;