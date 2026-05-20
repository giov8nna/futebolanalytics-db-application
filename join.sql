SELECT 
    jogadores.nome AS jogador,
    times.nome AS time
FROM jogadores
INNER JOIN times
ON jogadores.id_time = times.id_time;

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