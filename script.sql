--Visão de Artilharia do Campeonato--
CREATE VIEW vw_artilharia AS
SELECT 
    j.nome AS Jogador,
    t.nome AS Time,
    COUNT(g.id_evento) AS Gols
FROM jogadores j
INNER JOIN eventos e ON j.id_jogador = e.id_jogador
INNER JOIN gols g ON e.id_evento = g.id_evento
LEFT JOIN times t ON j.id_time = t.id_time
GROUP BY j.id_jogador, j.nome, t.nome
ORDER BY Gols DESC;

--Registrar Nova Transferência--
DELIMITER //
CREATEh PROCEDURE sp_registrar_transferencia(
    IN p_id_jogador INT,
    IN p_id_time_destino INT,
    IN p_valor DECIMAL(15,2),
    IN p_data DATE
)
BEGIN
    DECLARE v_id_time_origem INT;
    SELECT id_time INTO v_id_time_origem FROM jogadores WHERE id_jogador = p_id_jogador;
    INSERT INTO transferencias (id_jogador, id_time_origem, id_time_destino, valor, data_transferencia)
    VALUES (p_id_jogador, v_id_time_origem, p_id_time_destino, p_valor, p_data);
    
    UPDATE jogadores SET id_time = p_id_time_destino WHERE id_jogador = p_id_jogador;
END //
DELIMITER ;

--Atualizar Placar Automaticamente--
DELIMITER //
CREATE TRIGGER trg_atualizar_placar AFTER INSERT ON gols
FOR EACH ROW
BEGIN
    DECLARE v_id_partida INT;
    DECLARE v_id_time_jogador INT;
    DECLARE v_id_time_mandante INT;

    SELECT e.id_partida, j.id_time INTO v_id_partida, v_id_time_jogador
    FROM eventos e
    INNER JOIN jogadores j ON e.id_jogador = j.id_jogador
    WHERE e.id_evento = NEW.id_evento;
    
    SELECT id_time_mandante INTO v_id_time_mandante FROM partidas WHERE id_partida = v_id_partida;
    
    IF v_id_time_jogador = v_id_time_mandante THEN
        UPDATE partidas SET placar_casa = placar_casa + 1 WHERE id_partida = v_id_partida;
    ELSE
        UPDATE partidas SET placar_fora = placar_fora + 1 WHERE id_partida = v_id_partida;
    END IF;
END //
DELIMITER ;
